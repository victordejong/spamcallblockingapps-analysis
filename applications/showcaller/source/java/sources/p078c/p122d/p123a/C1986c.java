package p078c.p122d.p123a;

import android.text.TextUtils;
import android.util.SparseArray;
import com.liulishuo.filedownloader.model.C9380b;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.io.File;
import java.util.ArrayList;
import p078c.p122d.p123a.AbstractC1978a;
import p078c.p122d.p123a.AbstractC2066x;
import p078c.p122d.p123a.C1990d;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: c.d.a.c */
/* loaded from: classes2-dex2jar.jar:c/d/a/c.class */
public class C1986c implements AbstractC1978a, AbstractC1978a.AbstractC1980b, C1990d.AbstractC1991a {

    /* renamed from: a */
    private final AbstractC2066x f7074a;

    /* renamed from: b */
    private final AbstractC2066x.AbstractC2067a f7075b;

    /* renamed from: c */
    private int f7076c;

    /* renamed from: d */
    private ArrayList<AbstractC1978a.AbstractC1979a> f7077d;

    /* renamed from: e */
    private final String f7078e;

    /* renamed from: f */
    private String f7079f;

    /* renamed from: g */
    private String f7080g;

    /* renamed from: h */
    private boolean f7081h;

    /* renamed from: i */
    private FileDownloadHeader f7082i;

    /* renamed from: j */
    private AbstractC2027i f7083j;

    /* renamed from: k */
    private SparseArray<Object> f7084k;

    /* renamed from: l */
    private Object f7085l;

    /* renamed from: u */
    private final Object f7094u;

    /* renamed from: m */
    private int f7086m = 0;

    /* renamed from: n */
    private boolean f7087n = false;

    /* renamed from: o */
    private boolean f7088o = false;

    /* renamed from: p */
    private int f7089p = 100;

    /* renamed from: q */
    private int f7090q = 10;

    /* renamed from: r */
    private boolean f7091r = false;

    /* renamed from: s */
    volatile int f7092s = 0;

    /* renamed from: t */
    private boolean f7093t = false;

    /* renamed from: v */
    private final Object f7095v = new Object();

    /* renamed from: w */
    private volatile boolean f7096w = false;

    /* renamed from: c.d.a.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/c$b.class */
    private static final class C1988b implements AbstractC1978a.AbstractC1981c {

        /* renamed from: a */
        private final C1986c f7097a;

        private C1988b(C1986c c1986c) {
            this.f7097a = c1986c;
            c1986c.f7093t = true;
        }

        @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1981c
        /* renamed from: a */
        public int mo28363a() {
            int id = this.f7097a.getId();
            if (C2036d.f7151a) {
                C2036d.m28253a(this, "add the task[%d] to the queue", Integer.valueOf(id));
            }
            C2021h.m28284e().m28287b(this.f7097a);
            return id;
        }
    }

    public C1986c(String str) {
        this.f7078e = str;
        Object obj = new Object();
        this.f7094u = obj;
        C1990d c1990d = new C1990d(this, obj);
        this.f7074a = c1990d;
        this.f7075b = c1990d;
    }

    /* renamed from: U */
    private int m28387U() {
        if (!m28389S()) {
            if (!mo28372p()) {
                mo28365y();
            }
            this.f7074a.mo28119i();
            return getId();
        } else if (m28390R()) {
            throw new IllegalStateException(C2040f.m28206o("This task is running %d, if you want to start the same task, please create a new one by FileDownloader.create", Integer.valueOf(getId())));
        } else {
            throw new IllegalStateException("This task is dirty to restart, If you want to reuse this task, please invoke #reuse method manually and retry to restart again." + this.f7074a.toString());
        }
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: A */
    public boolean mo28406A() {
        return this.f7096w;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: B */
    public Object mo28405B() {
        return this.f7094u;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: C */
    public int mo28404C() {
        return this.f7089p;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: D */
    public boolean mo28403D() {
        return this.f7091r;
    }

    @Override // p078c.p122d.p123a.C1990d.AbstractC1991a
    /* renamed from: E */
    public FileDownloadHeader mo28354E() {
        return this.f7082i;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: F */
    public AbstractC1978a mo28402F(int i) {
        this.f7086m = i;
        return this;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: G */
    public boolean mo28401G() {
        return C9380b.m820e(mo28383e());
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: H */
    public boolean mo28400H() {
        return this.f7081h;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: I */
    public AbstractC1978a mo28399I(int i) {
        this.f7089p = i;
        return this;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: J */
    public AbstractC1978a mo28398J() {
        return this;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: K */
    public boolean mo28397K() {
        ArrayList<AbstractC1978a.AbstractC1979a> arrayList = this.f7077d;
        return arrayList != null && arrayList.size() > 0;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: L */
    public void mo28396L() {
        this.f7096w = true;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: M */
    public boolean mo28395M() {
        return this.f7087n;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: N */
    public AbstractC1978a mo28394N(int i) {
        this.f7090q = i;
        return this;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: O */
    public String mo28393O() {
        return this.f7080g;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: P */
    public AbstractC1978a mo28392P(AbstractC2027i abstractC2027i) {
        this.f7083j = abstractC2027i;
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "setListener %s", abstractC2027i);
        }
        return this;
    }

    /* renamed from: R */
    public boolean m28390R() {
        if (C2058q.m28155d().m28154e().mo28110a(this)) {
            return true;
        }
        return C9380b.m824a(mo28383e());
    }

    /* renamed from: S */
    public boolean m28389S() {
        return this.f7074a.mo28120e() != 0;
    }

    /* renamed from: T */
    public AbstractC1978a m28388T(String str, boolean z) {
        this.f7079f = str;
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "setPath %s", str);
        }
        this.f7081h = z;
        if (z) {
            this.f7080g = null;
        } else {
            this.f7080g = new File(str).getName();
        }
        return this;
    }

    @Override // p078c.p122d.p123a.C1990d.AbstractC1991a
    /* renamed from: a */
    public void mo28353a(String str) {
        this.f7080g = str;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: b */
    public void mo28386b() {
        this.f7074a.mo28123b();
        if (C2021h.m28284e().m28282g(this)) {
            this.f7096w = false;
        }
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: c */
    public int mo28385c() {
        return this.f7074a.mo28122c();
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: d */
    public Throwable mo28384d() {
        return this.f7074a.mo28121d();
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: e */
    public byte mo28383e() {
        return this.f7074a.mo28120e();
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: f */
    public int mo28382f() {
        if (this.f7074a.mo28117l() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) this.f7074a.mo28117l();
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: g */
    public AbstractC1978a mo28381g(int i, Object obj) {
        if (this.f7084k == null) {
            this.f7084k = new SparseArray<>(2);
        }
        this.f7084k.put(i, obj);
        return this;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    public int getId() {
        int i = this.f7076c;
        if (i != 0) {
            return i;
        }
        if (TextUtils.isEmpty(this.f7079f) || TextUtils.isEmpty(this.f7078e)) {
            return 0;
        }
        int m28202s = C2040f.m28202s(this.f7078e, this.f7079f, this.f7081h);
        this.f7076c = m28202s;
        return m28202s;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    public String getPath() {
        return this.f7079f;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    public Object getTag() {
        return this.f7085l;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: h */
    public AbstractC1978a mo28380h(String str) {
        return m28388T(str, false);
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: i */
    public void mo28379i() {
        m28387U();
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: j */
    public String mo28378j() {
        return C2040f.m28240B(getPath(), mo28400H(), mo28393O());
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: k */
    public int mo28377k() {
        return this.f7092s;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: l */
    public AbstractC1978a.AbstractC1981c mo28376l() {
        return new C1988b();
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: m */
    public AbstractC2066x.AbstractC2067a mo28375m() {
        return this.f7075b;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: n */
    public String mo28374n() {
        return this.f7078e;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: o */
    public long mo28373o() {
        return this.f7074a.mo28118j();
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: p */
    public boolean mo28372p() {
        return this.f7092s != 0;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: q */
    public int mo28371q() {
        return this.f7090q;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: r */
    public boolean mo28370r() {
        return this.f7088o;
    }

    @Override // p078c.p122d.p123a.C1990d.AbstractC1991a
    /* renamed from: s */
    public AbstractC1978a.AbstractC1980b mo28352s() {
        return this;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    public int start() {
        if (!this.f7093t) {
            return m28387U();
        }
        throw new IllegalStateException("If you start the task manually, it means this task doesn't belong to a queue, so you must not invoke BaseDownloadTask#ready() or InQueueTask#enqueue() before you start() this method. For detail: If this task doesn't belong to a queue, what is just an isolated task, you just need to invoke BaseDownloadTask#start() to start this task, that's all. In other words, If this task doesn't belong to a queue, you must not invoke BaseDownloadTask#ready() method or InQueueTask#enqueue() method before invoke BaseDownloadTask#start(), If you do that and if there is the same listener object to start a queue in another thread, this task may be assembled by the queue, in that case, when you invoke BaseDownloadTask#start() manually to start this task or this task is started by the queue, there is an exception buried in there, because this task object is started two times without declare BaseDownloadTask#reuse() : 1. you invoke BaseDownloadTask#start() manually;  2. the queue start this task automatically.");
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: t */
    public boolean mo28369t(int i) {
        return getId() == i;
    }

    public String toString() {
        return C2040f.m28206o("%d@%s", Integer.valueOf(getId()), super.toString());
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: u */
    public int mo28368u() {
        return this.f7086m;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: v */
    public int mo28367v() {
        if (this.f7074a.mo28118j() > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) this.f7074a.mo28118j();
    }

    @Override // p078c.p122d.p123a.C1990d.AbstractC1991a
    /* renamed from: w */
    public ArrayList<AbstractC1978a.AbstractC1979a> mo28351w() {
        return this.f7077d;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: x */
    public long mo28366x() {
        return this.f7074a.mo28117l();
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1980b
    /* renamed from: y */
    public void mo28365y() {
        this.f7092s = mo28364z() != null ? mo28364z().hashCode() : hashCode();
    }

    @Override // p078c.p122d.p123a.AbstractC1978a
    /* renamed from: z */
    public AbstractC2027i mo28364z() {
        return this.f7083j;
    }
}
