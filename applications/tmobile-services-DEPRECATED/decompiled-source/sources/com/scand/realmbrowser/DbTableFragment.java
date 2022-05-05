package com.scand.realmbrowser;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.MenuItemCompat;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.scand.realmbrowser.ColumnWidthMediator;
import com.scand.realmbrowser.DatabaseClassAdapter;
import com.scand.realmbrowser.EditDialogFragment;
import com.scand.realmbrowser.FieldFilterDialogFragment;
import com.scand.realmbrowser.breadcrumbs.BreadCrumbsView;
import com.scand.realmbrowser.breadcrumbs.IOnBreadCrumbListener;
import com.scand.realmbrowser.breadcrumbs.StateHolder;
import com.scand.realmbrowser.view.DragOverlayView;
import com.scand.realmbrowser.view.RowView;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmList;
import io.realm.RealmObject;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.annotations.Ignore;
import io.realm.annotations.Index;
import io.realm.annotations.PrimaryKey;
import java.io.File;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/DbTableFragment.class */
public class DbTableFragment extends Fragment implements DatabaseClassAdapter.OnCellClickListener, EditDialogFragment.OnFieldEditDialogInteraction, FieldFilterDialogFragment.FieldFilterDialogInteraction, IOnBreadCrumbListener, ColumnWidthMediator.ColumnWidthProvider {

    /* renamed from: w */
    private static final String f12465w = DbTableFragment.class.getSimpleName();

    /* renamed from: f */
    private BreadCrumbsView f12466f;

    /* renamed from: g */
    private RecyclerView f12467g;

    /* renamed from: h */
    private DatabaseClassAdapter f12468h;

    /* renamed from: i */
    private RowView f12469i;

    /* renamed from: j */
    private RowView f12470j;

    /* renamed from: k */
    private View f12471k;

    /* renamed from: l */
    private DragOverlayView f12472l;

    /* renamed from: m */
    private MenuItem f12473m;

    /* renamed from: n */
    private ActionBar f12474n;

    /* renamed from: o */
    private Class<? extends RealmObject> f12475o;

    /* renamed from: q */
    private HorizontalScrollMediator f12477q;

    /* renamed from: r */
    private ColumnWidthMediator f12478r;

    /* renamed from: s */
    private DbTableInteraction f12479s;

    /* renamed from: t */
    private List<RealmObject> f12480t;

    /* renamed from: p */
    private SpanHolder f12476p = new SpanHolder();

    /* renamed from: u */
    private MenuItemCompat.OnActionExpandListener f12481u = new MenuItemCompat.OnActionExpandListener() { // from class: com.scand.realmbrowser.DbTableFragment.1
        @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            Log.d(DbTableFragment.f12465w, "onMenuItemActionCollapse() call");
            DbTableFragment.this.m7782V0(false);
            DbTableFragment.this.f12468h.m7823l(DbTableFragment.this.f12480t);
            return true;
        }

        @Override // androidx.core.view.MenuItemCompat.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return true;
        }
    };

    /* renamed from: v */
    private SearchView.OnQueryTextListener f12482v = new SearchView.OnQueryTextListener() { // from class: com.scand.realmbrowser.DbTableFragment.2
        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            String str2 = DbTableFragment.f12465w;
            Log.d(str2, "onQueryTextChange: " + str);
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            DbTableFragment.this.m7785S0(str);
            return false;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            String str2 = DbTableFragment.f12465w;
            Log.d(str2, "onQueryTextSubmit: " + str);
            return false;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/DbTableFragment$DbTableInteraction.class */
    public interface DbTableInteraction {
        /* renamed from: a */
        void mo7776a(List<StateHolder> list);

        /* renamed from: d */
        List<StateHolder> mo7775d();

        /* renamed from: f */
        Realm mo7774f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/DbTableFragment$SpanHolder.class */
    public class SpanHolder {

        /* renamed from: a */
        private TextAppearanceSpan f12485a;

        /* renamed from: b */
        private TextAppearanceSpan f12486b;

        private SpanHolder(DbTableFragment dbTableFragment) {
        }

        /* renamed from: a */
        public TextAppearanceSpan m7773a(Context context) {
            if (this.f12485a == null) {
                this.f12485a = new TextAppearanceSpan(context, C1506R.style.realm_browser_database_column_title_annotation_style);
            }
            return this.f12485a;
        }

        /* renamed from: b */
        public TextAppearanceSpan m7772b(Context context) {
            if (this.f12486b == null) {
                this.f12486b = new TextAppearanceSpan(context, C1506R.style.realm_browser_database_column_title_style);
            }
            return this.f12486b;
        }
    }

    /* renamed from: L0 */
    private void m7792L0(SpannableStringBuilder spannableStringBuilder, Annotation annotation) {
        int length = spannableStringBuilder.length();
        spannableStringBuilder.append("@");
        spannableStringBuilder.append((CharSequence) annotation.annotationType().getSimpleName());
        spannableStringBuilder.setSpan(this.f12476p.m7773a(getContext()), length, spannableStringBuilder.length(), 33);
        spannableStringBuilder.append((CharSequence) System.getProperty("line.separator"));
    }

    /* renamed from: M0 */
    private void m7791M0(Field field, SpannableStringBuilder spannableStringBuilder) {
        ArrayList<Class<? extends Annotation>> arrayList = new ArrayList(3);
        arrayList.add(PrimaryKey.class);
        arrayList.add(Ignore.class);
        arrayList.add(Index.class);
        for (Class<? extends Annotation> cls : arrayList) {
            if (field.isAnnotationPresent(cls)) {
                m7792L0(spannableStringBuilder, field.getAnnotation(cls));
            }
        }
    }

    /* renamed from: N0 */
    private void m7790N0(RealmObject realmObject, Field field) {
        if (RealmUtils.m7705n(field)) {
            this.f12475o = (Class) ((ParameterizedType) field.getGenericType()).getActualTypeArguments()[0];
            this.f12480t = RealmUtils.m7708k(realmObject, field);
        } else if (RealmUtils.m7704o(field)) {
            this.f12475o = field.getType();
            ArrayList arrayList = new ArrayList(1);
            this.f12480t = arrayList;
            arrayList.add(RealmUtils.m7706m(realmObject, field));
        } else {
            throw new IllegalArgumentException("Unsupported field type: " + field);
        }
        m7779Y0(this.f12480t);
    }

    /* renamed from: O0 */
    private void m7789O0(Class<? extends RealmObject> cls, boolean z) {
        this.f12475o = cls;
        if (z) {
            this.f12466f.m7697f();
        }
        RealmResults E = this.f12479s.mo7774f().m3053Q0(this.f12475o).m2918E();
        this.f12480t = E;
        m7779Y0(E);
    }

    /* renamed from: P0 */
    private void m7788P0(View view) {
        this.f12469i = (RowView) view.findViewById(C1506R.C1509id.table_header);
        this.f12470j = (RowView) view.findViewById(C1506R.C1509id.table_header_type);
        this.f12467g = (RecyclerView) view.findViewById(C1506R.C1509id.databaseList);
        this.f12471k = view.findViewById(C1506R.C1509id.invalid_request_hint_group);
        this.f12466f = (BreadCrumbsView) view.findViewById(C1506R.C1509id.crumbs_list);
        this.f12472l = (DragOverlayView) view.findViewById(C1506R.C1509id.drag_view);
    }

    /* renamed from: Q0 */
    private void m7787Q0() {
        this.f12467g.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f12466f.setOnCrumbClickListener(this);
        ColumnWidthMediator columnWidthMediator = new ColumnWidthMediator(this.f12472l, this);
        this.f12478r = columnWidthMediator;
        columnWidthMediator.m7834c(this.f12469i);
        this.f12478r.m7834c(this.f12470j);
        this.f12469i.setOnColumnWidthChangeListener(this.f12478r);
        this.f12470j.setOnColumnWidthChangeListener(this.f12478r);
        HorizontalScrollMediator horizontalScrollMediator = new HorizontalScrollMediator();
        this.f12477q = horizontalScrollMediator;
        horizontalScrollMediator.m7738b(this.f12469i);
        this.f12477q.m7738b(this.f12470j);
    }

    /* renamed from: R0 */
    private void m7786R0(Class<? extends RealmObject> cls) {
        ArrayList arrayList = new ArrayList();
        FieldFilterPreferences b = FieldFilterPreferences.m7741b(getContext());
        for (Field field : RealmUtils.m7711h(cls)) {
            if (b.m7740c(cls, field)) {
                arrayList.add(field);
            }
        }
        this.f12469i.setColumnsNumber(arrayList.size());
        this.f12469i.setCellsGravity(80);
        this.f12469i.m7680g(true);
        this.f12470j.setColumnsNumber(arrayList.size());
        this.f12470j.setTextAppearance(C1506R.style.realm_browser_database_column_title_type_style);
        this.f12470j.m7680g(true);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Field field2 = (Field) arrayList.get(i);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            m7791M0(field2, spannableStringBuilder);
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) field2.getName());
            spannableStringBuilder.setSpan(this.f12476p.m7772b(getContext()), length, spannableStringBuilder.length(), 33);
            this.f12469i.setColumnText(spannableStringBuilder.subSequence(0, spannableStringBuilder.length()), i);
            this.f12470j.setColumnText(field2.getType().getSimpleName(), i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S0 */
    public void m7785S0(@NonNull String str) {
        RealmQuery realmQuery;
        int indexOf = str.indexOf(58);
        if (indexOf != -1) {
            String trim = str.substring(0, indexOf).trim();
            boolean z = true;
            String trim2 = str.length() - 1 > indexOf ? str.substring(indexOf + 1, str.length()).trim() : "";
            String str2 = f12465w;
            Log.d(str2, "fieldName: " + trim + "; value: " + trim2);
            try {
                Field declaredField = this.f12475o.getDeclaredField(trim);
                if (this.f12480t instanceof RealmResults) {
                    realmQuery = ((RealmResults) this.f12480t).m2867E();
                } else if (this.f12480t instanceof RealmList) {
                    realmQuery = ((RealmList) this.f12480t).m2964B();
                } else {
                    m7784T0(str);
                    return;
                }
                Class<?> type = declaredField.getType();
                if (type == String.class) {
                    realmQuery.m2898d(trim, trim2);
                } else {
                    if (!(type == Boolean.class || type == Boolean.TYPE)) {
                        if (!(type == Short.class || type == Short.TYPE)) {
                            if (!(type == Integer.class || type == Integer.TYPE)) {
                                if (!(type == Long.class || type == Long.TYPE)) {
                                    if (!(type == Float.class || type == Float.TYPE)) {
                                        if (!(type == Double.class || type == Double.TYPE)) {
                                            if (type == Date.class) {
                                                m7784T0(str);
                                                return;
                                            } else if (type == Byte[].class || type == byte[].class) {
                                                m7784T0(str);
                                                return;
                                            } else if (RealmObject.class.isAssignableFrom(type)) {
                                                m7784T0(str);
                                                return;
                                            } else if (RealmList.class.isAssignableFrom(type)) {
                                                m7784T0(str);
                                                return;
                                            } else {
                                                Context context = getContext();
                                                Toast.makeText(context, "Invalid value type:" + type, 0).show();
                                                m7784T0(str);
                                                return;
                                            }
                                        }
                                        try {
                                            realmQuery.m2887o(trim, Double.valueOf(trim2));
                                        } catch (NumberFormatException e) {
                                            m7784T0(str);
                                            return;
                                        }
                                    }
                                    try {
                                        realmQuery.m2886p(trim, Float.valueOf(trim2));
                                    } catch (NumberFormatException e2) {
                                        m7784T0(str);
                                        return;
                                    }
                                }
                                try {
                                    realmQuery.m2884r(trim, Long.valueOf(trim2));
                                } catch (NumberFormatException e3) {
                                    m7784T0(str);
                                    return;
                                }
                            }
                            try {
                                realmQuery.m2885q(trim, Integer.valueOf(trim2));
                            } catch (NumberFormatException e4) {
                                m7784T0(str);
                                return;
                            }
                        }
                        try {
                            realmQuery.m2883s(trim, Short.valueOf(trim2));
                        } catch (NumberFormatException e5) {
                            m7784T0(str);
                            return;
                        }
                    }
                    if (!"true".equalsIgnoreCase(trim2)) {
                        if ("false".equalsIgnoreCase(trim2)) {
                            z = false;
                        } else {
                            m7784T0(str);
                            return;
                        }
                    }
                    realmQuery.m2888n(trim, Boolean.valueOf(z));
                }
                RealmResults E = realmQuery.m2918E();
                m7782V0(false);
                this.f12468h.m7823l(E);
            } catch (NoSuchFieldException e6) {
                m7784T0(str);
            }
        } else {
            m7784T0(str);
        }
    }

    /* renamed from: T0 */
    private void m7784T0(@NonNull String str) {
        String str2 = f12465w;
        Log.d(str2, "processInvalidQuery: " + str);
        m7782V0(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V0 */
    public void m7782V0(boolean z) {
        int i = 8;
        this.f12467g.setVisibility(z ? 8 : 0);
        View view = this.f12471k;
        if (z) {
            i = 0;
        }
        view.setVisibility(i);
    }

    /* renamed from: W0 */
    private void m7781W0(Class<? extends RealmObject> cls) {
        new AlertDialog.Builder(getContext()).setMessage(String.format(getResources().getString(C1506R.string.realm_browser_realm_class_notification), cls.getSimpleName())).setPositiveButton(C1506R.string.realm_browser_ok, (DialogInterface.OnClickListener) null).show();
    }

    /* renamed from: X0 */
    private void m7780X0(Class<? extends RealmObject> cls, RealmConfiguration realmConfiguration) {
        new AlertDialog.Builder(getContext()).setMessage(String.format(getResources().getString(C1506R.string.realm_browser_realm_file_notification), cls.getSimpleName(), new File(realmConfiguration.m2987l()).getName())).setPositiveButton(C1506R.string.realm_browser_ok, (DialogInterface.OnClickListener) null).show();
    }

    /* renamed from: Y0 */
    private void m7779Y0(List<? extends RealmObject> list) {
        m7786R0(this.f12475o);
        list = list;
        if (this.f12468h == null) {
            if (list == null) {
                list = this.f12479s.mo7774f().m3053Q0(this.f12475o).m2918E();
                this.f12468h = new DatabaseClassAdapter(getContext(), this.f12475o, list);
            } else {
                this.f12468h = new DatabaseClassAdapter(getContext(), this.f12475o, list);
            }
            this.f12468h.m7824k(this.f12477q);
            this.f12468h.m7825j(this.f12478r);
            this.f12468h.m7826i(this);
            this.f12467g.setAdapter(this.f12468h);
            this.f12467g.getRecycledViewPool().m17349k(0, 40);
        }
        if (list != null) {
            this.f12468h.m7821n(getContext(), this.f12475o, list);
        } else {
            this.f12468h.m7822m(getContext(), this.f12475o);
        }
        ActionBar actionBar = this.f12474n;
        if (actionBar != null) {
            actionBar.mo22115A(String.format("%s (%d)", this.f12475o.getSimpleName(), Integer.valueOf(this.f12468h.getItemCount())));
        }
    }

    /* renamed from: U0 */
    public void m7783U0(Class<? extends RealmObject> cls) {
        m7789O0(cls, true);
        this.f12466f.m7699d(new StateHolder(cls.getCanonicalName(), null, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.scand.realmbrowser.DatabaseClassAdapter.OnCellClickListener
    /* renamed from: d */
    public void mo7778d(RealmObject realmObject, Field field, int i) {
        Class<?> type = RealmUtils.m7704o(field) ? field.getType() : RealmUtils.m7705n(field) ? (Class) ((ParameterizedType) field.getGenericType()).getActualTypeArguments()[0] : null;
        if (!RealmUtils.m7704o(field) || RealmUtils.m7706m(realmObject, field) != null) {
            MenuItemCompat.m19290a(this.f12473m);
            RealmConfiguration g = RealmBrowser.m7730f().m7729g(type);
            RealmConfiguration g2 = RealmBrowser.m7730f().m7729g(realmObject.getClass().getSuperclass());
            if (type == null || (g != null && g.m2987l().equals(g2.m2987l()))) {
                if (RealmUtils.m7705n(field) || RealmUtils.m7704o(field)) {
                    m7790N0(realmObject, field);
                    this.f12466f.m7699d(new StateHolder(this.f12475o.getCanonicalName(), realmObject, field));
                    return;
                }
                EditDialogFragment.m7759S0(realmObject, field, i).show(getChildFragmentManager(), EditDialogFragment.class.getSimpleName());
            } else if (g == null) {
                m7781W0(type);
            } else {
                m7780X0(type, g);
            }
        }
    }

    @Override // com.scand.realmbrowser.ColumnWidthMediator.ColumnWidthProvider
    /* renamed from: d0 */
    public int mo7777d0(int i) {
        return this.f12469i.m7683d(i);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f12474n = ((AppCompatActivity) getActivity()).getSupportActionBar();
        List<StateHolder> d = this.f12479s.mo7775d();
        if (d != null) {
            this.f12466f.setCrumbStates(d);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        String str;
        super.onAttach(context);
        try {
            this.f12479s = (DbTableInteraction) context;
        } catch (ClassCastException e) {
            if (("Context " + context) == null) {
                str = "null";
            } else {
                str = context.toString() + "should implement " + DbTableInteraction.class.getSimpleName() + " interface!";
            }
            throw new IllegalArgumentException(str);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setHasOptionsMenu(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(C1506R.C1510menu.realm_browser_database_class_menu, menu);
        MenuItem findItem = menu.findItem(C1506R.C1509id.database_search);
        this.f12473m = findItem;
        SearchView searchView = (SearchView) findItem.getActionView();
        searchView.setOnQueryTextListener(this.f12482v);
        searchView.setQueryHint(getString(C1506R.string.realm_browser_search_hint_short));
        View findViewById = searchView.findViewById(C1506R.C1509id.search_close_btn);
        if (findViewById != null) {
            findViewById.setEnabled(false);
            findViewById.setAlpha(0.0f);
        }
        MenuItemCompat.m19283h(this.f12473m, this.f12481u);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C1506R.layout.realm_browser_fragment_db_table, viewGroup);
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == C1506R.C1509id.field_filter) {
            FieldFilterDialogFragment.m7745N0(this.f12475o).show(getChildFragmentManager(), FieldFilterDialogFragment.class.getSimpleName());
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.f12479s.mo7776a(this.f12466f.getCrumbStates());
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        m7788P0(view);
        m7787Q0();
    }

    @Override // com.scand.realmbrowser.FieldFilterDialogFragment.FieldFilterDialogInteraction
    /* renamed from: r0 */
    public void mo7743r0() {
        m7786R0(this.f12475o);
        this.f12468h.m7822m(getContext(), this.f12475o);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.scand.realmbrowser.breadcrumbs.IOnBreadCrumbListener
    /* renamed from: u */
    public void mo7692u(StateHolder stateHolder) {
        if (stateHolder.m7689c() != null && stateHolder.m7690b() != null) {
            m7790N0(stateHolder.m7689c(), stateHolder.m7690b());
        } else if (stateHolder.m7691a() != null) {
            try {
                m7789O0(Class.forName(stateHolder.m7691a()), false);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.scand.realmbrowser.EditDialogFragment.OnFieldEditDialogInteraction
    /* renamed from: z */
    public void mo7753z(int i) {
        RecyclerView.Adapter adapter = this.f12467g.getAdapter();
        if (adapter != null) {
            adapter.notifyItemChanged(i);
        }
    }
}
