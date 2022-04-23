package p092e.p096e.p097a;

import android.text.TextUtils;
import com.liulishuo.filedownloader.model.C2775b;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.io.File;
import java.util.ArrayList;
import p092e.p096e.p097a.AbstractC3005a;
import p092e.p096e.p097a.AbstractC3092w;
import p092e.p096e.p097a.C3017d;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: e.e.a.c */
/* loaded from: classes2-dex2jar.jar:e/e/a/c.class */
public class C3013c implements AbstractC3005a, AbstractC3005a.AbstractC3007b, C3017d.AbstractC3018a {

    /* renamed from: a */
    private final AbstractC3092w f12612a;

    /* renamed from: b */
    private final AbstractC3092w.AbstractC3093a f12613b;

    /* renamed from: c */
    private int f12614c;

    /* renamed from: d */
    private ArrayList<AbstractC3005a.AbstractC3006a> f12615d;

    /* renamed from: e */
    private final String f12616e;

    /* renamed from: f */
    private String f12617f;

    /* renamed from: g */
    private String f12618g;

    /* renamed from: h */
    private boolean f12619h;

    /* renamed from: i */
    private FileDownloadHeader f12620i;

    /* renamed from: j */
    private AbstractC3067i f12621j;

    /* renamed from: k */
    private Object f12622k;

    /* renamed from: t */
    private final Object f12631t;

    /* renamed from: l */
    private int f12623l = 0;

    /* renamed from: m */
    private boolean f12624m = false;

    /* renamed from: n */
    private boolean f12625n = false;

    /* renamed from: o */
    private int f12626o = 100;

    /* renamed from: p */
    private int f12627p = 10;

    /* renamed from: q */
    private boolean f12628q = false;

    /* renamed from: r */
    volatile int f12629r = 0;

    /* renamed from: s */
    private boolean f12630s = false;

    /* renamed from: u */
    private volatile boolean f12632u = false;

    /* renamed from: e.e.a.c$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/c$b.class */
    private static final class C3015b implements AbstractC3005a.AbstractC3008c {

        /* renamed from: a */
        private final C3013c f12633a;

        private C3015b(C3013c cVar) {
            this.f12633a = cVar;
            cVar.f12630s = true;
        }

        @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3008c
        /* renamed from: a */
        public int mo537a() {
            int F = this.f12633a.mo577F();
            if (C3062d.f12682a) {
                C3062d.m414a(this, "add the task[%d] to the queue", Integer.valueOf(F));
            }
            C3050h.m440e().m443b(this.f12633a);
            return F;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3013c(String str) {
        this.f12616e = str;
        Object obj = new Object();
        this.f12631t = obj;
        C3017d dVar = new C3017d(this, obj);
        this.f12612a = dVar;
        this.f12613b = dVar;
    }

    /* renamed from: V */
    private int m562V() {
        if (!m564T()) {
            if (!mo581A()) {
                mo549o();
            }
            this.f12612a.mo261j();
            return mo577F();
        } else if (m565S()) {
            throw new IllegalStateException(C3066f.m367o("This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create", Integer.valueOf(mo577F())));
        } else {
            throw new IllegalStateException("This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again." + this.f12612a.toString());
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: A */
    public boolean mo581A() {
        return this.f12629r != 0;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: B */
    public int mo580B() {
        return this.f12627p;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: C */
    public boolean mo579C() {
        return this.f12628q;
    }

    @Override // p092e.p096e.p097a.C3017d.AbstractC3018a
    /* renamed from: D */
    public FileDownloadHeader mo530D() {
        return this.f12620i;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: E */
    public AbstractC3005a mo578E(int i) {
        this.f12623l = i;
        return this;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: F */
    public int mo577F() {
        int i = this.f12614c;
        if (i != 0) {
            return i;
        }
        if (TextUtils.isEmpty(this.f12617f) || TextUtils.isEmpty(this.f12616e)) {
            return 0;
        }
        int s = C3066f.m363s(this.f12616e, this.f12617f, this.f12619h);
        this.f12614c = s;
        return s;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: G */
    public boolean mo576G() {
        return C2775b.m1775e(mo557e());
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: H */
    public boolean mo575H() {
        return this.f12619h;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: I */
    public AbstractC3005a mo574I(int i) {
        this.f12626o = i;
        return this;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: J */
    public AbstractC3005a mo573J() {
        return this;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: K */
    public boolean mo572K() {
        return this.f12625n;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: L */
    public boolean mo571L() {
        ArrayList<AbstractC3005a.AbstractC3006a> arrayList = this.f12615d;
        return arrayList != null && arrayList.size() > 0;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: M */
    public void mo570M() {
        this.f12632u = true;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: N */
    public boolean mo569N() {
        return this.f12624m;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: O */
    public AbstractC3005a mo568O(int i) {
        this.f12627p = i;
        return this;
    }

    @Override // p092e.p096e.p097a.C3017d.AbstractC3018a
    /* renamed from: P */
    public AbstractC3005a.AbstractC3007b mo529P() {
        return this;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: Q */
    public AbstractC3005a mo567Q(AbstractC3067i iVar) {
        this.f12621j = iVar;
        if (C3062d.f12682a) {
            C3062d.m414a(this, "setListener %s", iVar);
        }
        return this;
    }

    /* renamed from: S */
    public boolean m565S() {
        if (C3085q.m300d().m299e().mo249b(this)) {
            return true;
        }
        return C2775b.m1779a(mo557e());
    }

    /* renamed from: T */
    public boolean m564T() {
        return this.f12612a.mo262e() != 0;
    }

    /* renamed from: U */
    public AbstractC3005a m563U(String str, boolean z) {
        this.f12617f = str;
        if (C3062d.f12682a) {
            C3062d.m414a(this, "setPath %s", str);
        }
        this.f12619h = z;
        this.f12618g = z ? null : new File(str).getName();
        return this;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: a */
    public Object mo561a() {
        return this.f12622k;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: b */
    public void mo560b() {
        this.f12612a.mo265b();
        if (C3050h.m440e().m438g(this)) {
            this.f12632u = false;
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: c */
    public Throwable mo559c() {
        return this.f12612a.mo264c();
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: d */
    public int mo558d() {
        return this.f12612a.mo263d();
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: e */
    public byte mo557e() {
        return this.f12612a.mo262e();
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: f */
    public boolean mo556f(int i) {
        return mo577F() == i;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: g */
    public String mo555g() {
        return this.f12617f;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    public String getFilename() {
        return this.f12618g;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: h */
    public int mo554h() {
        if (this.f12612a.mo259p() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) this.f12612a.mo259p();
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: i */
    public int mo553i() {
        return this.f12623l;
    }

    @Override // p092e.p096e.p097a.C3017d.AbstractC3018a
    /* renamed from: j */
    public void mo528j(String str) {
        this.f12618g = str;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: k */
    public int mo552k() {
        if (this.f12612a.mo260k() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) this.f12612a.mo260k();
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: l */
    public AbstractC3005a mo551l(String str) {
        m563U(str, false);
        return this;
    }

    @Override // p092e.p096e.p097a.C3017d.AbstractC3018a
    /* renamed from: m */
    public ArrayList<AbstractC3005a.AbstractC3006a> mo527m() {
        return this.f12615d;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: n */
    public long mo550n() {
        return this.f12612a.mo259p();
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: o */
    public void mo549o() {
        this.f12629r = mo546r() != null ? mo546r().hashCode() : hashCode();
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: p */
    public void mo548p() {
        m562V();
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: q */
    public String mo547q() {
        return C3066f.m401B(mo555g(), mo575H(), getFilename());
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: r */
    public AbstractC3067i mo546r() {
        return this.f12621j;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: s */
    public int mo545s() {
        return this.f12629r;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    public int start() {
        if (!this.f12630s) {
            return m562V();
        }
        throw new IllegalStateException("If you start the task manually, it means this task doesn't belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn't belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that's all. In other words, If this task doesn't belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically.");
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: t */
    public boolean mo544t() {
        return this.f12632u;
    }

    public String toString() {
        return C3066f.m367o("%d@%s", Integer.valueOf(mo577F()), super.toString());
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: u */
    public AbstractC3005a.AbstractC3008c mo543u() {
        return new C3015b();
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: v */
    public Object mo542v() {
        return this.f12631t;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3007b
    /* renamed from: w */
    public AbstractC3092w.AbstractC3093a mo541w() {
        return this.f12613b;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: x */
    public String mo540x() {
        return this.f12616e;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: y */
    public int mo539y() {
        return this.f12626o;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a
    /* renamed from: z */
    public long mo538z() {
        return this.f12612a.mo260k();
    }
}
