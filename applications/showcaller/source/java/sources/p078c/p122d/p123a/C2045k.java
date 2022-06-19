package p078c.p122d.p123a;

import com.liulishuo.filedownloader.message.BlockCompleteMessage;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.C9380b;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import p078c.p122d.p123a.AbstractC1978a;
import p078c.p122d.p123a.AbstractC2066x;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: c.d.a.k */
/* loaded from: classes2-dex2jar.jar:c/d/a/k.class */
class C2045k implements AbstractC2062t {

    /* renamed from: a */
    private AbstractC1978a.AbstractC1980b f7176a;

    /* renamed from: b */
    private AbstractC1978a.AbstractC1982d f7177b;

    /* renamed from: c */
    private Queue<MessageSnapshot> f7178c;

    /* renamed from: d */
    private boolean f7179d = false;

    public C2045k(AbstractC1978a.AbstractC1980b abstractC1980b, AbstractC1978a.AbstractC1982d abstractC1982d) {
        m28182n(abstractC1980b, abstractC1982d);
    }

    /* renamed from: n */
    private void m28182n(AbstractC1978a.AbstractC1980b abstractC1980b, AbstractC1978a.AbstractC1982d abstractC1982d) {
        this.f7176a = abstractC1980b;
        this.f7177b = abstractC1982d;
        this.f7178c = new LinkedBlockingQueue();
    }

    /* renamed from: o */
    private void m28181o(int i) {
        if (C9380b.m820e(i)) {
            if (!this.f7178c.isEmpty()) {
                MessageSnapshot peek = this.f7178c.peek();
                C2036d.m28245i(this, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]", this, Integer.valueOf(peek.m901e()), Integer.valueOf(this.f7178c.size()), Byte.valueOf(peek.mo886k()));
            }
            this.f7176a = null;
        }
    }

    /* renamed from: q */
    private void m28179q(MessageSnapshot messageSnapshot) {
        AbstractC1978a.AbstractC1980b abstractC1980b = this.f7176a;
        if (abstractC1980b == null) {
            if (!C2036d.f7151a) {
                return;
            }
            C2036d.m28253a(this, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])", Integer.valueOf(messageSnapshot.m901e()), Byte.valueOf(messageSnapshot.mo886k()));
        } else if (!this.f7179d && abstractC1980b.mo28398J().mo28364z() != null) {
            this.f7178c.offer(messageSnapshot);
            C2041j.m28191d().m28186i(this);
        } else {
            if ((C2046l.m28177b() || this.f7176a.mo28397K()) && messageSnapshot.mo886k() == 4) {
                this.f7177b.mo28360g();
            }
            m28181o(messageSnapshot.mo886k());
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: a */
    public boolean mo28144a() {
        return this.f7176a.mo28398J().mo28395M();
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: b */
    public void mo28143b(MessageSnapshot messageSnapshot) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "notify pending %s", this.f7176a);
        }
        this.f7177b.mo28359n();
        m28179q(messageSnapshot);
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: c */
    public void mo28142c(MessageSnapshot messageSnapshot) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "notify paused %s", this.f7176a);
        }
        this.f7177b.mo28360g();
        m28179q(messageSnapshot);
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: d */
    public void mo28141d(MessageSnapshot messageSnapshot) {
        if (C2036d.f7151a) {
            AbstractC1978a.AbstractC1980b abstractC1980b = this.f7176a;
            C2036d.m28253a(this, "notify error %s %s", abstractC1980b, abstractC1980b.mo28398J().mo28384d());
        }
        this.f7177b.mo28360g();
        m28179q(messageSnapshot);
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: e */
    public void mo28140e(MessageSnapshot messageSnapshot) {
        if (C2036d.f7151a) {
            AbstractC1978a mo28398J = this.f7176a.mo28398J();
            C2036d.m28253a(this, "notify retry %s %d %d %s", this.f7176a, Integer.valueOf(mo28398J.mo28368u()), Integer.valueOf(mo28398J.mo28385c()), mo28398J.mo28384d());
        }
        this.f7177b.mo28359n();
        m28179q(messageSnapshot);
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: f */
    public void mo28139f(MessageSnapshot messageSnapshot) {
        AbstractC1978a mo28398J = this.f7176a.mo28398J();
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "notify progress %s %d %d", mo28398J, Long.valueOf(mo28398J.mo28373o()), Long.valueOf(mo28398J.mo28366x()));
        }
        if (mo28398J.mo28404C() > 0) {
            this.f7177b.mo28359n();
            m28179q(messageSnapshot);
        } else if (!C2036d.f7151a) {
        } else {
            C2036d.m28253a(this, "notify progress but client not request notify %s", this.f7176a);
        }
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: g */
    public void mo28138g(MessageSnapshot messageSnapshot) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "notify warn %s", this.f7176a);
        }
        this.f7177b.mo28360g();
        m28179q(messageSnapshot);
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: h */
    public void mo28137h(MessageSnapshot messageSnapshot) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "notify connected %s", this.f7176a);
        }
        this.f7177b.mo28359n();
        m28179q(messageSnapshot);
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: i */
    public boolean mo28136i() {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "notify begin %s", this.f7176a);
        }
        if (this.f7176a == null) {
            C2036d.m28245i(this, "can't begin the task, the holder fo the messenger is nil, %d", Integer.valueOf(this.f7178c.size()));
            return false;
        }
        this.f7177b.mo28358p();
        return true;
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: j */
    public boolean mo28135j() {
        return this.f7178c.peek().mo886k() == 4;
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: k */
    public void mo28134k(MessageSnapshot messageSnapshot) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "notify block completed %s %s", this.f7176a, Thread.currentThread().getName());
        }
        this.f7177b.mo28359n();
        m28179q(messageSnapshot);
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: l */
    public void mo28133l(MessageSnapshot messageSnapshot) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "notify started %s", this.f7176a);
        }
        this.f7177b.mo28359n();
        m28179q(messageSnapshot);
    }

    @Override // p078c.p122d.p123a.AbstractC2062t
    /* renamed from: m */
    public void mo28132m() {
        if (this.f7179d) {
            return;
        }
        MessageSnapshot poll = this.f7178c.poll();
        byte mo886k = poll.mo886k();
        AbstractC1978a.AbstractC1980b abstractC1980b = this.f7176a;
        if (abstractC1980b == null) {
            throw new IllegalArgumentException(C2040f.m28206o("can't handover the message, no master to receive this message(status[%d]) size[%d]", Integer.valueOf(mo886k), Integer.valueOf(this.f7178c.size())));
        }
        AbstractC1978a mo28398J = abstractC1980b.mo28398J();
        AbstractC2027i mo28364z = mo28398J.mo28364z();
        AbstractC2066x.AbstractC2067a mo28375m = abstractC1980b.mo28375m();
        m28181o(mo886k);
        if (mo28364z == null || mo28364z.m28273e()) {
            return;
        }
        if (mo886k == 4) {
            try {
                mo28364z.m28275a(mo28398J);
                m28180p(((BlockCompleteMessage) poll).mo902b());
                return;
            } catch (Throwable th) {
                mo28141d(mo28375m.mo28113k(th));
                return;
            }
        }
        AbstractC2014g abstractC2014g = null;
        if (mo28364z instanceof AbstractC2014g) {
            abstractC2014g = (AbstractC2014g) mo28364z;
        }
        if (mo886k == -4) {
            mo28364z.mo26176k(mo28398J);
        } else if (mo886k == -3) {
            mo28364z.mo26181b(mo28398J);
        } else if (mo886k == -2) {
            if (abstractC2014g != null) {
                abstractC2014g.m28294m(mo28398J, poll.mo897f(), poll.mo896g());
            } else {
                mo28364z.mo26179f(mo28398J, poll.mo889i(), poll.mo890j());
            }
        } else if (mo886k == -1) {
            mo28364z.mo26180d(mo28398J, poll.mo891l());
        } else if (mo886k == 1) {
            if (abstractC2014g != null) {
                abstractC2014g.m28293n(mo28398J, poll.mo897f(), poll.mo896g());
            } else {
                mo28364z.mo26178g(mo28398J, poll.mo889i(), poll.mo890j());
            }
        } else if (mo886k == 2) {
            if (abstractC2014g != null) {
                abstractC2014g.m28295l(mo28398J, poll.mo894c(), poll.mo892n(), mo28398J.mo28373o(), poll.mo896g());
            } else {
                mo28364z.mo28274c(mo28398J, poll.mo894c(), poll.mo892n(), mo28398J.mo28367v(), poll.mo890j());
            }
        } else if (mo886k == 3) {
            if (abstractC2014g != null) {
                abstractC2014g.m28292o(mo28398J, poll.mo897f(), mo28398J.mo28366x());
            } else {
                mo28364z.mo26177h(mo28398J, poll.mo889i(), mo28398J.mo28382f());
            }
        } else if (mo886k != 5) {
            if (mo886k != 6) {
                return;
            }
            mo28364z.m28271j(mo28398J);
        } else if (abstractC2014g != null) {
            abstractC2014g.m28291p(mo28398J, poll.mo891l(), poll.mo888h(), poll.mo897f());
        } else {
            mo28364z.mo28272i(mo28398J, poll.mo891l(), poll.mo888h(), poll.mo889i());
        }
    }

    /* renamed from: p */
    public void m28180p(MessageSnapshot messageSnapshot) {
        if (C2036d.f7151a) {
            C2036d.m28253a(this, "notify completed %s", this.f7176a);
        }
        this.f7177b.mo28360g();
        m28179q(messageSnapshot);
    }

    public String toString() {
        AbstractC1978a.AbstractC1980b abstractC1980b = this.f7176a;
        return C2040f.m28206o("%d:%s", Integer.valueOf(abstractC1980b == null ? -1 : abstractC1980b.mo28398J().getId()), super.toString());
    }
}
