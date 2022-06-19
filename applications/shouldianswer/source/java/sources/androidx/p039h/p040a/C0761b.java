package androidx.p039h.p040a;

import android.os.Bundle;
import android.util.Log;
import androidx.core.p022f.C0495a;
import androidx.lifecycle.AbstractC0903k;
import androidx.lifecycle.AbstractC0911q;
import androidx.lifecycle.AbstractC0919u;
import androidx.lifecycle.C0910p;
import androidx.lifecycle.C0920v;
import androidx.lifecycle.C0926x;
import androidx.p014c.C0388h;
import androidx.p039h.p040a.AbstractC0759a;
import androidx.p039h.p041b.C0766a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.h.a.b */
/* loaded from: classes-dex2jar.jar:androidx/h/a/b.class */
public class C0761b extends AbstractC0759a {

    /* renamed from: a */
    static boolean f2507a = false;

    /* renamed from: b */
    private final AbstractC0903k f2508b;

    /* renamed from: c */
    private final C0764c f2509c;

    /* renamed from: androidx.h.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/b$a.class */
    public static class C0762a<D> extends C0910p<D> implements C0766a.AbstractC0767a<D> {

        /* renamed from: e */
        private final int f2510e;

        /* renamed from: f */
        private final Bundle f2511f;

        /* renamed from: g */
        private final C0766a<D> f2512g;

        /* renamed from: h */
        private AbstractC0903k f2513h;

        /* renamed from: i */
        private C0763b<D> f2514i;

        /* renamed from: j */
        private C0766a<D> f2515j;

        /* renamed from: a */
        C0766a<D> m5401a(boolean z) {
            if (C0761b.f2507a) {
                Log.v("LoaderManager", "  Destroying: " + this);
            }
            this.f2512g.m5387c();
            this.f2512g.m5383g();
            C0763b<D> c0763b = this.f2514i;
            if (c0763b != null) {
                mo5136a((AbstractC0911q) c0763b);
                if (z) {
                    c0763b.m5396b();
                }
            }
            this.f2512g.m5391a((C0766a.AbstractC0767a) this);
            if ((c0763b == null || c0763b.m5398a()) && !z) {
                return this.f2512g;
            }
            this.f2512g.m5381i();
            return this.f2515j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: a */
        public void mo5136a(AbstractC0911q<? super D> abstractC0911q) {
            super.mo5136a((AbstractC0911q) abstractC0911q);
            this.f2513h = null;
            this.f2514i = null;
        }

        @Override // androidx.lifecycle.C0910p, androidx.lifecycle.LiveData
        /* renamed from: a */
        public void mo5084a(D d) {
            super.mo5084a((C0762a<D>) d);
            C0766a<D> c0766a = this.f2515j;
            if (c0766a != null) {
                c0766a.m5381i();
                this.f2515j = null;
            }
        }

        /* renamed from: a */
        public void m5402a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f2510e);
            printWriter.print(" mArgs=");
            printWriter.println(this.f2511f);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f2512g);
            C0766a<D> c0766a = this.f2512g;
            c0766a.m5389a(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f2514i != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f2514i);
                C0763b<D> c0763b = this.f2514i;
                c0763b.m5397a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(m5400e().m5390a((C0766a<D>) m5139a()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(m5133d());
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: b */
        protected void mo1619b() {
            if (C0761b.f2507a) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            this.f2512g.m5392a();
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: c */
        protected void mo1617c() {
            if (C0761b.f2507a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.f2512g.m5385e();
        }

        /* renamed from: e */
        C0766a<D> m5400e() {
            return this.f2512g;
        }

        /* renamed from: f */
        void m5399f() {
            AbstractC0903k abstractC0903k = this.f2513h;
            C0763b<D> c0763b = this.f2514i;
            if (abstractC0903k == null || c0763b == null) {
                return;
            }
            super.mo5136a((AbstractC0911q) c0763b);
            m5137a(abstractC0903k, c0763b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f2510e);
            sb.append(" : ");
            C0495a.m6470a(this.f2512g, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: androidx.h.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/b$b.class */
    public static class C0763b<D> implements AbstractC0911q<D> {

        /* renamed from: a */
        private final C0766a<D> f2516a;

        /* renamed from: b */
        private final AbstractC0759a.AbstractC0760a<D> f2517b;

        /* renamed from: c */
        private boolean f2518c;

        @Override // androidx.lifecycle.AbstractC0911q
        /* renamed from: a */
        public void mo431a(D d) {
            if (C0761b.f2507a) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f2516a + ": " + this.f2516a.m5390a((C0766a<D>) d));
            }
            this.f2517b.m5405a(this.f2516a, d);
            this.f2518c = true;
        }

        /* renamed from: a */
        public void m5397a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f2518c);
        }

        /* renamed from: a */
        boolean m5398a() {
            return this.f2518c;
        }

        /* renamed from: b */
        void m5396b() {
            if (this.f2518c) {
                if (C0761b.f2507a) {
                    Log.v("LoaderManager", "  Resetting: " + this.f2516a);
                }
                this.f2517b.m5406a(this.f2516a);
            }
        }

        public String toString() {
            return this.f2517b.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.h.a.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/b$c.class */
    public static class C0764c extends AbstractC0919u {

        /* renamed from: a */
        private static final C0920v.AbstractC0922b f2519a = new C0920v.AbstractC0922b() { // from class: androidx.h.a.b.c.1
            @Override // androidx.lifecycle.C0920v.AbstractC0922b
            /* renamed from: a */
            public <T extends AbstractC0919u> T mo5057a(Class<T> cls) {
                return new C0764c();
            }
        };

        /* renamed from: b */
        private C0388h<C0762a> f2520b = new C0388h<>();

        /* renamed from: c */
        private boolean f2521c = false;

        C0764c() {
        }

        /* renamed from: a */
        static C0764c m5395a(C0926x c0926x) {
            return (C0764c) new C0920v(c0926x, f2519a).m5061a(C0764c.class);
        }

        @Override // androidx.lifecycle.AbstractC0919u
        /* renamed from: a */
        public void mo5064a() {
            super.mo5064a();
            int m6802b = this.f2520b.m6802b();
            for (int i = 0; i < m6802b; i++) {
                this.f2520b.m6795d(i).m5401a(true);
            }
            this.f2520b.m6799c();
        }

        /* renamed from: a */
        public void m5394a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f2520b.m6802b() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.f2520b.m6802b(); i++) {
                    C0762a m6795d = this.f2520b.m6795d(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f2520b.m6798c(i));
                    printWriter.print(": ");
                    printWriter.println(m6795d.toString());
                    m6795d.m5402a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        /* renamed from: b */
        void m5393b() {
            int m6802b = this.f2520b.m6802b();
            for (int i = 0; i < m6802b; i++) {
                this.f2520b.m6795d(i).m5399f();
            }
        }
    }

    public C0761b(AbstractC0903k abstractC0903k, C0926x c0926x) {
        this.f2508b = abstractC0903k;
        this.f2509c = C0764c.m5395a(c0926x);
    }

    @Override // androidx.p039h.p040a.AbstractC0759a
    /* renamed from: a */
    public void mo5404a() {
        this.f2509c.m5393b();
    }

    @Override // androidx.p039h.p040a.AbstractC0759a
    @Deprecated
    /* renamed from: a */
    public void mo5403a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f2509c.m5394a(str, fileDescriptor, printWriter, strArr);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C0495a.m6470a(this.f2508b, sb);
        sb.append("}}");
        return sb.toString();
    }
}
