package androidx.loader.app;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SparseArrayCompat;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.loader.app.LoaderManager;
import androidx.loader.content.Loader;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/loader/app/LoaderManagerImpl.class */
public class LoaderManagerImpl extends LoaderManager {

    /* renamed from: c */
    static boolean f4116c = false;
    @NonNull

    /* renamed from: a */
    private final LifecycleOwner f4117a;
    @NonNull

    /* renamed from: b */
    private final LoaderViewModel f4118b;

    /* loaded from: classes-dex2jar.jar:androidx/loader/app/LoaderManagerImpl$LoaderInfo.class */
    public static class LoaderInfo<D> extends MutableLiveData<D> implements Loader.OnLoadCompleteListener<D> {

        /* renamed from: k */
        private final int f4119k;
        @Nullable

        /* renamed from: l */
        private final Bundle f4120l;
        @NonNull

        /* renamed from: m */
        private final Loader<D> f4121m;

        /* renamed from: n */
        private LifecycleOwner f4122n;

        /* renamed from: o */
        private LoaderObserver<D> f4123o;

        /* renamed from: p */
        private Loader<D> f4124p;

        LoaderInfo(int i, @Nullable Bundle bundle, @NonNull Loader<D> loader, @Nullable Loader<D> loader2) {
            this.f4119k = i;
            this.f4120l = bundle;
            this.f4121m = loader;
            this.f4124p = loader2;
            loader.m18078t(i, this);
        }

        @Override // androidx.loader.content.Loader.OnLoadCompleteListener
        /* renamed from: a */
        public void mo18070a(@NonNull Loader<D> loader, @Nullable D d) {
            if (LoaderManagerImpl.f4116c) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                mo18127o(d);
                return;
            }
            if (LoaderManagerImpl.f4116c) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            mo18188l(d);
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: j */
        protected void mo6383j() {
            if (LoaderManagerImpl.f4116c) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f4121m.m18075w();
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: k */
        protected void mo6382k() {
            if (LoaderManagerImpl.f4116c) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f4121m.m18074x();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: m */
        public void mo18128m(@NonNull Observer<? super D> observer) {
            super.mo18128m(observer);
            this.f4122n = null;
            this.f4123o = null;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        /* renamed from: o */
        public void mo18127o(D d) {
            super.mo18127o(d);
            Loader<D> loader = this.f4124p;
            if (loader != null) {
                loader.m18077u();
                this.f4124p = null;
            }
        }

        @MainThread
        /* renamed from: p */
        Loader<D> m18126p(boolean z) {
            if (LoaderManagerImpl.f4116c) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f4121m.m18096b();
            this.f4121m.m18097a();
            LoaderObserver<D> loaderObserver = this.f4123o;
            if (loaderObserver != null) {
                mo18128m(loaderObserver);
                if (z) {
                    loaderObserver.m18119d();
                }
            }
            this.f4121m.m18072z(this);
            if ((loaderObserver == null || loaderObserver.m18120c()) && !z) {
                return this.f4121m;
            }
            this.f4121m.m18077u();
            return this.f4124p;
        }

        /* renamed from: q */
        public void m18125q(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f4119k);
            printWriter.print(" mArgs=");
            printWriter.println(this.f4120l);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f4121m);
            Loader<D> loader = this.f4121m;
            loader.mo18091g(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f4123o != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f4123o);
                LoaderObserver<D> loaderObserver = this.f4123o;
                loaderObserver.m18121b(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(m18124r().m18094d(m18202e()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(m18200g());
        }

        @NonNull
        /* renamed from: r */
        Loader<D> m18124r() {
            return this.f4121m;
        }

        /* renamed from: s */
        void m18123s() {
            LifecycleOwner lifecycleOwner = this.f4122n;
            LoaderObserver<D> loaderObserver = this.f4123o;
            if (lifecycleOwner != null && loaderObserver != null) {
                super.mo18128m(loaderObserver);
                m18199h(lifecycleOwner, loaderObserver);
            }
        }

        @NonNull
        @MainThread
        /* renamed from: t */
        Loader<D> m18122t(@NonNull LifecycleOwner lifecycleOwner, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            LoaderObserver<D> loaderObserver = new LoaderObserver<>(this.f4121m, loaderCallbacks);
            m18199h(lifecycleOwner, loaderObserver);
            LoaderObserver<D> loaderObserver2 = this.f4123o;
            if (loaderObserver2 != null) {
                mo18128m(loaderObserver2);
            }
            this.f4122n = lifecycleOwner;
            this.f4123o = loaderObserver;
            return this.f4121m;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f4119k);
            sb.append(" : ");
            DebugUtils.m19348a(this.f4121m, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/loader/app/LoaderManagerImpl$LoaderObserver.class */
    public static class LoaderObserver<D> implements Observer<D> {
        @NonNull

        /* renamed from: a */
        private final Loader<D> f4125a;
        @NonNull

        /* renamed from: b */
        private final LoaderManager.LoaderCallbacks<D> f4126b;

        /* renamed from: c */
        private boolean f4127c = false;

        LoaderObserver(@NonNull Loader<D> loader, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
            this.f4125a = loader;
            this.f4126b = loaderCallbacks;
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void mo6485a(@Nullable D d) {
            if (LoaderManagerImpl.f4116c) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f4125a + ": " + this.f4125a.m18094d(d));
            }
            this.f4126b.mo7805a(this.f4125a, d);
            this.f4127c = true;
        }

        /* renamed from: b */
        public void m18121b(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f4127c);
        }

        /* renamed from: c */
        boolean m18120c() {
            return this.f4127c;
        }

        @MainThread
        /* renamed from: d */
        void m18119d() {
            if (this.f4127c) {
                if (LoaderManagerImpl.f4116c) {
                    Log.v("LoaderManager", "  Resetting: " + this.f4125a);
                }
                this.f4126b.mo7803c(this.f4125a);
            }
        }

        public String toString() {
            return this.f4126b.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/loader/app/LoaderManagerImpl$LoaderViewModel.class */
    public static class LoaderViewModel extends ViewModel {

        /* renamed from: e */
        private static final ViewModelProvider.Factory f4128e = new ViewModelProvider.Factory() { // from class: androidx.loader.app.LoaderManagerImpl.LoaderViewModel.1
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            @NonNull
            /* renamed from: a */
            public <T extends ViewModel> T mo18109a(@NonNull Class<T> cls) {
                return new LoaderViewModel();
            }
        };

        /* renamed from: c */
        private SparseArrayCompat<LoaderInfo> f4129c = new SparseArrayCompat<>();

        /* renamed from: d */
        private boolean f4130d = false;

        LoaderViewModel() {
        }

        @NonNull
        /* renamed from: h */
        static LoaderViewModel m18115h(ViewModelStore viewModelStore) {
            return (LoaderViewModel) new ViewModelProvider(viewModelStore, f4128e).m18145a(LoaderViewModel.class);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.lifecycle.ViewModel
        /* renamed from: d */
        public void mo18118d() {
            super.mo18118d();
            int o = this.f4129c.m20993o();
            for (int i = 0; i < o; i++) {
                this.f4129c.m20992p(i).m18126p(true);
            }
            this.f4129c.m21003b();
        }

        /* renamed from: f */
        public void m18117f(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f4129c.m20993o() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.f4129c.m20993o(); i++) {
                    LoaderInfo p = this.f4129c.m20992p(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f4129c.m20996l(i));
                    printWriter.print(": ");
                    printWriter.println(p.toString());
                    p.m18125q(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        /* renamed from: g */
        void m18116g() {
            this.f4130d = false;
        }

        /* renamed from: i */
        <D> LoaderInfo<D> m18114i(int i) {
            return this.f4129c.m21000f(i);
        }

        /* renamed from: j */
        boolean m18113j() {
            return this.f4130d;
        }

        /* renamed from: k */
        void m18112k() {
            int o = this.f4129c.m20993o();
            for (int i = 0; i < o; i++) {
                this.f4129c.m20992p(i).m18123s();
            }
        }

        /* renamed from: l */
        void m18111l(int i, @NonNull LoaderInfo loaderInfo) {
            this.f4129c.m20995m(i, loaderInfo);
        }

        /* renamed from: m */
        void m18110m() {
            this.f4130d = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoaderManagerImpl(@NonNull LifecycleOwner lifecycleOwner, @NonNull ViewModelStore viewModelStore) {
        this.f4117a = lifecycleOwner;
        this.f4118b = LoaderViewModel.m18115h(viewModelStore);
    }

    /* JADX WARN: Finally extract failed */
    @NonNull
    @MainThread
    /* renamed from: f */
    private <D> Loader<D> m18129f(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks, @Nullable Loader<D> loader) {
        try {
            this.f4118b.m18110m();
            Loader<D> b = loaderCallbacks.mo7804b(i, bundle);
            if (b != null) {
                if (b.getClass().isMemberClass() && !Modifier.isStatic(b.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + b);
                }
                LoaderInfo loaderInfo = new LoaderInfo(i, bundle, b, loader);
                if (f4116c) {
                    Log.v("LoaderManager", "  Created new loader " + loaderInfo);
                }
                this.f4118b.m18111l(i, loaderInfo);
                this.f4118b.m18116g();
                return loaderInfo.m18122t(this.f4117a, loaderCallbacks);
            }
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
        } catch (Throwable th) {
            this.f4118b.m18116g();
            throw th;
        }
    }

    @Override // androidx.loader.app.LoaderManager
    @Deprecated
    /* renamed from: a */
    public void mo18133a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f4118b.m18117f(str, fileDescriptor, printWriter, strArr);
    }

    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    /* renamed from: c */
    public <D> Loader<D> mo18132c(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.f4118b.m18113j()) {
            throw new IllegalStateException("Called while creating a loader");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            LoaderInfo<D> i2 = this.f4118b.m18114i(i);
            if (f4116c) {
                Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
            }
            if (i2 == null) {
                return m18129f(i, bundle, loaderCallbacks, null);
            }
            if (f4116c) {
                Log.v("LoaderManager", "  Re-using existing loader " + i2);
            }
            return i2.m18122t(this.f4117a, loaderCallbacks);
        } else {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
    }

    @Override // androidx.loader.app.LoaderManager
    /* renamed from: d */
    public void mo18131d() {
        this.f4118b.m18112k();
    }

    @Override // androidx.loader.app.LoaderManager
    @NonNull
    @MainThread
    /* renamed from: e */
    public <D> Loader<D> mo18130e(int i, @Nullable Bundle bundle, @NonNull LoaderManager.LoaderCallbacks<D> loaderCallbacks) {
        if (this.f4118b.m18113j()) {
            throw new IllegalStateException("Called while creating a loader");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            if (f4116c) {
                Log.v("LoaderManager", "restartLoader in " + this + ": args=" + bundle);
            }
            LoaderInfo<D> i2 = this.f4118b.m18114i(i);
            Loader<D> loader = null;
            if (i2 != null) {
                loader = i2.m18126p(false);
            }
            return m18129f(i, bundle, loaderCallbacks, loader);
        } else {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        DebugUtils.m19348a(this.f4117a, sb);
        sb.append("}}");
        return sb.toString();
    }
}
