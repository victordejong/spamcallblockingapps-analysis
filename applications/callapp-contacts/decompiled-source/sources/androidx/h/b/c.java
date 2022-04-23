package androidx.h.b;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes-dex2jar.jar:androidx/h/b/c.class */
public class c<D> {

    /* renamed from: a  reason: collision with root package name */
    private Context f2426a;
    public int g;
    public b<D> h;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2427b = false;
    public boolean i = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2428c = true;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2429d = false;
    boolean j = false;

    /* loaded from: classes-dex2jar.jar:androidx/h/b/c$a.class */
    public final class a extends ContentObserver {
        public a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            c.this.t();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/h/b/c$b.class */
    public interface b<D> {
        void c(D d2);
    }

    public c(Context context) {
        this.f2426a = context.getApplicationContext();
    }

    public static String c(D d2) {
        StringBuilder sb = new StringBuilder(64);
        if (d2 == null) {
            sb.append(JsonReaderKt.NULL);
        } else {
            Class<?> cls = d2.getClass();
            sb.append(cls.getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(cls)));
            sb.append("}");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    public final void a(b<D> bVar) {
        b<D> bVar2 = this.h;
        if (bVar2 == null) {
            throw new IllegalStateException("No listener register");
        } else if (bVar2 == bVar) {
            this.h = null;
        } else {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
    }

    @Deprecated
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.g);
        printWriter.print(" mListener=");
        printWriter.println(this.h);
        if (this.f2427b || this.f2429d || this.j) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f2427b);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f2429d);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.j);
        }
        if (this.i || this.f2428c) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.i);
            printWriter.print(" mReset=");
            printWriter.println(this.f2428c);
        }
    }

    public void b(D d2) {
        b<D> bVar = this.h;
        if (bVar != null) {
            bVar.c(d2);
        }
    }

    protected boolean b() {
        return false;
    }

    protected void g() {
    }

    protected void h() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void i() {
    }

    public final Context j() {
        return this.f2426a;
    }

    public final boolean k() {
        return this.f2427b;
    }

    public final boolean l() {
        return this.f2428c;
    }

    public final void m() {
        this.f2427b = true;
        this.f2428c = false;
        this.i = false;
        g();
    }

    public final boolean n() {
        return b();
    }

    public final void o() {
        a();
    }

    public final void p() {
        this.f2427b = false;
        h();
    }

    public final void q() {
        i();
        this.f2428c = true;
        this.f2427b = false;
        this.i = false;
        this.f2429d = false;
        this.j = false;
    }

    public final boolean r() {
        boolean z = this.f2429d;
        this.f2429d = false;
        this.j |= z;
        return z;
    }

    public final void s() {
        if (this.j) {
            t();
        }
    }

    public final void t() {
        if (this.f2427b) {
            a();
        } else {
            this.f2429d = true;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        Class<?> cls = getClass();
        sb.append(cls.getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(cls)));
        sb.append(" id=");
        sb.append(this.g);
        sb.append("}");
        return sb.toString();
    }
}
