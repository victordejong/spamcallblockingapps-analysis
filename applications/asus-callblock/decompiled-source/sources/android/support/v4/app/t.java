package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.s;
import android.support.v4.b.c;
import android.support.v4.b.i;
import android.support.v4.content.b;
import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/t.class */
public final class t extends s {

    /* renamed from: a  reason: collision with root package name */
    static boolean f102a = false;

    /* renamed from: b  reason: collision with root package name */
    final i<a> f103b = new i<>();
    final i<a> c = new i<>();
    final String d;
    boolean e;
    boolean f;
    l g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/t$a.class */
    public final class a implements b.a<Object>, b.AbstractC0006b<Object> {

        /* renamed from: a  reason: collision with root package name */
        final int f104a;

        /* renamed from: b  reason: collision with root package name */
        final Bundle f105b;
        s.a<Object> c;
        b<Object> d;
        boolean e;
        boolean f;
        Object g;
        boolean h;
        boolean i;
        boolean j;
        boolean k;
        boolean l;
        boolean m;
        a n;
        final /* synthetic */ t o;

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a() {
            if (t.f102a) {
                Log.v("LoaderManager", "  Stopping: " + this);
            }
            this.h = false;
            if (!this.i && this.d != null && this.m) {
                this.m = false;
                this.d.a((b.AbstractC0006b<Object>) this);
                this.d.a((b.a<Object>) this);
                this.d.d = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Finally extract failed */
        public final void a(b<Object> bVar, Object obj) {
            String str;
            if (this.c != null) {
                if (this.o.g != null) {
                    str = this.o.g.f.v;
                    this.o.g.f.v = "onLoadFinished";
                } else {
                    str = null;
                }
                try {
                    if (t.f102a) {
                        StringBuilder append = new StringBuilder("  onLoadFinished in ").append(bVar).append(": ");
                        StringBuilder sb = new StringBuilder(64);
                        c.a(obj, sb);
                        sb.append("}");
                        Log.v("LoaderManager", append.append(sb.toString()).toString());
                    }
                    if (this.o.g != null) {
                        this.o.g.f.v = str;
                    }
                    this.f = true;
                } catch (Throwable th) {
                    if (this.o.g != null) {
                        this.o.g.f.v = str;
                    }
                    throw th;
                }
            }
        }

        public final void a(String str, PrintWriter printWriter) {
            String str2 = str;
            a aVar = this;
            while (true) {
                printWriter.print(str2);
                printWriter.print("mId=");
                printWriter.print(aVar.f104a);
                printWriter.print(" mArgs=");
                printWriter.println(aVar.f105b);
                printWriter.print(str2);
                printWriter.print("mCallbacks=");
                printWriter.println(aVar.c);
                printWriter.print(str2);
                printWriter.print("mLoader=");
                printWriter.println(aVar.d);
                if (aVar.d != null) {
                    b<Object> bVar = aVar.d;
                    String str3 = str2 + "  ";
                    printWriter.print(str3);
                    printWriter.print("mId=");
                    printWriter.print(bVar.f145a);
                    printWriter.print(" mListener=");
                    printWriter.println(bVar.f146b);
                    if (bVar.d || bVar.g || bVar.h) {
                        printWriter.print(str3);
                        printWriter.print("mStarted=");
                        printWriter.print(bVar.d);
                        printWriter.print(" mContentChanged=");
                        printWriter.print(bVar.g);
                        printWriter.print(" mProcessingChange=");
                        printWriter.println(bVar.h);
                    }
                    if (bVar.e || bVar.f) {
                        printWriter.print(str3);
                        printWriter.print("mAbandoned=");
                        printWriter.print(bVar.e);
                        printWriter.print(" mReset=");
                        printWriter.println(bVar.f);
                    }
                }
                if (aVar.e || aVar.f) {
                    printWriter.print(str2);
                    printWriter.print("mHaveData=");
                    printWriter.print(aVar.e);
                    printWriter.print("  mDeliveredData=");
                    printWriter.println(aVar.f);
                    printWriter.print(str2);
                    printWriter.print("mData=");
                    printWriter.println(aVar.g);
                }
                printWriter.print(str2);
                printWriter.print("mStarted=");
                printWriter.print(aVar.h);
                printWriter.print(" mReportNextStart=");
                printWriter.print(aVar.k);
                printWriter.print(" mDestroyed=");
                printWriter.println(aVar.l);
                printWriter.print(str2);
                printWriter.print("mRetaining=");
                printWriter.print(aVar.i);
                printWriter.print(" mRetainingStarted=");
                printWriter.print(aVar.j);
                printWriter.print(" mListenerRegistered=");
                printWriter.println(aVar.m);
                if (aVar.n != null) {
                    printWriter.print(str2);
                    printWriter.println("Pending Loader ");
                    printWriter.print(aVar.n);
                    printWriter.println(":");
                    aVar = aVar.n;
                    str2 = str2 + "  ";
                } else {
                    return;
                }
            }
        }

        final void b() {
            String str;
            a aVar = this;
            while (true) {
                if (t.f102a) {
                    Log.v("LoaderManager", "  Destroying: " + aVar);
                }
                aVar.l = true;
                boolean z = aVar.f;
                aVar.f = false;
                if (aVar.c != null && aVar.d != null && aVar.e && z) {
                    if (t.f102a) {
                        Log.v("LoaderManager", "  Reseting: " + aVar);
                    }
                    if (aVar.o.g != null) {
                        str = aVar.o.g.f.v;
                        aVar.o.g.f.v = "onLoaderReset";
                    } else {
                        str = null;
                    }
                    if (aVar.o.g != null) {
                        aVar.o.g.f.v = str;
                    }
                }
                aVar.c = null;
                aVar.g = null;
                aVar.e = false;
                if (aVar.d != null) {
                    if (aVar.m) {
                        aVar.m = false;
                        aVar.d.a((b.AbstractC0006b<Object>) aVar);
                        aVar.d.a((b.a<Object>) aVar);
                    }
                    b<Object> bVar = aVar.d;
                    bVar.f = true;
                    bVar.d = false;
                    bVar.e = false;
                    bVar.g = false;
                    bVar.h = false;
                }
                if (aVar.n != null) {
                    aVar = aVar.n;
                } else {
                    return;
                }
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f104a);
            sb.append(" : ");
            c.a(this.d, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(String str, l lVar, boolean z) {
        this.d = str;
        this.g = lVar;
        this.e = z;
    }

    public final void a(String str, PrintWriter printWriter) {
        if (this.f103b.b() > 0) {
            printWriter.print(str);
            printWriter.println("Active Loaders:");
            String str2 = str + "    ";
            for (int i = 0; i < this.f103b.b(); i++) {
                a d = this.f103b.d(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.f103b.c(i));
                printWriter.print(": ");
                printWriter.println(d.toString());
                d.a(str2, printWriter);
            }
        }
        if (this.c.b() > 0) {
            printWriter.print(str);
            printWriter.println("Inactive Loaders:");
            String str3 = str + "    ";
            for (int i2 = 0; i2 < this.c.b(); i2++) {
                a d2 = this.c.d(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(this.c.c(i2));
                printWriter.print(": ");
                printWriter.println(d2.toString());
                d2.a(str3, printWriter);
            }
        }
    }

    @Override // android.support.v4.app.s
    public final boolean a() {
        int b2 = this.f103b.b();
        boolean z = false;
        for (int i = 0; i < b2; i++) {
            a d = this.f103b.d(i);
            z |= d.h && !d.f;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (f102a) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, runtimeException);
            return;
        }
        this.e = true;
        for (int b2 = this.f103b.b() - 1; b2 >= 0; b2--) {
            a d = this.f103b.d(b2);
            if (d.i && d.j) {
                d.h = true;
            } else if (!d.h) {
                d.h = true;
                if (f102a) {
                    Log.v("LoaderManager", "  Starting: " + d);
                }
                if (d.d == null && d.c != null) {
                    d.d = d.c.a();
                }
                if (d.d == null) {
                    continue;
                } else if (!d.d.getClass().isMemberClass() || Modifier.isStatic(d.d.getClass().getModifiers())) {
                    if (!d.m) {
                        b<Object> bVar = d.d;
                        int i = d.f104a;
                        if (bVar.f146b != null) {
                            throw new IllegalStateException("There is already a listener registered");
                        }
                        bVar.f146b = d;
                        bVar.f145a = i;
                        b<Object> bVar2 = d.d;
                        if (bVar2.c != null) {
                            throw new IllegalStateException("There is already a listener registered");
                        }
                        bVar2.c = d;
                        d.m = true;
                    }
                    b<Object> bVar3 = d.d;
                    bVar3.d = true;
                    bVar3.f = false;
                    bVar3.e = false;
                } else {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + d.d);
                }
            } else {
                continue;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (f102a) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doStop when not started: " + this, runtimeException);
            return;
        }
        for (int b2 = this.f103b.b() - 1; b2 >= 0; b2--) {
            this.f103b.d(b2).a();
        }
        this.e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        if (f102a) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (!this.e) {
            RuntimeException runtimeException = new RuntimeException("here");
            runtimeException.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, runtimeException);
            return;
        }
        this.f = true;
        this.e = false;
        for (int b2 = this.f103b.b() - 1; b2 >= 0; b2--) {
            a d = this.f103b.d(b2);
            if (f102a) {
                Log.v("LoaderManager", "  Retaining: " + d);
            }
            d.i = true;
            d.j = d.h;
            d.h = false;
            d.c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        for (int b2 = this.f103b.b() - 1; b2 >= 0; b2--) {
            this.f103b.d(b2).k = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        for (int b2 = this.f103b.b() - 1; b2 >= 0; b2--) {
            a d = this.f103b.d(b2);
            if (d.h && d.k) {
                d.k = false;
                if (d.e) {
                    d.a(d.d, d.g);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g() {
        if (!this.f) {
            if (f102a) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (int b2 = this.f103b.b() - 1; b2 >= 0; b2--) {
                this.f103b.d(b2).b();
            }
            this.f103b.c();
        }
        if (f102a) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (int b3 = this.c.b() - 1; b3 >= 0; b3--) {
            this.c.d(b3).b();
        }
        this.c.c();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        c.a(this.g, sb);
        sb.append("}}");
        return sb.toString();
    }
}
