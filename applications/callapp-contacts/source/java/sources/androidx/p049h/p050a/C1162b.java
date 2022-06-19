package androidx.p049h.p050a;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.lifecycle.AbstractC1231aa;
import androidx.lifecycle.AbstractC1263p;
import androidx.lifecycle.AbstractC1268u;
import androidx.lifecycle.C1232ab;
import androidx.lifecycle.C1238ac;
import androidx.lifecycle.C1267t;
import androidx.lifecycle.LiveData;
import androidx.p023b.C0442h;
import androidx.p049h.p050a.AbstractC1160a;
import androidx.p049h.p051b.C1170c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
/* renamed from: androidx.h.a.b */
/* loaded from: classes-dex2jar.jar:androidx/h/a/b.class */
public final class C1162b extends AbstractC1160a {

    /* renamed from: a */
    static boolean f4542a = false;

    /* renamed from: b */
    private final AbstractC1263p f4543b;

    /* renamed from: c */
    private final C1165c f4544c;

    /* renamed from: androidx.h.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/b$a.class */
    public static final class C1163a<D> extends C1267t<D> implements C1170c.AbstractC1172b<D> {

        /* renamed from: g */
        final int f4545g;

        /* renamed from: h */
        final Bundle f4546h;

        /* renamed from: i */
        final C1170c<D> f4547i;

        /* renamed from: j */
        C1164b<D> f4548j;

        /* renamed from: k */
        private AbstractC1263p f4549k;

        /* renamed from: l */
        private C1170c<D> f4550l;

        C1163a(int i, Bundle bundle, C1170c<D> c1170c, C1170c<D> c1170c2) {
            this.f4545g = i;
            this.f4546h = bundle;
            this.f4547i = c1170c;
            this.f4550l = c1170c2;
            if (c1170c.f4578h == null) {
                c1170c.f4578h = this;
                c1170c.f4577g = i;
                return;
            }
            throw new IllegalStateException("There is already a listener registered");
        }

        /* renamed from: a */
        final C1170c<D> m43454a(AbstractC1263p abstractC1263p, AbstractC1160a.AbstractC1161a<D> abstractC1161a) {
            C1164b<D> c1164b = new C1164b<>(this.f4547i, abstractC1161a);
            m43334a(abstractC1263p, c1164b);
            C1164b<D> c1164b2 = this.f4548j;
            if (c1164b2 != null) {
                mo43333a((AbstractC1268u) c1164b2);
            }
            this.f4549k = abstractC1263p;
            this.f4548j = c1164b;
            return this.f4547i;
        }

        /* renamed from: a */
        final C1170c<D> m43453a(boolean z) {
            if (C1162b.f4542a) {
                new StringBuilder("  Destroying: ").append(this);
            }
            this.f4547i.m43429n();
            this.f4547i.f4579i = true;
            C1164b<D> c1164b = this.f4548j;
            if (c1164b != null) {
                mo43333a((AbstractC1268u) c1164b);
                if (z) {
                    c1164b.m43451a();
                }
            }
            this.f4547i.m43440a(this);
            if ((c1164b == null || c1164b.f4551a) && !z) {
                return this.f4547i;
            }
            this.f4547i.m43426q();
            return this.f4550l;
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: a */
        public final void mo4697a() {
            if (C1162b.f4542a) {
                new StringBuilder("  Starting: ").append(this);
            }
            this.f4547i.m43430m();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: a */
        public final void mo43333a(AbstractC1268u<? super D> abstractC1268u) {
            super.mo43333a((AbstractC1268u) abstractC1268u);
            this.f4549k = null;
            this.f4548j = null;
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: b */
        public final void mo4695b() {
            if (C1162b.f4542a) {
                new StringBuilder("  Stopping: ").append(this);
            }
            this.f4547i.m43427p();
        }

        @Override // androidx.lifecycle.C1267t, androidx.lifecycle.LiveData
        /* renamed from: b */
        public final void mo43286b(D d) {
            super.mo43286b((C1163a<D>) d);
            C1170c<D> c1170c = this.f4550l;
            if (c1170c != null) {
                c1170c.m43426q();
                this.f4550l = null;
            }
        }

        @Override // androidx.p049h.p051b.C1170c.AbstractC1172b
        /* renamed from: c */
        public final void mo43422c(D d) {
            if (C1162b.f4542a) {
                new StringBuilder("onLoadComplete: ").append(this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                mo43286b((C1163a<D>) d);
                return;
            }
            if (C1162b.f4542a) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            mo43287a((C1163a<D>) d);
        }

        /* renamed from: d */
        final void m43452d() {
            AbstractC1263p abstractC1263p = this.f4549k;
            C1164b<D> c1164b = this.f4548j;
            if (abstractC1263p == null || c1164b == null) {
                return;
            }
            super.mo43333a((AbstractC1268u) c1164b);
            m43334a(abstractC1263p, c1164b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f4545g);
            sb.append(" : ");
            Class<?> cls = this.f4547i.getClass();
            sb.append(cls.getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(cls)));
            sb.append("}}");
            return sb.toString();
        }
    }

    /* renamed from: androidx.h.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/b$b.class */
    public static final class C1164b<D> implements AbstractC1268u<D> {

        /* renamed from: a */
        boolean f4551a = false;

        /* renamed from: b */
        private final C1170c<D> f4552b;

        /* renamed from: c */
        private final AbstractC1160a.AbstractC1161a<D> f4553c;

        C1164b(C1170c<D> c1170c, AbstractC1160a.AbstractC1161a<D> abstractC1161a) {
            this.f4552b = c1170c;
            this.f4553c = abstractC1161a;
        }

        /* renamed from: a */
        final void m43451a() {
            if (!this.f4551a || !C1162b.f4542a) {
                return;
            }
            new StringBuilder("  Resetting: ").append(this.f4552b);
        }

        @Override // androidx.lifecycle.AbstractC1268u
        public final void onChanged(D d) {
            if (C1162b.f4542a) {
                StringBuilder sb = new StringBuilder("  onLoadFinished in ");
                sb.append(this.f4552b);
                sb.append(": ");
                sb.append(C1170c.m43436c(d));
            }
            this.f4551a = true;
            this.f4553c.mo19552a(this.f4552b, d);
        }

        public final String toString() {
            return this.f4553c.toString();
        }
    }

    /* renamed from: androidx.h.a.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/b$c.class */
    public static class C1165c extends AbstractC1231aa {

        /* renamed from: c */
        private static final C1232ab.AbstractC1234b f4554c = new C1232ab.AbstractC1234b() { // from class: androidx.h.a.b.c.1
            @Override // androidx.lifecycle.C1232ab.AbstractC1234b
            /* renamed from: a */
            public final <T extends AbstractC1231aa> T mo43274a(Class<T> cls) {
                return new C1165c();
            }
        };

        /* renamed from: a */
        C0442h<C1163a> f4555a = new C0442h<>();

        /* renamed from: b */
        boolean f4556b = false;

        C1165c() {
        }

        /* renamed from: a */
        static C1165c m43449a(C1238ac c1238ac) {
            return (C1165c) new C1232ab(c1238ac, f4554c).m43312a(C1165c.class);
        }

        /* renamed from: a */
        final <D> C1163a<D> m43450a(int i) {
            return this.f4555a.m45511a(i, null);
        }

        @Override // androidx.lifecycle.AbstractC1231aa
        /* renamed from: a */
        public final void mo43317a() {
            super.mo43317a();
            int m45509b = this.f4555a.m45509b();
            for (int i = 0; i < m45509b; i++) {
                this.f4555a.m45508b(i).m43453a(true);
            }
            C0442h<C1163a> c0442h = this.f4555a;
            int i2 = c0442h.f1755c;
            Object[] objArr = c0442h.f1754b;
            for (int i3 = 0; i3 < i2; i3++) {
                objArr[i3] = null;
            }
            c0442h.f1755c = 0;
            c0442h.f1753a = false;
        }
    }

    public C1162b(AbstractC1263p abstractC1263p, C1238ac c1238ac) {
        this.f4543b = abstractC1263p;
        this.f4544c = C1165c.m43449a(c1238ac);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private <D> C1170c<D> m43458a(int i, Bundle bundle, AbstractC1160a.AbstractC1161a<D> abstractC1161a, C1170c<D> c1170c) {
        try {
            this.f4544c.f4556b = true;
            C1170c<D> mo19553a = abstractC1161a.mo19553a();
            if (mo19553a.getClass().isMemberClass() && !Modifier.isStatic(mo19553a.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: ".concat(String.valueOf(mo19553a)));
            }
            C1163a c1163a = new C1163a(i, null, mo19553a, c1170c);
            if (f4542a) {
                new StringBuilder("  Created new loader ").append(c1163a);
            }
            this.f4544c.f4555a.m45507b(i, c1163a);
            this.f4544c.f4556b = false;
            return c1163a.m43454a(this.f4543b, abstractC1161a);
        } catch (Throwable th) {
            this.f4544c.f4556b = false;
            throw th;
        }
    }

    @Override // androidx.p049h.p050a.AbstractC1160a
    /* renamed from: a */
    public final <D> C1170c<D> mo43459a(int i) {
        if (!this.f4544c.f4556b) {
            C1163a<D> m43450a = this.f4544c.m43450a(i);
            if (m43450a == null) {
                return null;
            }
            return m43450a.f4547i;
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // androidx.p049h.p050a.AbstractC1160a
    /* renamed from: a */
    public final <D> C1170c<D> mo43457a(int i, AbstractC1160a.AbstractC1161a<D> abstractC1161a) {
        if (!this.f4544c.f4556b) {
            if (Looper.getMainLooper() != Looper.myLooper()) {
                throw new IllegalStateException("initLoader must be called on the main thread");
            }
            C1163a<D> m43450a = this.f4544c.m43450a(i);
            if (f4542a) {
                StringBuilder sb = new StringBuilder("initLoader in ");
                sb.append(this);
                sb.append(": args=");
                sb.append((Object) null);
            }
            if (m43450a == null) {
                return m43458a(i, (Bundle) null, abstractC1161a, (C1170c) null);
            }
            if (f4542a) {
                new StringBuilder("  Re-using existing loader ").append(m43450a);
            }
            return m43450a.m43454a(this.f4543b, abstractC1161a);
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // androidx.p049h.p050a.AbstractC1160a
    /* renamed from: a */
    public final void mo43460a() {
        C1165c c1165c = this.f4544c;
        int m45509b = c1165c.f4555a.m45509b();
        for (int i = 0; i < m45509b; i++) {
            c1165c.f4555a.m45508b(i).m43452d();
        }
    }

    @Override // androidx.p049h.p050a.AbstractC1160a
    @Deprecated
    /* renamed from: a */
    public final void mo43456a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        C1165c c1165c = this.f4544c;
        if (c1165c.f4555a.m45509b() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < c1165c.f4555a.m45509b(); i++) {
                C1163a m45508b = c1165c.f4555a.m45508b(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(c1165c.f4555a.m45512a(i));
                printWriter.print(": ");
                printWriter.println(m45508b.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(m45508b.f4545g);
                printWriter.print(" mArgs=");
                printWriter.println(m45508b.f4546h);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println(m45508b.f4547i);
                m45508b.f4547i.mo43439a(str2 + "  ", fileDescriptor, printWriter, strArr);
                if (m45508b.f4548j != null) {
                    printWriter.print(str2);
                    printWriter.print("mCallbacks=");
                    printWriter.println(m45508b.f4548j);
                    C1164b<D> c1164b = m45508b.f4548j;
                    printWriter.print(str2 + "  ");
                    printWriter.print("mDeliveredData=");
                    printWriter.println(c1164b.f4551a);
                }
                printWriter.print(str2);
                printWriter.print("mData=");
                Object obj = m45508b.f4781e;
                if (obj == LiveData.f4777b) {
                    obj = null;
                }
                printWriter.println(C1170c.m43436c(obj));
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.println(m45508b.m43330c());
            }
        }
    }

    @Override // androidx.p049h.p050a.AbstractC1160a
    /* renamed from: b */
    public final <D> C1170c<D> mo43455b(int i, AbstractC1160a.AbstractC1161a<D> abstractC1161a) {
        if (!this.f4544c.f4556b) {
            if (Looper.getMainLooper() != Looper.myLooper()) {
                throw new IllegalStateException("restartLoader must be called on the main thread");
            }
            if (f4542a) {
                StringBuilder sb = new StringBuilder("restartLoader in ");
                sb.append(this);
                sb.append(": args=");
                sb.append((Object) null);
            }
            C1163a<D> m43450a = this.f4544c.m43450a(i);
            return m43458a(i, (Bundle) null, abstractC1161a, m43450a != null ? m43450a.m43453a(false) : null);
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Class<?> cls = this.f4543b.getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append("}}");
        return sb.toString();
    }
}
