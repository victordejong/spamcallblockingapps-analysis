package com.scand.realmbrowser;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.AsyncTaskLoader;
import androidx.loader.content.Loader;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.scand.realmbrowser.ClassListAdapter;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmObject;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/DbConfigBrowserFragment.class */
public class DbConfigBrowserFragment extends Fragment {

    /* renamed from: f */
    private Spinner f12446f;

    /* renamed from: g */
    private TextView f12447g;

    /* renamed from: h */
    private TextView f12448h;

    /* renamed from: i */
    private TextView f12449i;

    /* renamed from: j */
    private View f12450j;

    /* renamed from: k */
    private RecyclerView f12451k;

    /* renamed from: l */
    private ClassListAdapter f12452l;

    /* renamed from: m */
    private List<RealmConfiguration> f12453m;

    /* renamed from: n */
    List<Class<? extends RealmObject>> f12454n;

    /* renamed from: p */
    private DbConfigInteraction f12456p;

    /* renamed from: o */
    private int f12455o = 0;

    /* renamed from: q */
    private final AdapterView.OnItemSelectedListener f12457q = new AdapterView.OnItemSelectedListener() { // from class: com.scand.realmbrowser.DbConfigBrowserFragment.2
        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            DbConfigBrowserFragment.this.f12455o = i;
            DbConfigBrowserFragment.this.m7807S0();
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    };

    /* renamed from: r */
    private final ClassListAdapter.OnItemClickListener f12458r = new ClassListAdapter.OnItemClickListener() { // from class: com.scand.realmbrowser.DbConfigBrowserFragment.3
        @Override // com.scand.realmbrowser.ClassListAdapter.OnItemClickListener
        /* renamed from: a */
        public void mo7806a(View view, int i) {
            DbConfigBrowserFragment.this.f12456p.mo7801b(DbConfigBrowserFragment.this.f12454n.get(i));
        }
    };

    /* renamed from: s */
    private LoaderManager.LoaderCallbacks<Void> f12459s = new LoaderManager.LoaderCallbacks<Void>() { // from class: com.scand.realmbrowser.DbConfigBrowserFragment.4
        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        /* renamed from: b */
        public Loader<Void> mo7804b(int i, Bundle bundle) {
            return new FillDbLoader(DbConfigBrowserFragment.this.getContext(), bundle);
        }

        @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
        /* renamed from: c */
        public void mo7803c(Loader<Void> loader) {
            DbConfigBrowserFragment.this.m7807S0();
            DbConfigBrowserFragment.this.m7811O0();
        }

        /* renamed from: d */
        public void mo7805a(Loader<Void> loader, Void r4) {
            DbConfigBrowserFragment.this.m7807S0();
            DbConfigBrowserFragment.this.m7811O0();
        }
    };

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/DbConfigBrowserFragment$DbConfigInteraction.class */
    interface DbConfigInteraction {
        /* renamed from: b */
        void mo7801b(Class<? extends RealmObject> cls);
    }

    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/DbConfigBrowserFragment$FillDbLoader.class */
    static class FillDbLoader extends AsyncTaskLoader<Void> {

        /* renamed from: p */
        private int f12464p;

        FillDbLoader(Context context, Bundle bundle) {
            super(context);
            this.f12464p = bundle.getInt("config_position");
            Log.d("TAG", "loader: config position " + this.f12464p);
        }

        /* renamed from: I */
        static Bundle m7799I(int i) {
            Bundle bundle = new Bundle();
            bundle.putInt("config_position", i);
            return bundle;
        }

        /* renamed from: J */
        public Void mo7800F() {
            RealmConfiguration realmConfiguration = RealmBrowser.m7730f().m7732d().get(this.f12464p);
            Realm I0 = Realm.m3062I0(realmConfiguration);
            List<Class<? extends RealmObject>> e = RealmBrowser.m7730f().m7731e(realmConfiguration);
            for (Class<? extends RealmObject> cls : e) {
                RealmUtils.m7717b(I0, cls);
            }
            for (Class<? extends RealmObject> cls2 : e) {
                if (I0.m3053Q0(cls2).m2918E().size() < 50) {
                    RealmUtils.m7714e(I0, cls2, 50);
                }
            }
            I0.close();
            return null;
        }
    }

    /* renamed from: N0 */
    private void m7812N0(View view) {
        this.f12450j = view.findViewById(C1506R.C1509id.fill_btn);
        this.f12451k = (RecyclerView) view.findViewById(C1506R.C1509id.class_list);
        this.f12446f = (Spinner) view.findViewById(C1506R.C1509id.file_name_spinner);
        this.f12447g = (TextView) view.findViewById(C1506R.C1509id.file_name);
        this.f12448h = (TextView) view.findViewById(C1506R.C1509id.file_size);
        this.f12449i = (TextView) view.findViewById(C1506R.C1509id.file_path);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O0 */
    public void m7811O0() {
        ProgressDialogFragment progressDialogFragment = (ProgressDialogFragment) getChildFragmentManager().findFragmentByTag(ProgressDialogFragment.f12523f);
        if (progressDialogFragment != null) {
            progressDialogFragment.dismiss();
        }
    }

    /* renamed from: P0 */
    private void m7810P0() {
        ArrayList arrayList = new ArrayList(this.f12453m.size());
        for (RealmConfiguration realmConfiguration : this.f12453m) {
            arrayList.add(new File(realmConfiguration.m2987l()).getName());
        }
        if (arrayList.size() > 1) {
            this.f12446f.setVisibility(0);
            this.f12447g.setVisibility(8);
            this.f12446f.setAdapter((SpinnerAdapter) new ArrayAdapter(getContext(), C1506R.layout.realm_browser_class_list_file_spinner, arrayList));
            this.f12446f.setOnItemSelectedListener(this.f12457q);
            this.f12446f.setSelection(this.f12455o);
        } else if (arrayList.size() > 0) {
            this.f12446f.setVisibility(8);
            this.f12447g.setVisibility(0);
            this.f12447g.setText((CharSequence) arrayList.get(0));
            this.f12455o = 0;
            m7807S0();
        }
        this.f12451k.setLayoutManager(new LinearLayoutManager(getContext()));
    }

    /* renamed from: Q0 */
    private void m7809Q0() {
        this.f12450j.setOnClickListener(new View.OnClickListener() { // from class: com.scand.realmbrowser.DbConfigBrowserFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DbConfigBrowserFragment.this.getLoaderManager().mo18130e(1, FillDbLoader.m7799I(DbConfigBrowserFragment.this.f12455o), DbConfigBrowserFragment.this.f12459s).m18090h();
                DbConfigBrowserFragment.this.m7808R0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R0 */
    public void m7808R0() {
        new ProgressDialogFragment().show(getChildFragmentManager(), ProgressDialogFragment.f12523f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S0 */
    public void m7807S0() {
        RealmConfiguration realmConfiguration = this.f12453m.get(this.f12455o);
        File file = new File(realmConfiguration.m2987l());
        this.f12449i.setText(file.getParent());
        TextView textView = this.f12448h;
        textView.setText(Long.toString(file.length() / 1024) + " Kb");
        List<Class<? extends RealmObject>> e = RealmBrowser.m7730f().m7731e(realmConfiguration);
        this.f12454n = e;
        ClassListAdapter classListAdapter = this.f12452l;
        if (classListAdapter == null) {
            ClassListAdapter classListAdapter2 = new ClassListAdapter(e, this.f12458r);
            this.f12452l = classListAdapter2;
            this.f12451k.setAdapter(classListAdapter2);
            return;
        }
        classListAdapter.m7835e(e);
        this.f12452l.notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (bundle != null) {
            this.f12455o = bundle.getInt("selected file position");
        }
        this.f12453m = RealmBrowser.m7730f().m7732d();
        m7810P0();
        getLoaderManager().mo18132c(1, FillDbLoader.m7799I(this.f12455o), this.f12459s);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        String str;
        super.onAttach(context);
        try {
            this.f12456p = (DbConfigInteraction) context;
        } catch (ClassCastException e) {
            if (("Context " + context) == null) {
                str = "null";
            } else {
                str = context.toString() + "should implement " + DbConfigInteraction.class.getSimpleName() + " interface!";
            }
            throw new IllegalArgumentException(str);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(C1506R.layout.realm_browser_fragment_db_config, viewGroup);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("selected file position", this.f12455o);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        m7812N0(view);
        m7809Q0();
    }
}
