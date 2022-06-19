package p092e.p096e.p097a;

import com.liulishuo.filedownloader.message.C2767c;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.C2775b;
import com.liulishuo.filedownloader.model.FileDownloadHeader;
import java.io.File;
import java.io.IOException;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import p092e.p096e.p097a.AbstractC3005a;
import p092e.p096e.p097a.AbstractC3092w;
import p092e.p096e.p097a.p102h0.C3056c;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: e.e.a.d */
/* loaded from: classes2-dex2jar.jar:e/e/a/d.class */
public class C3017d implements AbstractC3092w, AbstractC3092w.AbstractC3094b, AbstractC3092w.AbstractC3093a, AbstractC3005a.AbstractC3009d {

    /* renamed from: a */
    private AbstractC3088s f12634a;

    /* renamed from: b */
    private final Object f12635b;

    /* renamed from: c */
    private final AbstractC3018a f12636c;

    /* renamed from: d */
    private volatile byte f12637d = (byte) 0;

    /* renamed from: e */
    private Throwable f12638e = null;

    /* renamed from: f */
    private final AbstractC3087r f12639f = new C3011b();

    /* renamed from: g */
    private long f12640g;

    /* renamed from: h */
    private long f12641h;

    /* renamed from: i */
    private int f12642i;

    /* renamed from: e.e.a.d$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/d$a.class */
    public interface AbstractC3018a {
        /* renamed from: D */
        FileDownloadHeader mo530D();

        /* renamed from: P */
        AbstractC3005a.AbstractC3007b mo529P();

        /* renamed from: j */
        void mo528j(String str);

        /* renamed from: m */
        ArrayList<AbstractC3005a.AbstractC3006a> mo527m();
    }

    public C3017d(AbstractC3018a abstractC3018a, Object obj) {
        this.f12635b = obj;
        this.f12636c = abstractC3018a;
        this.f12634a = new C3072k(abstractC3018a.mo529P(), this);
    }

    /* renamed from: q */
    private int m533q() {
        return this.f12636c.mo529P().mo573J().mo577F();
    }

    /* renamed from: r */
    private void m532r() {
        File file;
        AbstractC3005a mo573J = this.f12636c.mo529P().mo573J();
        if (mo573J.mo555g() == null) {
            mo573J.mo551l(C3066f.m360v(mo573J.mo540x()));
            if (C3062d.f12682a) {
                C3062d.m414a(this, "save Path is null to %s", mo573J.mo555g());
            }
        }
        if (mo573J.mo575H()) {
            file = new File(mo573J.mo555g());
        } else {
            String m402A = C3066f.m402A(mo573J.mo555g());
            if (m402A == null) {
                throw new InvalidParameterException(C3066f.m367o("the provided mPath[%s] is invalid, can't find its directory", mo573J.mo555g()));
            }
            file = new File(m402A);
        }
        if (file.exists() || file.mkdirs() || file.exists()) {
            return;
        }
        throw new IOException(C3066f.m367o("Create parent directory failed, please make sure you have permission to create file or directory on the path: %s", file.getAbsolutePath()));
    }

    /* renamed from: s */
    private void m531s(MessageSnapshot messageSnapshot) {
        AbstractC3088s abstractC3088s;
        AbstractC3005a mo573J = this.f12636c.mo529P().mo573J();
        byte mo1841m = messageSnapshot.mo1841m();
        this.f12637d = mo1841m;
        messageSnapshot.m1855o();
        if (mo1841m == -4) {
            this.f12639f.mo290d();
            int m442c = C3050h.m440e().m442c(mo573J.mo577F());
            if (m442c + ((m442c > 1 || !mo573J.mo575H()) ? 0 : C3050h.m440e().m442c(C3066f.m364r(mo573J.mo540x(), mo573J.mo547q()))) <= 1) {
                byte mo276f0 = C3075m.m321b().mo276f0(mo573J.mo577F());
                C3062d.m406i(this, "warn, but no mListener to receive, switch to pending %d %d", Integer.valueOf(mo573J.mo577F()), Integer.valueOf(mo276f0));
                if (C2775b.m1779a(mo276f0)) {
                    this.f12637d = (byte) 1;
                    this.f12641h = messageSnapshot.mo1851g();
                    long mo1852f = messageSnapshot.mo1852f();
                    this.f12640g = mo1852f;
                    this.f12639f.mo292b(mo1852f);
                    abstractC3088s = this.f12634a;
                    messageSnapshot = ((MessageSnapshot.AbstractC2762b) messageSnapshot).mo1842a();
                    abstractC3088s.mo283g(messageSnapshot);
                    return;
                }
            }
            C3050h.m440e().m437h(this.f12636c.mo529P(), messageSnapshot);
        }
        if (mo1841m == -3) {
            messageSnapshot.mo1850q();
            this.f12640g = messageSnapshot.mo1851g();
            this.f12641h = messageSnapshot.mo1851g();
        } else if (mo1841m != -1) {
            if (mo1841m == 1) {
                this.f12640g = messageSnapshot.mo1852f();
                this.f12641h = messageSnapshot.mo1851g();
                abstractC3088s = this.f12634a;
                abstractC3088s.mo283g(messageSnapshot);
                return;
            } else if (mo1841m == 2) {
                this.f12641h = messageSnapshot.mo1851g();
                messageSnapshot.mo1847p();
                messageSnapshot.mo1849c();
                String mo1848d = messageSnapshot.mo1848d();
                if (mo1848d != null) {
                    if (mo573J.getFilename() != null) {
                        C3062d.m406i(this, "already has mFilename[%s], but assign mFilename[%s] again", mo573J.getFilename(), mo1848d);
                    }
                    this.f12636c.mo528j(mo1848d);
                }
                this.f12639f.mo292b(this.f12640g);
                this.f12634a.mo289a(messageSnapshot);
                return;
            } else if (mo1841m == 3) {
                this.f12640g = messageSnapshot.mo1852f();
                this.f12639f.mo291c(messageSnapshot.mo1852f());
                this.f12634a.mo279k(messageSnapshot);
                return;
            } else if (mo1841m != 5) {
                if (mo1841m != 6) {
                    return;
                }
                this.f12634a.mo285e(messageSnapshot);
                return;
            } else {
                this.f12640g = messageSnapshot.mo1852f();
                this.f12638e = messageSnapshot.mo1846n();
                this.f12642i = messageSnapshot.mo1843h();
                this.f12639f.mo290d();
                this.f12634a.mo280j(messageSnapshot);
                return;
            }
        } else {
            this.f12638e = messageSnapshot.mo1846n();
            this.f12640g = messageSnapshot.mo1852f();
        }
        C3050h.m440e().m437h(this.f12636c.mo529P(), messageSnapshot);
    }

    @Override // p092e.p096e.p097a.AbstractC3092w.AbstractC3093a
    /* renamed from: a */
    public boolean mo258a(MessageSnapshot messageSnapshot) {
        if (this.f12636c.mo529P().mo573J().mo575H() && messageSnapshot.mo1841m() == -4 && mo262e() == 2) {
            m531s(messageSnapshot);
            return true;
        }
        return false;
    }

    @Override // p092e.p096e.p097a.AbstractC3092w
    /* renamed from: b */
    public void mo265b() {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "free the task %d, when the status is %d", Integer.valueOf(m533q()), Byte.valueOf(this.f12637d));
        }
        this.f12637d = (byte) 0;
    }

    @Override // p092e.p096e.p097a.AbstractC3092w
    /* renamed from: c */
    public Throwable mo264c() {
        return this.f12638e;
    }

    @Override // p092e.p096e.p097a.AbstractC3092w
    /* renamed from: d */
    public int mo263d() {
        return this.f12642i;
    }

    @Override // p092e.p096e.p097a.AbstractC3092w
    /* renamed from: e */
    public byte mo262e() {
        return this.f12637d;
    }

    @Override // p092e.p096e.p097a.AbstractC3092w.AbstractC3093a
    /* renamed from: f */
    public AbstractC3088s mo257f() {
        return this.f12634a;
    }

    @Override // p092e.p096e.p097a.AbstractC3092w.AbstractC3093a
    /* renamed from: g */
    public boolean mo256g(MessageSnapshot messageSnapshot) {
        if (!C2775b.m1776d(this.f12636c.mo529P().mo573J())) {
            return false;
        }
        m531s(messageSnapshot);
        return true;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3009d
    /* renamed from: h */
    public void mo536h() {
        AbstractC3005a mo573J = this.f12636c.mo529P().mo573J();
        if (C3073l.m327b()) {
            C3073l.m328a().m323d(mo573J);
        }
        if (C3062d.f12682a) {
            C3062d.m407h(this, "filedownloader:lifecycle:over %s by %d ", toString(), Byte.valueOf(mo262e()));
        }
        this.f12639f.mo293a(this.f12640g);
        if (this.f12636c.mo527m() != null) {
            ArrayList arrayList = (ArrayList) this.f12636c.mo527m().clone();
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((AbstractC3005a.AbstractC3006a) arrayList.get(i)).m589a(mo573J);
            }
        }
        C3085q.m300d().m299e().mo248c(this.f12636c.mo529P());
    }

    @Override // p092e.p096e.p097a.AbstractC3092w.AbstractC3093a
    /* renamed from: i */
    public boolean mo255i(MessageSnapshot messageSnapshot) {
        if (C2775b.m1778b(mo262e(), messageSnapshot.mo1841m())) {
            m531s(messageSnapshot);
            return true;
        } else if (!C3062d.f12682a) {
            return false;
        } else {
            C3062d.m414a(this, "can't update mStatus change by keep ahead, %d, but the current mStatus is %d, %d", Byte.valueOf(this.f12637d), Byte.valueOf(mo262e()), Integer.valueOf(m533q()));
            return false;
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3092w
    /* renamed from: j */
    public void mo261j() {
        boolean z;
        synchronized (this.f12635b) {
            if (this.f12637d != 0) {
                C3062d.m406i(this, "High concurrent cause, this task %d will not input to launch pool, because of the status isn't idle : %d", Integer.valueOf(m533q()), Byte.valueOf(this.f12637d));
                return;
            }
            this.f12637d = (byte) 10;
            AbstractC3005a.AbstractC3007b mo529P = this.f12636c.mo529P();
            AbstractC3005a mo573J = mo529P.mo573J();
            if (C3073l.m327b()) {
                C3073l.m328a().m324c(mo573J);
            }
            if (C3062d.f12682a) {
                C3062d.m407h(this, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]", mo573J.mo540x(), mo573J.mo555g(), mo573J.mo546r(), mo573J.mo561a());
            }
            try {
                m532r();
                z = true;
            } catch (Throwable th) {
                C3050h.m440e().m444a(mo529P);
                C3050h.m440e().m437h(mo529P, mo253n(th));
                z = false;
            }
            if (z) {
                C3081p.m308a().m307b(this);
            }
            if (!C3062d.f12682a) {
                return;
            }
            C3062d.m407h(this, "the task[%d] has been into the launch pool.", Integer.valueOf(m533q()));
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3092w
    /* renamed from: k */
    public long mo260k() {
        return this.f12640g;
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3009d
    /* renamed from: l */
    public void mo535l() {
        if (!C3073l.m327b() || mo262e() != 6) {
            return;
        }
        C3073l.m328a().m325b(this.f12636c.mo529P().mo573J());
    }

    @Override // p092e.p096e.p097a.AbstractC3092w.AbstractC3093a
    /* renamed from: m */
    public boolean mo254m(MessageSnapshot messageSnapshot) {
        byte mo262e = mo262e();
        byte mo1841m = messageSnapshot.mo1841m();
        if (-2 == mo262e && C2775b.m1779a(mo1841m)) {
            if (!C3062d.f12682a) {
                return true;
            }
            C3062d.m414a(this, "High concurrent cause, callback pending, but has already be paused %d", Integer.valueOf(m533q()));
            return true;
        } else if (C2775b.m1777c(mo262e, mo1841m)) {
            m531s(messageSnapshot);
            return true;
        } else if (!C3062d.f12682a) {
            return false;
        } else {
            C3062d.m414a(this, "can't update mStatus change by keep flow, %d, but the current mStatus is %d, %d", Byte.valueOf(this.f12637d), Byte.valueOf(mo262e()), Integer.valueOf(m533q()));
            return false;
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3092w.AbstractC3093a
    /* renamed from: n */
    public MessageSnapshot mo253n(Throwable th) {
        this.f12637d = (byte) (-1);
        this.f12638e = th;
        return C2767c.m1835b(m533q(), mo260k(), th);
    }

    @Override // p092e.p096e.p097a.AbstractC3005a.AbstractC3009d
    /* renamed from: o */
    public void mo534o() {
        if (C3073l.m327b()) {
            C3073l.m328a().m326a(this.f12636c.mo529P().mo573J());
        }
        if (C3062d.f12682a) {
            C3062d.m407h(this, "filedownloader:lifecycle:start %s by %d ", toString(), Byte.valueOf(mo262e()));
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3092w
    /* renamed from: p */
    public long mo259p() {
        return this.f12641h;
    }

    @Override // p092e.p096e.p097a.AbstractC3092w.AbstractC3094b
    public void start() {
        if (this.f12637d != 10) {
            C3062d.m406i(this, "High concurrent cause, this task %d will not start, because the of status isn't toLaunchPool: %d", Integer.valueOf(m533q()), Byte.valueOf(this.f12637d));
            return;
        }
        AbstractC3005a.AbstractC3007b mo529P = this.f12636c.mo529P();
        AbstractC3005a mo573J = mo529P.mo573J();
        AbstractC3090u m299e = C3085q.m300d().m299e();
        try {
            if (m299e.mo250a(mo529P)) {
                return;
            }
            synchronized (this.f12635b) {
                if (this.f12637d != 10) {
                    C3062d.m406i(this, "High concurrent cause, this task %d will not start, the status can't assign to toFileDownloadService, because the status isn't toLaunchPool: %d", Integer.valueOf(m533q()), Byte.valueOf(this.f12637d));
                    return;
                }
                this.f12637d = (byte) 11;
                C3050h.m440e().m444a(mo529P);
                if (C3056c.m423d(mo573J.mo577F(), mo573J.mo547q(), mo573J.mo579C(), true)) {
                    return;
                }
                boolean mo275i0 = C3075m.m321b().mo275i0(mo573J.mo540x(), mo573J.mo555g(), mo573J.mo575H(), mo573J.mo539y(), mo573J.mo580B(), mo573J.mo553i(), mo573J.mo579C(), this.f12636c.mo530D(), mo573J.mo572K());
                if (this.f12637d == -2) {
                    C3062d.m406i(this, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied", Integer.valueOf(m533q()));
                    if (!mo275i0) {
                        return;
                    }
                    C3075m.m321b().mo273v0(m533q());
                } else if (mo275i0) {
                    m299e.mo248c(mo529P);
                } else if (m299e.mo250a(mo529P)) {
                } else {
                    MessageSnapshot mo253n = mo253n(new RuntimeException("Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."));
                    if (C3050h.m440e().m438g(mo529P)) {
                        m299e.mo248c(mo529P);
                        C3050h.m440e().m444a(mo529P);
                    }
                    C3050h.m440e().m437h(mo529P, mo253n);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
            C3050h.m440e().m437h(mo529P, mo253n(th));
        }
    }
}
