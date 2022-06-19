package androidx.loader.content;

import android.content.Context;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p020b.p041h.p049k.C1591b;
/* renamed from: androidx.loader.content.b */
/* loaded from: classes-dex2jar.jar:androidx/loader/content/b.class */
public class C0833b<D> {

    /* renamed from: a */
    int f3768a;

    /* renamed from: b */
    AbstractC0835b<D> f3769b;

    /* renamed from: c */
    AbstractC0834a<D> f3770c;

    /* renamed from: d */
    Context f3771d;

    /* renamed from: e */
    boolean f3772e = false;

    /* renamed from: f */
    boolean f3773f = false;

    /* renamed from: g */
    boolean f3774g = true;

    /* renamed from: h */
    boolean f3775h = false;

    /* renamed from: i */
    boolean f3776i = false;

    /* renamed from: androidx.loader.content.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/b$a.class */
    public interface AbstractC0834a<D> {
        /* renamed from: a */
        void m32300a(C0833b<D> c0833b);
    }

    /* renamed from: androidx.loader.content.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/loader/content/b$b.class */
    public interface AbstractC0835b<D> {
        /* renamed from: a */
        void mo28964a(C0833b<D> c0833b, D d);
    }

    public C0833b(Context context) {
        this.f3771d = context.getApplicationContext();
    }

    /* renamed from: a */
    public void m32321a() {
        this.f3773f = true;
        m32312j();
    }

    /* renamed from: b */
    public boolean m32320b() {
        return mo32311k();
    }

    /* renamed from: c */
    public void m32319c() {
        this.f3776i = false;
    }

    /* renamed from: d */
    public String m32318d(D d) {
        StringBuilder sb = new StringBuilder(64);
        C1591b.m29669a(d, sb);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: e */
    public void m32317e() {
        AbstractC0834a<D> abstractC0834a = this.f3770c;
        if (abstractC0834a != null) {
            abstractC0834a.m32300a(this);
        }
    }

    /* renamed from: f */
    public void m32316f(D d) {
        AbstractC0835b<D> abstractC0835b = this.f3769b;
        if (abstractC0835b != null) {
            abstractC0835b.mo28964a(this, d);
        }
    }

    @Deprecated
    /* renamed from: g */
    public void mo32315g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f3768a);
        printWriter.print(" mListener=");
        printWriter.println(this.f3769b);
        if (this.f3772e || this.f3775h || this.f3776i) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f3772e);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f3775h);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f3776i);
        }
        if (this.f3773f || this.f3774g) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f3773f);
            printWriter.print(" mReset=");
            printWriter.println(this.f3774g);
        }
    }

    /* renamed from: h */
    public void m32314h() {
        mo32309m();
    }

    /* renamed from: i */
    public boolean m32313i() {
        return this.f3773f;
    }

    /* renamed from: j */
    protected void m32312j() {
    }

    /* renamed from: k */
    protected boolean mo32311k() {
        throw null;
    }

    /* renamed from: l */
    public void m32310l() {
        if (this.f3772e) {
            m32314h();
        } else {
            this.f3775h = true;
        }
    }

    /* renamed from: m */
    public void mo32309m() {
    }

    /* renamed from: n */
    protected void m32308n() {
    }

    /* renamed from: o */
    protected void mo17589o() {
        throw null;
    }

    /* renamed from: p */
    protected void m32307p() {
    }

    /* renamed from: q */
    public void m32306q(int i, AbstractC0835b<D> abstractC0835b) {
        if (this.f3769b == null) {
            this.f3769b = abstractC0835b;
            this.f3768a = i;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    /* renamed from: r */
    public void m32305r() {
        m32308n();
        this.f3774g = true;
        this.f3772e = false;
        this.f3773f = false;
        this.f3775h = false;
        this.f3776i = false;
    }

    /* renamed from: s */
    public void m32304s() {
        if (this.f3776i) {
            m32310l();
        }
    }

    /* renamed from: t */
    public final void m32303t() {
        this.f3772e = true;
        this.f3774g = false;
        this.f3773f = false;
        mo17589o();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        C1591b.m29669a(this, sb);
        sb.append(" id=");
        sb.append(this.f3768a);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: u */
    public void m32302u() {
        this.f3772e = false;
        m32307p();
    }

    /* renamed from: v */
    public void m32301v(AbstractC0835b<D> abstractC0835b) {
        AbstractC0835b<D> abstractC0835b2 = this.f3769b;
        if (abstractC0835b2 != null) {
            if (abstractC0835b2 != abstractC0835b) {
                throw new IllegalArgumentException("Attempting to unregister the wrong listener");
            }
            this.f3769b = null;
            return;
        }
        throw new IllegalStateException("No listener register");
    }
}
