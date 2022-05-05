package com.mikepenz.aboutlibraries;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.p004v7.widget.DefaultItemAnimator;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.p007ui.item.HeaderItem;
import com.mikepenz.aboutlibraries.p007ui.item.LibraryItem;
import com.mikepenz.aboutlibraries.p007ui.item.LoaderItem;
import com.mikepenz.fastadapter.FastAdapter;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsFragmentCompat.class */
public class LibsFragmentCompat {
    private LibsBuilder builder = null;
    private Comparator<Library> comparator;
    private ArrayList<Library> libraries;
    private FastAdapter mAdapter;
    private ItemAdapter mItemAdapter;
    private LibraryTask mLibTask;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mikepenz.aboutlibraries.LibsFragmentCompat$1 */
    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsFragmentCompat$1.class */
    public static /* synthetic */ class C14521 {
        static final /* synthetic */ int[] $SwitchMap$com$mikepenz$aboutlibraries$LibTaskExecutor = new int[LibTaskExecutor.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$mikepenz$aboutlibraries$LibTaskExecutor[LibTaskExecutor.THREAD_POOL_EXECUTOR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$mikepenz$aboutlibraries$LibTaskExecutor[LibTaskExecutor.SERIAL_EXECUTOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$mikepenz$aboutlibraries$LibTaskExecutor[LibTaskExecutor.DEFAULT_EXECUTOR.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsFragmentCompat$LibraryTask.class */
    public class LibraryTask extends AsyncTask<String, String, String> {
        Context ctx;
        Drawable icon = null;
        Integer versionCode;
        String versionName;

        public LibraryTask(Context context) {
            this.ctx = context;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:42:0x0308  */
        /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String doInBackground(java.lang.String... r9) {
            /*
                Method dump skipped, instructions count: 804
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.aboutlibraries.LibsFragmentCompat.LibraryTask.doInBackground(java.lang.String[]):java.lang.String");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(String str) {
            LibsFragmentCompat.this.mItemAdapter.clear();
            if (!(LibsFragmentCompat.this.builder.aboutShowIcon == null || (LibsFragmentCompat.this.builder.aboutShowVersion == null && LibsFragmentCompat.this.builder.aboutShowVersionName == null && !LibsFragmentCompat.this.builder.aboutShowVersionCode.booleanValue()))) {
                LibsFragmentCompat.this.mItemAdapter.add(new Object[]{new HeaderItem().withLibsBuilder(LibsFragmentCompat.this.builder).withAboutVersionName(this.versionName).withAboutVersionCode(this.versionCode).withAboutIcon(this.icon)});
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = LibsFragmentCompat.this.libraries.iterator();
            while (it.hasNext()) {
                arrayList.add(new LibraryItem().withLibrary((Library) it.next()).withLibsBuilder(LibsFragmentCompat.this.builder));
            }
            LibsFragmentCompat.this.mItemAdapter.add((List) arrayList);
            super.onPostExecute((LibraryTask) str);
            if (LibsConfiguration.getInstance().getLibTaskCallback() != null) {
                LibsConfiguration.getInstance().getLibTaskCallback().onLibTaskFinished(LibsFragmentCompat.this.mItemAdapter);
            }
            this.ctx = null;
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            if (LibsConfiguration.getInstance().getLibTaskCallback() != null) {
                LibsConfiguration.getInstance().getLibTaskCallback().onLibTaskStarted();
            }
        }

        public void setCtx(Context context) {
            this.ctx = context;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean extractBooleanBundleOrResource(Context context, Libs libs, Boolean bool, String str) {
        if (bool == null) {
            String stringResourceByName = libs.getStringResourceByName(context, str);
            if (!TextUtils.isEmpty(stringResourceByName)) {
                try {
                    bool = Boolean.valueOf(Boolean.parseBoolean(stringResourceByName));
                } catch (Exception e) {
                }
            }
            bool = null;
        }
        return bool;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String extractStringBundleOrResource(Context context, Libs libs, String str, String str2) {
        if (str == null) {
            str = libs.getStringResourceByName(context, str2);
            if (TextUtils.isEmpty(str)) {
                str = null;
            }
        }
        return str;
    }

    protected void executeLibTask(LibraryTask libraryTask) {
        if (libraryTask != null) {
            switch (C14521.$SwitchMap$com$mikepenz$aboutlibraries$LibTaskExecutor[this.builder.libTaskExecutor.ordinal()]) {
                case 1:
                    libraryTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[0]);
                    return;
                case 2:
                    libraryTask.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new String[0]);
                    return;
                default:
                    libraryTask.execute(new String[0]);
                    return;
            }
        }
    }

    public View onCreateView(Context context, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle, Bundle bundle2) {
        if (bundle2 != null) {
            this.builder = (LibsBuilder) bundle2.getSerializable("data");
        } else {
            Log.e("AboutLibraries", "The AboutLibraries fragment can't be build without the bundle containing the LibsBuilder");
        }
        View inflate = layoutInflater.inflate(C1453R.C1457layout.fragment_opensource, viewGroup, false);
        View view = inflate;
        if (LibsConfiguration.getInstance().getUiListener() != null) {
            view = LibsConfiguration.getInstance().getUiListener().preOnCreateView(inflate);
        }
        RecyclerView recyclerView = view.getId() == C1453R.C1456id.cardListView ? (RecyclerView) view : (RecyclerView) view.findViewById(C1453R.C1456id.cardListView);
        recyclerView.setLayoutManager(new LinearLayoutManager(context));
        if (LibsConfiguration.getInstance().getItemAnimator() != null) {
            recyclerView.setItemAnimator(LibsConfiguration.getInstance().getItemAnimator());
        } else {
            recyclerView.setItemAnimator(new DefaultItemAnimator());
        }
        if (this.builder != null) {
            this.mItemAdapter = new ItemAdapter();
            this.mAdapter = FastAdapter.with(this.mItemAdapter);
            recyclerView.setAdapter(this.mAdapter);
            if (this.builder.showLoadingProgress) {
                this.mItemAdapter.add(new Object[]{new LoaderItem()});
            }
        }
        View view2 = view;
        if (LibsConfiguration.getInstance().getUiListener() != null) {
            view2 = LibsConfiguration.getInstance().getUiListener().postOnCreateView(view);
        }
        return view2;
    }

    public void onDestroyView() {
        if (this.mLibTask != null) {
            this.mLibTask.cancel(true);
            this.mLibTask.setCtx(null);
            this.mLibTask = null;
        }
    }

    public void onViewCreated(View view, Bundle bundle) {
        if (view.getContext() != null && this.builder != null) {
            this.mLibTask = new LibraryTask(view.getContext().getApplicationContext());
            executeLibTask(this.mLibTask);
        }
    }

    public void setLibraryComparator(Comparator<Library> comparator) {
        this.comparator = comparator;
    }
}
