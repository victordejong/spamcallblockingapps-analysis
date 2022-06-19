package androidx.p039h.p041b;

import androidx.core.p022f.C0495a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.h.b.a */
/* loaded from: classes-dex2jar.jar:androidx/h/b/a.class */
public class C0766a<D> {

    /* renamed from: a */
    int f2522a;

    /* renamed from: b */
    AbstractC0767a<D> f2523b;

    /* renamed from: c */
    boolean f2524c;

    /* renamed from: d */
    boolean f2525d;

    /* renamed from: e */
    boolean f2526e;

    /* renamed from: f */
    boolean f2527f;

    /* renamed from: g */
    boolean f2528g;

    /* renamed from: androidx.h.b.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/h/b/a$a.class */
    public interface AbstractC0767a<D> {
    }

    /* renamed from: a */
    public String m5390a(D d) {
        StringBuilder sb = new StringBuilder(64);
        C0495a.m6470a(d, sb);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: a */
    public final void m5392a() {
        this.f2524c = true;
        this.f2526e = false;
        this.f2525d = false;
        m5388b();
    }

    /* renamed from: a */
    public void m5391a(AbstractC0767a<D> abstractC0767a) {
        AbstractC0767a<D> abstractC0767a2 = this.f2523b;
        if (abstractC0767a2 != null) {
            if (abstractC0767a2 != abstractC0767a) {
                throw new IllegalArgumentException("Attempting to unregister the wrong listener");
            }
            this.f2523b = null;
            return;
        }
        throw new IllegalStateException("No listener register");
    }

    @Deprecated
    /* renamed from: a */
    public void m5389a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f2522a);
        printWriter.print(" mListener=");
        printWriter.println(this.f2523b);
        if (this.f2524c || this.f2527f || this.f2528g) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f2524c);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f2527f);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f2528g);
        }
        if (this.f2525d || this.f2526e) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f2525d);
            printWriter.print(" mReset=");
            printWriter.println(this.f2526e);
        }
    }

    /* renamed from: b */
    protected void m5388b() {
    }

    /* renamed from: c */
    public boolean m5387c() {
        return m5386d();
    }

    /* renamed from: d */
    protected boolean m5386d() {
        return false;
    }

    /* renamed from: e */
    public void m5385e() {
        this.f2524c = false;
        m5384f();
    }

    /* renamed from: f */
    protected void m5384f() {
    }

    /* renamed from: g */
    public void m5383g() {
        this.f2525d = true;
        m5382h();
    }

    /* renamed from: h */
    protected void m5382h() {
    }

    /* renamed from: i */
    public void m5381i() {
        m5380j();
        this.f2526e = true;
        this.f2524c = false;
        this.f2525d = false;
        this.f2527f = false;
        this.f2528g = false;
    }

    /* renamed from: j */
    protected void m5380j() {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        C0495a.m6470a(this, sb);
        sb.append(" id=");
        sb.append(this.f2522a);
        sb.append("}");
        return sb.toString();
    }
}
