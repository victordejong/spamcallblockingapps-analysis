package p078c.p122d.p123a;

import com.liulishuo.filedownloader.message.C9372c;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.C9380b;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.io.File;
import java.io.IOException;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import p078c.p122d.p123a.AbstractC1978a;
import p078c.p122d.p123a.AbstractC2066x;
import p078c.p122d.p123a.p128i0.C2031c;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: c.d.a.d */
/* loaded from: classes2-dex2jar.jar:c/d/a/d.class */
public class C1990d implements AbstractC2066x, AbstractC2066x.AbstractC2068b, AbstractC2066x.AbstractC2067a, AbstractC1978a.AbstractC1982d {

    /* renamed from: a */
    private AbstractC2062t f7099a;

    /* renamed from: b */
    private final Object f7100b;

    /* renamed from: c */
    private final AbstractC1991a f7101c;

    /* renamed from: f */
    private final AbstractC2061s f7104f;

    /* renamed from: g */
    private final AbstractC2060r f7105g;

    /* renamed from: h */
    private long f7106h;

    /* renamed from: i */
    private long f7107i;

    /* renamed from: j */
    private int f7108j;

    /* renamed from: k */
    private boolean f7109k;

    /* renamed from: l */
    private boolean f7110l;

    /* renamed from: m */
    private String f7111m;

    /* renamed from: d */
    private volatile byte f7102d = (byte) 0;

    /* renamed from: e */
    private Throwable f7103e = null;

    /* renamed from: n */
    private boolean f7112n = false;

    /* renamed from: c.d.a.d$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/d$a.class */
    public interface AbstractC1991a {
        /* renamed from: E */
        FileDownloadHeader mo28354E();

        /* renamed from: a */
        void mo28353a(String str);

        /* renamed from: s */
        AbstractC1978a.AbstractC1980b mo28352s();

        /* renamed from: w */
        ArrayList<AbstractC1978a.AbstractC1979a> mo28351w();
    }

    public C1990d(AbstractC1991a abstractC1991a, Object obj) {
        this.f7100b = obj;
        this.f7101c = abstractC1991a;
        C1984b c1984b = new C1984b();
        this.f7104f = c1984b;
        this.f7105g = c1984b;
        this.f7099a = new C2045k(abstractC1991a.mo28352s(), this);
    }

    /* renamed from: q */
    private int m28357q() {
        return this.f7101c.mo28352s().mo28398J().getId();
    }

    /* renamed from: r */
    private void m28356r() {
        File file;
        AbstractC1978a mo28398J = this.f7101c.mo28352s().mo28398J();
        if (mo28398J.getPath() == null) {
            mo28398J.mo28380h(C2040f.m28199v(mo28398J.mo28374n()));
            if (C2036d.f7151a) {
                C2036d.m28253a(this, "save Path is null to %s", mo28398J.getPath());
            }
        }
        if (mo28398J.mo28400H()) {
            file = new File(mo28398J.getPath());
        } else {
            String m28241A = C2040f.m28241A(mo28398J.getPath());
            if (m28241A == null) {
                throw new InvalidParameterException(C2040f.m28206o("the provided mPath[%s] is invalid, can't find its directory", mo28398J.getPath()));
            }
            file = new File(m28241A);
        }
        if (file.exists() || file.mkdirs() || file.exists()) {
            return;
        }
        throw new IOException(C2040f.m28206o("Create parent directory failed, please make sure you have permission to create file or directory on the path: %s", file.getAbsolutePath()));
    }

    /* renamed from: s */
    private void m28355s(MessageSnapshot messageSnapshot) {
        AbstractC1978a mo28398J = this.f7101c.mo28352s().mo28398J();
        byte mo886k = messageSnapshot.mo886k();
        this.f7102d = mo886k;
        this.f7109k = messageSnapshot.m900m();
        if (mo886k == -4) {
            this.f7104f.mo28148a();
            int m28286c = C2021h.m28284e().m28286c(mo28398J.getId());
            if (m28286c + ((m28286c > 1 || !mo28398J.mo28400H()) ? 0 : C2021h.m28284e().m28286c(C2040f.m28203r(mo28398J.mo28374n(), mo28398J.mo28378j()))) <= 1) {
                byte mo28130e0 = C2048m.m28171c().mo28130e0(mo28398J.getId());
                C2036d.m28245i(this, "warn, but no mListener to receive, switch to pending %d %d", Integer.valueOf(mo28398J.getId()), Integer.valueOf(mo28130e0));
                if (C9380b.m824a(mo28130e0)) {
                    this.f7102d = (byte) 1;
                    this.f7107i = messageSnapshot.mo896g();
                    long mo897f = messageSnapshot.mo897f();
                    this.f7106h = mo897f;
                    this.f7104f.mo28146g(mo897f);
                    this.f7099a.mo28143b(((MessageSnapshot.AbstractC9367b) messageSnapshot).mo887a());
                    return;
                }
            }
            C2021h.m28284e().m28281h(this.f7101c.mo28352s(), messageSnapshot);
        } else if (mo886k == -3) {
            this.f7112n = messageSnapshot.mo895o();
            this.f7106h = messageSnapshot.mo896g();
            this.f7107i = messageSnapshot.mo896g();
            C2021h.m28284e().m28281h(this.f7101c.mo28352s(), messageSnapshot);
        } else if (mo886k == -1) {
            this.f7103e = messageSnapshot.mo891l();
            this.f7106h = messageSnapshot.mo897f();
            C2021h.m28284e().m28281h(this.f7101c.mo28352s(), messageSnapshot);
        } else if (mo886k == 1) {
            this.f7106h = messageSnapshot.mo897f();
            this.f7107i = messageSnapshot.mo896g();
            this.f7099a.mo28143b(messageSnapshot);
        } else if (mo886k == 2) {
            this.f7107i = messageSnapshot.mo896g();
            this.f7110l = messageSnapshot.mo892n();
            this.f7111m = messageSnapshot.mo894c();
            String mo893d = messageSnapshot.mo893d();
            if (mo893d != null) {
                if (mo28398J.mo28393O() != null) {
                    C2036d.m28245i(this, "already has mFilename[%s], but assign mFilename[%s] again", mo28398J.mo28393O(), mo893d);
                }
                this.f7101c.mo28353a(mo893d);
            }
            this.f7104f.mo28146g(this.f7106h);
            this.f7099a.mo28137h(messageSnapshot);
        } else if (mo886k == 3) {
            this.f7106h = messageSnapshot.mo897f();
            this.f7104f.mo28145h(messageSnapshot.mo897f());
            this.f7099a.mo28139f(messageSnapshot);
        } else if (mo886k != 5) {
            if (mo886k != 6) {
                return;
            }
            this.f7099a.mo28133l(messageSnapshot);
        } else {
            this.f7106h = messageSnapshot.mo897f();
            this.f7103e = messageSnapshot.mo891l();
            this.f7108j = messageSnapshot.mo888h();
            this.f7104f.mo28148a();
            this.f7099a.mo28140e(messageSnapshot);
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2066x.AbstractC2067a
    /* renamed from: a */
    public boolean mo28116a(MessageSnapshot messageSnapshot) {
        if (this.f7101c.mo28352s().mo28398J().mo28400H() && messageSnapshot.mo886k() == -4 && mo28120e() == 2) {
            m28355s(messageSnapshot);
            return true;
        }
        return false;
    }

    @Override // p078c.p122d.p123a.AbstractC2066x
    /* renamed from: b */
    public void mo28123b() {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "free the task %d, when the status is %d", Integer.valueOf(m28357q()), Byte.valueOf(this.f7102d));
        }
        this.f7102d = (byte) 0;
    }

    @Override // p078c.p122d.p123a.AbstractC2066x
    /* renamed from: c */
    public int mo28122c() {
        return this.f7108j;
    }

    @Override // p078c.p122d.p123a.AbstractC2066x
    /* renamed from: d */
    public Throwable mo28121d() {
        return this.f7103e;
    }

    @Override // p078c.p122d.p123a.AbstractC2066x
    /* renamed from: e */
    public byte mo28120e() {
        return this.f7102d;
    }

    @Override // p078c.p122d.p123a.AbstractC2066x.AbstractC2067a
    /* renamed from: f */
    public AbstractC2062t mo28115f() {
        return this.f7099a;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1982d
    /* renamed from: g */
    public void mo28360g() {
        AbstractC1978a mo28398J = this.f7101c.mo28352s().mo28398J();
        if (C2046l.m28177b()) {
            C2046l.m28178a().m28175b(mo28398J);
        }
        if (C2036d.f7151a) {
            C2036d.m28246h(this, "filedownloader:lifecycle:over %s by %d ", toString(), Byte.valueOf(mo28120e()));
        }
        this.f7104f.mo28147f(this.f7106h);
        if (this.f7101c.mo28351w() != null) {
            ArrayList arrayList = (ArrayList) this.f7101c.mo28351w().clone();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC1978a.AbstractC1979a) arrayList.get(i)).m28413a(mo28398J);
            }
        }
        C2058q.m28155d().m28154e().mo28108c(this.f7101c.mo28352s());
    }

    @Override // p078c.p122d.p123a.AbstractC2066x.AbstractC2067a
    /* renamed from: h */
    public boolean mo28114h(MessageSnapshot messageSnapshot) {
        if (C9380b.m823b(mo28120e(), messageSnapshot.mo886k())) {
            m28355s(messageSnapshot);
            return true;
        } else if (!C2036d.f7151a) {
            return false;
        } else {
            C2036d.m28253a(this, "can't update mStatus change by keep ahead, %d, but the current mStatus is %d, %d", Byte.valueOf(this.f7102d), Byte.valueOf(mo28120e()), Integer.valueOf(m28357q()));
            return false;
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2066x
    /* renamed from: i */
    public void mo28119i() {
        boolean z;
        synchronized (this.f7100b) {
            if (this.f7102d != 0) {
                C2036d.m28245i(this, "High concurrent cause, this task %d will not input to launch pool, because of the status isn't idle : %d", Integer.valueOf(m28357q()), Byte.valueOf(this.f7102d));
                return;
            }
            this.f7102d = (byte) 10;
            AbstractC1978a.AbstractC1980b mo28352s = this.f7101c.mo28352s();
            AbstractC1978a mo28398J = mo28352s.mo28398J();
            if (C2046l.m28177b()) {
                C2046l.m28178a().m28176a(mo28398J);
            }
            if (C2036d.f7151a) {
                C2036d.m28246h(this, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]", mo28398J.mo28374n(), mo28398J.getPath(), mo28398J.mo28364z(), mo28398J.getTag());
            }
            try {
                m28356r();
                z = true;
            } catch (Throwable th) {
                C2021h.m28284e().m28288a(mo28352s);
                C2021h.m28284e().m28281h(mo28352s, mo28113k(th));
                z = false;
            }
            if (z) {
                C2054p.m28163a().m28162b(this);
            }
            if (!C2036d.f7151a) {
                return;
            }
            C2036d.m28246h(this, "the task[%d] has been into the launch pool.", Integer.valueOf(m28357q()));
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2066x
    /* renamed from: j */
    public long mo28118j() {
        return this.f7106h;
    }

    @Override // p078c.p122d.p123a.AbstractC2066x.AbstractC2067a
    /* renamed from: k */
    public MessageSnapshot mo28113k(Throwable th) {
        this.f7102d = (byte) (-1);
        this.f7103e = th;
        return C9372c.m880b(m28357q(), mo28118j(), th);
    }

    @Override // p078c.p122d.p123a.AbstractC2066x
    /* renamed from: l */
    public long mo28117l() {
        return this.f7107i;
    }

    @Override // p078c.p122d.p123a.AbstractC2066x.AbstractC2067a
    /* renamed from: m */
    public boolean mo28112m(MessageSnapshot messageSnapshot) {
        if (!C9380b.m821d(this.f7101c.mo28352s().mo28398J())) {
            return false;
        }
        m28355s(messageSnapshot);
        return true;
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1982d
    /* renamed from: n */
    public void mo28359n() {
        if (!C2046l.m28177b() || mo28120e() != 6) {
            return;
        }
        C2046l.m28178a().m28173d(this.f7101c.mo28352s().mo28398J());
    }

    @Override // p078c.p122d.p123a.AbstractC2066x.AbstractC2067a
    /* renamed from: o */
    public boolean mo28111o(MessageSnapshot messageSnapshot) {
        byte mo28120e = mo28120e();
        byte mo886k = messageSnapshot.mo886k();
        if (-2 == mo28120e && C9380b.m824a(mo886k)) {
            if (!C2036d.f7151a) {
                return true;
            }
            C2036d.m28253a(this, "High concurrent cause, callback pending, but has already be paused %d", Integer.valueOf(m28357q()));
            return true;
        } else if (C9380b.m822c(mo28120e, mo886k)) {
            m28355s(messageSnapshot);
            return true;
        } else if (!C2036d.f7151a) {
            return false;
        } else {
            C2036d.m28253a(this, "can't update mStatus change by keep flow, %d, but the current mStatus is %d, %d", Byte.valueOf(this.f7102d), Byte.valueOf(mo28120e()), Integer.valueOf(m28357q()));
            return false;
        }
    }

    @Override // p078c.p122d.p123a.AbstractC1978a.AbstractC1982d
    /* renamed from: p */
    public void mo28358p() {
        if (C2046l.m28177b()) {
            C2046l.m28178a().m28174c(this.f7101c.mo28352s().mo28398J());
        }
        if (C2036d.f7151a) {
            C2036d.m28246h(this, "filedownloader:lifecycle:start %s by %d ", toString(), Byte.valueOf(mo28120e()));
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2066x.AbstractC2068b
    public void start() {
        if (this.f7102d != 10) {
            C2036d.m28245i(this, "High concurrent cause, this task %d will not start, because the of status isn't toLaunchPool: %d", Integer.valueOf(m28357q()), Byte.valueOf(this.f7102d));
            return;
        }
        AbstractC1978a.AbstractC1980b mo28352s = this.f7101c.mo28352s();
        AbstractC1978a mo28398J = mo28352s.mo28398J();
        AbstractC2064v m28154e = C2058q.m28155d().m28154e();
        try {
            if (m28154e.mo28109b(mo28352s)) {
                return;
            }
            synchronized (this.f7100b) {
                if (this.f7102d != 10) {
                    C2036d.m28245i(this, "High concurrent cause, this task %d will not start, the status can't assign to toFileDownloadService, because the status isn't toLaunchPool: %d", Integer.valueOf(m28357q()), Byte.valueOf(this.f7102d));
                    return;
                }
                this.f7102d = (byte) 11;
                C2021h.m28284e().m28288a(mo28352s);
                if (C2031c.m28259d(mo28398J.getId(), mo28398J.mo28378j(), mo28398J.mo28403D(), true)) {
                    return;
                }
                boolean mo28129f0 = C2048m.m28171c().mo28129f0(mo28398J.mo28374n(), mo28398J.getPath(), mo28398J.mo28400H(), mo28398J.mo28404C(), mo28398J.mo28371q(), mo28398J.mo28368u(), mo28398J.mo28403D(), this.f7101c.mo28354E(), mo28398J.mo28370r());
                if (this.f7102d == -2) {
                    C2036d.m28245i(this, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied", Integer.valueOf(m28357q()));
                    if (!mo28129f0) {
                        return;
                    }
                    C2048m.m28171c().mo28128l0(m28357q());
                } else if (mo28129f0) {
                    m28154e.mo28108c(mo28352s);
                } else if (m28154e.mo28109b(mo28352s)) {
                } else {
                    MessageSnapshot mo28113k = mo28113k(new RuntimeException("Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."));
                    if (C2021h.m28284e().m28282g(mo28352s)) {
                        m28154e.mo28108c(mo28352s);
                        C2021h.m28284e().m28288a(mo28352s);
                    }
                    C2021h.m28284e().m28281h(mo28352s, mo28113k);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
            C2021h.m28284e().m28281h(mo28352s, mo28113k(th));
        }
    }
}
