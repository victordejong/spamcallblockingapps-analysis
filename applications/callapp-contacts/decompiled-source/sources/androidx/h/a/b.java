package androidx.h.a;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.b.h;
import androidx.h.a.a;
import androidx.h.b.c;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.aa;
import androidx.lifecycle.ab;
import androidx.lifecycle.ac;
import androidx.lifecycle.p;
import androidx.lifecycle.t;
import androidx.lifecycle.u;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/h/a/b.class */
public final class b extends androidx.h.a.a {

    /* renamed from: a  reason: collision with root package name */
    static boolean f2409a = false;

    /* renamed from: b  reason: collision with root package name */
    private final p f2410b;

    /* renamed from: c  reason: collision with root package name */
    private final c f2411c;

    /* loaded from: classes-dex2jar.jar:androidx/h/a/b$a.class */
    public static final class a<D> extends t<D> implements c.b<D> {
        final int g;
        final Bundle h;
        final androidx.h.b.c<D> i;
        C0066b<D> j;
        private p k;
        private androidx.h.b.c<D> l;

        a(int i, Bundle bundle, androidx.h.b.c<D> cVar, androidx.h.b.c<D> cVar2) {
            this.g = i;
            this.h = bundle;
            this.i = cVar;
            this.l = cVar2;
            if (cVar.h == null) {
                cVar.h = this;
                cVar.g = i;
                return;
            }
            throw new IllegalStateException("There is already a listener registered");
        }

        final androidx.h.b.c<D> a(p pVar, a.AbstractC0065a<D> aVar) {
            C0066b<D> bVar = new C0066b<>(this.i, aVar);
            a(pVar, bVar);
            C0066b<D> bVar2 = this.j;
            if (bVar2 != null) {
                a((u) bVar2);
            }
            this.k = pVar;
            this.j = bVar;
            return this.i;
        }

        final androidx.h.b.c<D> a(boolean z) {
            if (b.f2409a) {
                new StringBuilder("  Destroying: ").append(this);
            }
            this.i.n();
            this.i.i = true;
            C0066b<D> bVar = this.j;
            if (bVar != null) {
                a((u) bVar);
                if (z) {
                    bVar.a();
                }
            }
            this.i.a(this);
            if ((bVar == null || bVar.f2412a) && !z) {
                return this.i;
            }
            this.i.q();
            return this.l;
        }

        @Override // androidx.lifecycle.LiveData
        public final void a() {
            if (b.f2409a) {
                new StringBuilder("  Starting: ").append(this);
            }
            this.i.m();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        public final void a(u<? super D> uVar) {
            super.a((u) uVar);
            this.k = null;
            this.j = null;
        }

        @Override // androidx.lifecycle.LiveData
        public final void b() {
            if (b.f2409a) {
                new StringBuilder("  Stopping: ").append(this);
            }
            this.i.p();
        }

        @Override // androidx.lifecycle.t, androidx.lifecycle.LiveData
        public final void b(D d2) {
            super.b((a<D>) d2);
            androidx.h.b.c<D> cVar = this.l;
            if (cVar != null) {
                cVar.q();
                this.l = null;
            }
        }

        @Override // androidx.h.b.c.b
        public final void c(D d2) {
            if (b.f2409a) {
                new StringBuilder("onLoadComplete: ").append(this);
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                b((a<D>) d2);
                return;
            }
            if (b.f2409a) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            a((a<D>) d2);
        }

        final void d() {
            p pVar = this.k;
            C0066b<D> bVar = this.j;
            if (pVar != null && bVar != null) {
                super.a((u) bVar);
                a(pVar, bVar);
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.g);
            sb.append(" : ");
            Class<?> cls = this.i.getClass();
            sb.append(cls.getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(cls)));
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.h.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/b$b.class */
    public static final class C0066b<D> implements u<D> {

        /* renamed from: a  reason: collision with root package name */
        boolean f2412a = false;

        /* renamed from: b  reason: collision with root package name */
        private final androidx.h.b.c<D> f2413b;

        /* renamed from: c  reason: collision with root package name */
        private final a.AbstractC0065a<D> f2414c;

        C0066b(androidx.h.b.c<D> cVar, a.AbstractC0065a<D> aVar) {
            this.f2413b = cVar;
            this.f2414c = aVar;
        }

        final void a() {
            if (this.f2412a && b.f2409a) {
                new StringBuilder("  Resetting: ").append(this.f2413b);
            }
        }

        @Override // androidx.lifecycle.u
        public final void onChanged(D d2) {
            if (b.f2409a) {
                StringBuilder sb = new StringBuilder("  onLoadFinished in ");
                sb.append(this.f2413b);
                sb.append(": ");
                sb.append(androidx.h.b.c.c(d2));
            }
            this.f2412a = true;
            this.f2414c.a(this.f2413b, d2);
        }

        public final String toString() {
            return this.f2414c.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/h/a/b$c.class */
    public static class c extends aa {

        /* renamed from: c  reason: collision with root package name */
        private static final ab.b f2415c = new ab.b() { // from class: androidx.h.a.b.c.1
            @Override // androidx.lifecycle.ab.b
            public final <T extends aa> T a(Class<T> cls) {
                return new c();
            }
        };

        /* renamed from: a  reason: collision with root package name */
        h<a> f2416a = new h<>();

        /* renamed from: b  reason: collision with root package name */
        boolean f2417b = false;

        c() {
        }

        static c a(ac acVar) {
            return (c) new ab(acVar, f2415c).a(c.class);
        }

        final <D> a<D> a(int i) {
            return this.f2416a.a(i, null);
        }

        @Override // androidx.lifecycle.aa
        public final void a() {
            super.a();
            int b2 = this.f2416a.b();
            for (int i = 0; i < b2; i++) {
                this.f2416a.b(i).a(true);
            }
            h<a> hVar = this.f2416a;
            int i2 = hVar.f1194c;
            Object[] objArr = hVar.f1193b;
            for (int i3 = 0; i3 < i2; i3++) {
                objArr[i3] = null;
            }
            hVar.f1194c = 0;
            hVar.f1192a = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(p pVar, ac acVar) {
        this.f2410b = pVar;
        this.f2411c = c.a(acVar);
    }

    /* JADX WARN: Finally extract failed */
    private <D> androidx.h.b.c<D> a(int i, Bundle bundle, a.AbstractC0065a<D> aVar, androidx.h.b.c<D> cVar) {
        try {
            this.f2411c.f2417b = true;
            androidx.h.b.c<D> a2 = aVar.a();
            if (a2.getClass().isMemberClass() && !Modifier.isStatic(a2.getClass().getModifiers())) {
                throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: ".concat(String.valueOf(a2)));
            }
            a aVar2 = new a(i, null, a2, cVar);
            if (f2409a) {
                new StringBuilder("  Created new loader ").append(aVar2);
            }
            this.f2411c.f2416a.b(i, aVar2);
            this.f2411c.f2417b = false;
            return aVar2.a(this.f2410b, aVar);
        } catch (Throwable th) {
            this.f2411c.f2417b = false;
            throw th;
        }
    }

    @Override // androidx.h.a.a
    public final <D> androidx.h.b.c<D> a(int i) {
        if (!this.f2411c.f2417b) {
            a<D> a2 = this.f2411c.a(i);
            if (a2 != null) {
                return a2.i;
            }
            return null;
        }
        throw new IllegalStateException("Called while creating a loader");
    }

    @Override // androidx.h.a.a
    public final <D> androidx.h.b.c<D> a(int i, a.AbstractC0065a<D> aVar) {
        if (this.f2411c.f2417b) {
            throw new IllegalStateException("Called while creating a loader");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            a<D> a2 = this.f2411c.a(i);
            if (f2409a) {
                StringBuilder sb = new StringBuilder("initLoader in ");
                sb.append(this);
                sb.append(": args=");
                sb.append((Object) null);
            }
            if (a2 == null) {
                return a(i, (Bundle) null, aVar, (androidx.h.b.c) null);
            }
            if (f2409a) {
                new StringBuilder("  Re-using existing loader ").append(a2);
            }
            return a2.a(this.f2410b, aVar);
        } else {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
    }

    @Override // androidx.h.a.a
    public final void a() {
        c cVar = this.f2411c;
        int b2 = cVar.f2416a.b();
        for (int i = 0; i < b2; i++) {
            cVar.f2416a.b(i).d();
        }
    }

    @Override // androidx.h.a.a
    @Deprecated
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        c cVar = this.f2411c;
        if (cVar.f2416a.b() > 0) {
            printWriter.print(str);
            printWriter.println("Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < cVar.f2416a.b(); i++) {
                a b2 = cVar.f2416a.b(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(cVar.f2416a.a(i));
                printWriter.print(": ");
                printWriter.println(b2.toString());
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(b2.g);
                printWriter.print(" mArgs=");
                printWriter.println(b2.h);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println(b2.i);
                b2.i.a(str2 + "  ", fileDescriptor, printWriter, strArr);
                if (b2.j != null) {
                    printWriter.print(str2);
                    printWriter.print("mCallbacks=");
                    printWriter.println(b2.j);
                    C0066b<D> bVar = b2.j;
                    printWriter.print(str2 + "  ");
                    printWriter.print("mDeliveredData=");
                    printWriter.println(bVar.f2412a);
                }
                printWriter.print(str2);
                printWriter.print("mData=");
                Object obj = b2.e;
                if (obj == LiveData.f2535b) {
                    obj = null;
                }
                printWriter.println(androidx.h.b.c.c(obj));
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.println(b2.c());
            }
        }
    }

    @Override // androidx.h.a.a
    public final <D> androidx.h.b.c<D> b(int i, a.AbstractC0065a<D> aVar) {
        if (this.f2411c.f2417b) {
            throw new IllegalStateException("Called while creating a loader");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            if (f2409a) {
                StringBuilder sb = new StringBuilder("restartLoader in ");
                sb.append(this);
                sb.append(": args=");
                sb.append((Object) null);
            }
            a<D> a2 = this.f2411c.a(i);
            return a(i, (Bundle) null, aVar, a2 != null ? a2.a(false) : null);
        } else {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Class<?> cls = this.f2410b.getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append("}}");
        return sb.toString();
    }
}
