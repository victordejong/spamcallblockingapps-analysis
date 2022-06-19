package p020b.p065o.p066a;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.lifecycle.AbstractC0797h;
import androidx.lifecycle.AbstractC0804n;
import androidx.lifecycle.AbstractC0813r;
import androidx.lifecycle.C0803m;
import androidx.lifecycle.C0814s;
import androidx.lifecycle.C0818t;
import androidx.loader.content.C0833b;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import p020b.p036e.C1503h;
import p020b.p041h.p049k.C1591b;
import p020b.p065o.p066a.AbstractC1757a;
/* renamed from: b.o.a.b */
/* loaded from: classes-dex2jar.jar:b/o/a/b.class */
public class C1759b extends AbstractC1757a {

    /* renamed from: a */
    static boolean f6578a = false;

    /* renamed from: b */
    private final AbstractC0797h f6579b;

    /* renamed from: c */
    private final C1762c f6580c;

    /* renamed from: b.o.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/o/a/b$a.class */
    public static class C1760a<D> extends C0803m<D> implements C0833b.AbstractC0835b<D> {

        /* renamed from: l */
        private final int f6581l;

        /* renamed from: m */
        private final Bundle f6582m;

        /* renamed from: n */
        private final C0833b<D> f6583n;

        /* renamed from: o */
        private AbstractC0797h f6584o;

        /* renamed from: p */
        private C1761b<D> f6585p;

        /* renamed from: q */
        private C0833b<D> f6586q;

        C1760a(int i, Bundle bundle, C0833b<D> c0833b, C0833b<D> c0833b2) {
            this.f6581l = i;
            this.f6582m = bundle;
            this.f6583n = c0833b;
            this.f6586q = c0833b2;
            c0833b.m32306q(i, this);
        }

        @Override // androidx.loader.content.C0833b.AbstractC0835b
        /* renamed from: a */
        public void mo28964a(C0833b<D> c0833b, D d) {
            if (C1759b.f6578a) {
                Log.v("LoaderManager", "onLoadComplete: " + this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                mo28960n(d);
                return;
            }
            if (C1759b.f6578a) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            mo32373l(d);
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: j */
        protected void mo28963j() {
            if (C1759b.f6578a) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f6583n.m32303t();
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: k */
        protected void mo28962k() {
            if (C1759b.f6578a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f6583n.m32302u();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: m */
        public void mo28961m(AbstractC0804n<? super D> abstractC0804n) {
            super.mo28961m(abstractC0804n);
            this.f6584o = null;
            this.f6585p = null;
        }

        @Override // androidx.lifecycle.C0803m, androidx.lifecycle.LiveData
        /* renamed from: n */
        public void mo28960n(D d) {
            super.mo28960n(d);
            C0833b<D> c0833b = this.f6586q;
            if (c0833b != null) {
                c0833b.m32305r();
                this.f6586q = null;
            }
        }

        /* renamed from: o */
        C0833b<D> m28959o(boolean z) {
            if (C1759b.f6578a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f6583n.m32320b();
            this.f6583n.m32321a();
            C1761b<D> c1761b = this.f6585p;
            if (c1761b != null) {
                mo28961m(c1761b);
                if (z) {
                    c1761b.m28951d();
                }
            }
            this.f6583n.m32301v(this);
            if ((c1761b == null || c1761b.m28952c()) && !z) {
                return this.f6583n;
            }
            this.f6583n.m32305r();
            return this.f6586q;
        }

        /* renamed from: p */
        public void m28958p(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f6581l);
            printWriter.print(" mArgs=");
            printWriter.println(this.f6582m);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f6583n);
            C0833b<D> c0833b = this.f6583n;
            c0833b.mo32315g(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f6585p != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f6585p);
                C1761b<D> c1761b = this.f6585p;
                c1761b.m28953b(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(m28957q().m32318d(m32433f()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(m32432g());
        }

        /* renamed from: q */
        C0833b<D> m28957q() {
            return this.f6583n;
        }

        /* renamed from: r */
        void m28956r() {
            AbstractC0797h abstractC0797h = this.f6584o;
            C1761b<D> c1761b = this.f6585p;
            if (abstractC0797h == null || c1761b == null) {
                return;
            }
            super.mo28961m(c1761b);
            m32431h(abstractC0797h, c1761b);
        }

        /* renamed from: s */
        C0833b<D> m28955s(AbstractC0797h abstractC0797h, AbstractC1757a.AbstractC1758a<D> abstractC1758a) {
            C1761b<D> c1761b = new C1761b<>(this.f6583n, abstractC1758a);
            m32431h(abstractC0797h, c1761b);
            C1761b<D> c1761b2 = this.f6585p;
            if (c1761b2 != null) {
                mo28961m(c1761b2);
            }
            this.f6584o = abstractC0797h;
            this.f6585p = c1761b;
            return this.f6583n;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f6581l);
            sb.append(" : ");
            C1591b.m29669a(this.f6583n, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: b.o.a.b$b */
    /* loaded from: classes-dex2jar.jar:b/o/a/b$b.class */
    public static class C1761b<D> implements AbstractC0804n<D> {

        /* renamed from: a */
        private final C0833b<D> f6587a;

        /* renamed from: b */
        private final AbstractC1757a.AbstractC1758a<D> f6588b;

        /* renamed from: c */
        private boolean f6589c = false;

        C1761b(C0833b<D> c0833b, AbstractC1757a.AbstractC1758a<D> abstractC1758a) {
            this.f6587a = c0833b;
            this.f6588b = abstractC1758a;
        }

        @Override // androidx.lifecycle.AbstractC0804n
        /* renamed from: a */
        public void mo28954a(D d) {
            if (C1759b.f6578a) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f6587a + ": " + this.f6587a.m32318d(d));
            }
            this.f6588b.mo17606a(this.f6587a, d);
            this.f6589c = true;
        }

        /* renamed from: b */
        public void m28953b(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f6589c);
        }

        /* renamed from: c */
        boolean m28952c() {
            return this.f6589c;
        }

        /* renamed from: d */
        void m28951d() {
            if (this.f6589c) {
                if (C1759b.f6578a) {
                    Log.v("LoaderManager", "  Resetting: " + this.f6587a);
                }
                this.f6588b.mo17604c(this.f6587a);
            }
        }

        public String toString() {
            return this.f6588b.toString();
        }
    }

    /* renamed from: b.o.a.b$c */
    /* loaded from: classes-dex2jar.jar:b/o/a/b$c.class */
    public static class C1762c extends AbstractC0813r {

        /* renamed from: c */
        private static final C0814s.AbstractC0815a f6590c = new C1763a();

        /* renamed from: d */
        private C1503h<C1760a> f6591d = new C1503h<>();

        /* renamed from: e */
        private boolean f6592e = false;

        /* renamed from: b.o.a.b$c$a */
        /* loaded from: classes-dex2jar.jar:b/o/a/b$c$a.class */
        static final class C1763a implements C0814s.AbstractC0815a {
            C1763a() {
            }

            @Override // androidx.lifecycle.C0814s.AbstractC0815a
            /* renamed from: a */
            public <T extends AbstractC0813r> T mo28941a(Class<T> cls) {
                return new C1762c();
            }
        }

        C1762c() {
        }

        /* renamed from: g */
        static C1762c m28947g(C0818t c0818t) {
            return (C1762c) new C0814s(c0818t, f6590c).m32352a(C1762c.class);
        }

        @Override // androidx.lifecycle.AbstractC0813r
        /* renamed from: d */
        public void mo28950d() {
            super.mo28950d();
            int m29899m = this.f6591d.m29899m();
            for (int i = 0; i < m29899m; i++) {
                this.f6591d.m29898n(i).m28959o(true);
            }
            this.f6591d.m29907b();
        }

        /* renamed from: e */
        public void m28949e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f6591d.m29899m() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.f6591d.m29899m(); i++) {
                    C1760a m29898n = this.f6591d.m29898n(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f6591d.m29901j(i));
                    printWriter.print(": ");
                    printWriter.println(m29898n.toString());
                    m29898n.m28958p(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        /* renamed from: f */
        void m28948f() {
            this.f6592e = false;
        }

        /* renamed from: h */
        <D> C1760a<D> m28946h(int i) {
            return this.f6591d.m29904g(i);
        }

        /* renamed from: i */
        boolean m28945i() {
            return this.f6592e;
        }

        /* renamed from: j */
        void m28944j() {
            int m29899m = this.f6591d.m29899m();
            for (int i = 0; i < m29899m; i++) {
                this.f6591d.m29898n(i).m28956r();
            }
        }

        /* renamed from: k */
        void m28943k(int i, C1760a c1760a) {
            this.f6591d.m29900l(i, c1760a);
        }

        /* renamed from: l */
        void m28942l() {
            this.f6592e = true;
        }
    }

    public C1759b(AbstractC0797h abstractC0797h, C0818t c0818t) {
        this.f6579b = abstractC0797h;
        this.f6580c = C1762c.m28947g(c0818t);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private <D> C0833b<D> m28965e(int i, Bundle bundle, AbstractC1757a.AbstractC1758a<D> abstractC1758a, C0833b<D> c0833b) {
        try {
            this.f6580c.m28942l();
            C0833b<D> mo17605b = abstractC1758a.mo17605b(i, bundle);
            if (mo17605b == null) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
            }
            if (mo17605b.getClass().isMemberClass() && !Modifier.isStatic(mo17605b.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + mo17605b);
            }
            C1760a c1760a = new C1760a(i, bundle, mo17605b, c0833b);
            if (f6578a) {
                Log.v("LoaderManager", "  Created new loader " + c1760a);
            }
            this.f6580c.m28943k(i, c1760a);
            this.f6580c.m28948f();
            return c1760a.m28955s(this.f6579b, abstractC1758a);
        } catch (Throwable th) {
            this.f6580c.m28948f();
            throw th;
        }
    }

    @Override // p020b.p065o.p066a.AbstractC1757a
    @Deprecated
    /* renamed from: a */
    public void mo28968a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f6580c.m28949e(str, fileDescriptor, printWriter, strArr);
    }

    @Override // p020b.p065o.p066a.AbstractC1757a
    /* renamed from: c */
    public <D> C0833b<D> mo28967c(int i, Bundle bundle, AbstractC1757a.AbstractC1758a<D> abstractC1758a) {
        if (!this.f6580c.m28945i()) {
            if (Looper.getMainLooper() != Looper.myLooper()) {
                throw new IllegalStateException("initLoader must be called on the main thread");
            }
            C1760a<D> m28946h = this.f6580c.m28946h(i);
            if (f6578a) {
                Log.v("LoaderManager", "initLoader in " + this + ": args=" + bundle);
            }
            if (m28946h == null) {
                return m28965e(i, bundle, abstractC1758a, null);
            }
            if (f6578a) {
                Log.v("LoaderManager", "  Re-using existing loader " + m28946h);
            }
            return m28946h.m28955s(this.f6579b, abstractC1758a);
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // p020b.p065o.p066a.AbstractC1757a
    /* renamed from: d */
    public void mo28966d() {
        this.f6580c.m28944j();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C1591b.m29669a(this.f6579b, sb);
        sb.append("}}");
        return sb.toString();
    }
}
