package androidx.p037g.p039b;

import android.content.Context;
import androidx.core.p025g.C0519a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.g.b.b */
/* loaded from: classes-dex2jar.jar:androidx/g/b/b.class */
public class C0723b<D> {

    /* renamed from: f */
    int f2586f;

    /* renamed from: g */
    AbstractC0725b<D> f2587g;

    /* renamed from: h */
    AbstractC0724a<D> f2588h;

    /* renamed from: i */
    Context f2589i;

    /* renamed from: j */
    boolean f2590j = false;

    /* renamed from: k */
    boolean f2591k = false;

    /* renamed from: l */
    boolean f2592l = true;

    /* renamed from: m */
    boolean f2593m = false;

    /* renamed from: n */
    boolean f2594n = false;

    /* renamed from: androidx.g.b.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/g/b/b$a.class */
    public interface AbstractC0724a<D> {
        /* renamed from: a */
        void m19552a(C0723b<D> c0723b);
    }

    /* renamed from: androidx.g.b.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/g/b/b$b.class */
    public interface AbstractC0725b<D> {
        /* renamed from: a */
        void mo19551a(C0723b<D> c0723b, D d);
    }

    public C0723b(Context context) {
        this.f2589i = context.getApplicationContext();
    }

    /* renamed from: a */
    public void mo19573a() {
    }

    /* renamed from: a */
    public void m19572a(int i, AbstractC0725b<D> abstractC0725b) {
        if (this.f2587g != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        this.f2587g = abstractC0725b;
        this.f2586f = i;
    }

    /* renamed from: a */
    public void m19571a(AbstractC0725b<D> abstractC0725b) {
        if (this.f2587g == null) {
            throw new IllegalStateException("No listener register");
        }
        if (this.f2587g != abstractC0725b) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        this.f2587g = null;
    }

    @Deprecated
    /* renamed from: a */
    public void mo19570a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f2586f);
        printWriter.print(" mListener=");
        printWriter.println(this.f2587g);
        if (this.f2590j || this.f2593m || this.f2594n) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f2590j);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f2593m);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f2594n);
        }
        if (this.f2591k || this.f2592l) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f2591k);
            printWriter.print(" mReset=");
            printWriter.println(this.f2592l);
        }
    }

    /* renamed from: b */
    public void m19568b(D d) {
        if (this.f2587g != null) {
            this.f2587g.mo19551a(this, d);
        }
    }

    /* renamed from: b */
    protected boolean mo19569b() {
        return false;
    }

    /* renamed from: c */
    public String m19567c(D d) {
        StringBuilder sb = new StringBuilder(64);
        C0519a.m20650a(d, sb);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: g */
    public void m19566g() {
        if (this.f2588h != null) {
            this.f2588h.m19552a(this);
        }
    }

    /* renamed from: h */
    public boolean m19565h() {
        return this.f2591k;
    }

    /* renamed from: i */
    public final void m19564i() {
        this.f2590j = true;
        this.f2592l = false;
        this.f2591k = false;
        mo14518j();
    }

    /* renamed from: j */
    protected void mo14518j() {
    }

    /* renamed from: k */
    public boolean m19563k() {
        return mo19569b();
    }

    /* renamed from: l */
    public void m19562l() {
        mo19573a();
    }

    /* renamed from: m */
    public void m19561m() {
        this.f2590j = false;
        m19560n();
    }

    /* renamed from: n */
    protected void m19560n() {
    }

    /* renamed from: o */
    public void m19559o() {
        this.f2591k = true;
        m19558p();
    }

    /* renamed from: p */
    protected void m19558p() {
    }

    /* renamed from: q */
    public void m19557q() {
        m19556r();
        this.f2592l = true;
        this.f2590j = false;
        this.f2591k = false;
        this.f2593m = false;
        this.f2594n = false;
    }

    /* renamed from: r */
    protected void m19556r() {
    }

    /* renamed from: s */
    public void m19555s() {
        this.f2594n = false;
    }

    /* renamed from: t */
    public void m19554t() {
        if (this.f2594n) {
            m19553u();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        C0519a.m20650a(this, sb);
        sb.append(" id=");
        sb.append(this.f2586f);
        sb.append("}");
        return sb.toString();
    }

    /* renamed from: u */
    public void m19553u() {
        if (this.f2590j) {
            m19562l();
        } else {
            this.f2593m = true;
        }
    }
}
