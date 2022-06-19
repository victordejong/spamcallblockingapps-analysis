package androidx.p037g.p038a;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.core.p025g.C0519a;
import androidx.lifecycle.AbstractC0869h;
import androidx.lifecycle.AbstractC0878o;
import androidx.lifecycle.AbstractC0884s;
import androidx.lifecycle.C0877n;
import androidx.lifecycle.C0885t;
import androidx.lifecycle.C0888u;
import androidx.p013b.C0387h;
import androidx.p037g.p038a.AbstractC0714a;
import androidx.p037g.p039b.C0723b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
/* renamed from: androidx.g.a.b */
/* loaded from: classes-dex2jar.jar:androidx/g/a/b.class */
public class C0716b extends AbstractC0714a {

    /* renamed from: a */
    static boolean f2562a = false;

    /* renamed from: b */
    private final AbstractC0869h f2563b;

    /* renamed from: c */
    private final C0719c f2564c;

    /* renamed from: androidx.g.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/g/a/b$a.class */
    public static class C0717a<D> extends C0877n<D> implements C0723b.AbstractC0725b<D> {

        /* renamed from: e */
        private final int f2565e;

        /* renamed from: f */
        private final Bundle f2566f;

        /* renamed from: g */
        private final C0723b<D> f2567g;

        /* renamed from: h */
        private AbstractC0869h f2568h;

        /* renamed from: i */
        private C0718b<D> f2569i;

        /* renamed from: j */
        private C0723b<D> f2570j;

        C0717a(int i, Bundle bundle, C0723b<D> c0723b, C0723b<D> c0723b2) {
            this.f2565e = i;
            this.f2566f = bundle;
            this.f2567g = c0723b;
            this.f2570j = c0723b2;
            this.f2567g.m19572a(i, this);
        }

        /* renamed from: a */
        C0723b<D> m19596a(AbstractC0869h abstractC0869h, AbstractC0714a.AbstractC0715a<D> abstractC0715a) {
            C0718b<D> c0718b = new C0718b<>(this.f2567g, abstractC0715a);
            m19250a(abstractC0869h, c0718b);
            if (this.f2569i != null) {
                mo19249a((AbstractC0878o) this.f2569i);
            }
            this.f2568h = abstractC0869h;
            this.f2569i = c0718b;
            return this.f2567g;
        }

        /* renamed from: a */
        C0723b<D> m19594a(boolean z) {
            C0723b<D> c0723b;
            if (C0716b.f2562a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f2567g.m19563k();
            this.f2567g.m19559o();
            C0718b<D> c0718b = this.f2569i;
            if (c0718b != null) {
                mo19249a((AbstractC0878o) c0718b);
                if (z) {
                    c0718b.m19589b();
                }
            }
            this.f2567g.m19571a(this);
            if ((c0718b == null || c0718b.m19591a()) && !z) {
                c0723b = this.f2567g;
            } else {
                this.f2567g.m19557q();
                c0723b = this.f2570j;
            }
            return c0723b;
        }

        @Override // androidx.p037g.p039b.C0723b.AbstractC0725b
        /* renamed from: a */
        public void mo19551a(C0723b<D> c0723b, D d) {
            if (C0716b.f2562a) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                mo19194b((C0717a<D>) d);
                return;
            }
            if (C0716b.f2562a) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            mo19195a((C0717a<D>) d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: a */
        public void mo19249a(AbstractC0878o<? super D> abstractC0878o) {
            super.mo19249a((AbstractC0878o) abstractC0878o);
            this.f2568h = null;
            this.f2569i = null;
        }

        /* renamed from: a */
        public void m19595a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f2565e);
            printWriter.print(" mArgs=");
            printWriter.println(this.f2566f);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f2567g);
            this.f2567g.mo19570a(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f2569i != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f2569i);
                this.f2569i.m19590a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(m19593e().m19567c(m19252a()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(m19244d());
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: b */
        protected void mo19247b() {
            if (C0716b.f2562a) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f2567g.m19564i();
        }

        @Override // androidx.lifecycle.C0877n, androidx.lifecycle.LiveData
        /* renamed from: b */
        public void mo19194b(D d) {
            super.mo19194b((C0717a<D>) d);
            if (this.f2570j != null) {
                this.f2570j.m19557q();
                this.f2570j = null;
            }
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: c */
        protected void mo19245c() {
            if (C0716b.f2562a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f2567g.m19561m();
        }

        /* renamed from: e */
        C0723b<D> m19593e() {
            return this.f2567g;
        }

        /* renamed from: f */
        void m19592f() {
            AbstractC0869h abstractC0869h = this.f2568h;
            C0718b<D> c0718b = this.f2569i;
            if (abstractC0869h == null || c0718b == null) {
                return;
            }
            super.mo19249a((AbstractC0878o) c0718b);
            m19250a(abstractC0869h, c0718b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f2565e);
            sb.append(" : ");
            C0519a.m20650a(this.f2567g, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: androidx.g.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/g/a/b$b.class */
    public static class C0718b<D> implements AbstractC0878o<D> {

        /* renamed from: a */
        private final C0723b<D> f2571a;

        /* renamed from: b */
        private final AbstractC0714a.AbstractC0715a<D> f2572b;

        /* renamed from: c */
        private boolean f2573c = false;

        C0718b(C0723b<D> c0723b, AbstractC0714a.AbstractC0715a<D> abstractC0715a) {
            this.f2571a = c0723b;
            this.f2572b = abstractC0715a;
        }

        @Override // androidx.lifecycle.AbstractC0878o
        /* renamed from: a */
        public void mo19193a(D d) {
            if (C0716b.f2562a) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f2571a + ": " + this.f2571a.m19567c(d));
            }
            this.f2572b.mo14536a((C0723b<C0723b<D>>) this.f2571a, (C0723b<D>) d);
            this.f2573c = true;
        }

        /* renamed from: a */
        public void m19590a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f2573c);
        }

        /* renamed from: a */
        boolean m19591a() {
            return this.f2573c;
        }

        /* renamed from: b */
        void m19589b() {
            if (this.f2573c) {
                if (C0716b.f2562a) {
                    Log.v("LoaderManager", "  Resetting: " + this.f2571a);
                }
                this.f2572b.mo14537a(this.f2571a);
            }
        }

        public String toString() {
            return this.f2572b.toString();
        }
    }

    /* renamed from: androidx.g.a.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/g/a/b$c.class */
    public static class C0719c extends AbstractC0884s {

        /* renamed from: a */
        private static final C0885t.AbstractC0886a f2574a = new C0885t.AbstractC0886a() { // from class: androidx.g.a.b.c.1
            @Override // androidx.lifecycle.C0885t.AbstractC0886a
            /* renamed from: a */
            public <T extends AbstractC0884s> T mo19172a(Class<T> cls) {
                return new C0719c();
            }
        };

        /* renamed from: b */
        private C0387h<C0717a> f2575b = new C0387h<>();

        /* renamed from: c */
        private boolean f2576c = false;

        C0719c() {
        }

        /* renamed from: a */
        static C0719c m19586a(C0888u c0888u) {
            return (C0719c) new C0885t(c0888u, f2574a).m19174a(C0719c.class);
        }

        /* renamed from: a */
        <D> C0717a<D> m19588a(int i) {
            return this.f2575b.m21080a(i);
        }

        @Override // androidx.lifecycle.AbstractC0884s
        /* renamed from: a */
        public void mo19177a() {
            super.mo19177a();
            int m21077b = this.f2575b.m21077b();
            for (int i = 0; i < m21077b; i++) {
                this.f2575b.m21070d(i).m19594a(true);
            }
            this.f2575b.m21074c();
        }

        /* renamed from: a */
        void m19587a(int i, C0717a c0717a) {
            this.f2575b.m21075b(i, c0717a);
        }

        /* renamed from: a */
        public void m19585a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f2575b.m21077b() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.f2575b.m21077b(); i++) {
                    C0717a m21070d = this.f2575b.m21070d(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f2575b.m21073c(i));
                    printWriter.print(": ");
                    printWriter.println(m21070d.toString());
                    m21070d.m19595a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        /* renamed from: b */
        void m19584b() {
            this.f2576c = true;
        }

        /* renamed from: c */
        boolean m19583c() {
            return this.f2576c;
        }

        /* renamed from: e */
        void m19582e() {
            this.f2576c = false;
        }

        /* renamed from: f */
        void m19581f() {
            int m21077b = this.f2575b.m21077b();
            for (int i = 0; i < m21077b; i++) {
                this.f2575b.m21070d(i).m19592f();
            }
        }
    }

    public C0716b(AbstractC0869h abstractC0869h, C0888u c0888u) {
        this.f2563b = abstractC0869h;
        this.f2564c = C0719c.m19586a(c0888u);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private <D> C0723b<D> m19598a(int i, Bundle bundle, AbstractC0714a.AbstractC0715a<D> abstractC0715a, C0723b<D> c0723b) {
        try {
            this.f2564c.m19584b();
            C0723b<D> mo14538a = abstractC0715a.mo14538a(i, bundle);
            if (mo14538a == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (mo14538a.getClass().isMemberClass() && !Modifier.isStatic(mo14538a.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + mo14538a);
            }
            C0717a c0717a = new C0717a(i, bundle, mo14538a, c0723b);
            if (f2562a) {
                Log.v("LoaderManager", "  Created new loader " + c0717a);
            }
            this.f2564c.m19587a(i, c0717a);
            this.f2564c.m19582e();
            return c0717a.m19596a(this.f2563b, abstractC0715a);
        } catch (Throwable th) {
            this.f2564c.m19582e();
            throw th;
        }
    }

    @Override // androidx.p037g.p038a.AbstractC0714a
    /* renamed from: a */
    public <D> C0723b<D> mo19599a(int i, Bundle bundle, AbstractC0714a.AbstractC0715a<D> abstractC0715a) {
        C0723b<D> m19596a;
        if (this.f2564c.m19583c()) {
            throw new IllegalStateException("Called while creating a loader");
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
        C0717a<D> m19588a = this.f2564c.m19588a(i);
        if (f2562a) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
        }
        if (m19588a == null) {
            m19596a = m19598a(i, bundle, abstractC0715a, (C0723b) null);
        } else {
            if (f2562a) {
                Log.v("LoaderManager", "  Re-using existing loader " + m19588a);
            }
            m19596a = m19588a.m19596a(this.f2563b, abstractC0715a);
        }
        return m19596a;
    }

    @Override // androidx.p037g.p038a.AbstractC0714a
    /* renamed from: a */
    public void mo19600a() {
        this.f2564c.m19581f();
    }

    @Override // androidx.p037g.p038a.AbstractC0714a
    @Deprecated
    /* renamed from: a */
    public void mo19597a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f2564c.m19585a(str, fileDescriptor, printWriter, strArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C0519a.m20650a(this.f2563b, sb);
        sb.append("}}");
        return sb.toString();
    }
}
