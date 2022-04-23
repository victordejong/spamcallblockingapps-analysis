package p092e.p096e.p097a;

import com.liulishuo.filedownloader.message.BlockCompleteMessage;
import com.liulishuo.filedownloader.message.MessageSnapshot;
import com.liulishuo.filedownloader.model.C2775b;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import p092e.p096e.p097a.AbstractC3005a;
import p092e.p096e.p097a.AbstractC3092w;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: e.e.a.k */
/* loaded from: classes2-dex2jar.jar:e/e/a/k.class */
class C3072k implements AbstractC3088s {

    /* renamed from: a */
    private AbstractC3005a.AbstractC3007b f12707a;

    /* renamed from: b */
    private AbstractC3005a.AbstractC3009d f12708b;

    /* renamed from: c */
    private Queue<MessageSnapshot> f12709c;

    /* renamed from: d */
    private boolean f12710d = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3072k(AbstractC3005a.AbstractC3007b bVar, AbstractC3005a.AbstractC3009d dVar) {
        m332n(bVar, dVar);
    }

    /* renamed from: n */
    private void m332n(AbstractC3005a.AbstractC3007b bVar, AbstractC3005a.AbstractC3009d dVar) {
        this.f12707a = bVar;
        this.f12708b = dVar;
        this.f12709c = new LinkedBlockingQueue();
    }

    /* renamed from: o */
    private void m331o(int i) {
        if (C2775b.m1775e(i)) {
            if (!this.f12709c.isEmpty()) {
                MessageSnapshot peek = this.f12709c.peek();
                C3062d.m406i(this, "the messenger[%s](with id[%d]) has already accomplished all his job, but there still are some messages in parcel queue[%d] queue-top-status[%d]", this, Integer.valueOf(peek.m1856e()), Integer.valueOf(this.f12709c.size()), Byte.valueOf(peek.mo1841m()));
            }
            this.f12707a = null;
        }
    }

    /* renamed from: q */
    private void m329q(MessageSnapshot messageSnapshot) {
        AbstractC3005a.AbstractC3007b bVar = this.f12707a;
        if (bVar == null) {
            if (C3062d.f12682a) {
                C3062d.m414a(this, "occur this case, it would be the host task of this messenger has been over(paused/warn/completed/error) on the other thread before receiving the snapshot(id[%d], status[%d])", Integer.valueOf(messageSnapshot.m1856e()), Byte.valueOf(messageSnapshot.mo1841m()));
            }
        } else if (this.f12710d || bVar.mo573J().mo546r() == null) {
            if ((C3073l.m327b() || this.f12707a.mo571L()) && messageSnapshot.mo1841m() == 4) {
                this.f12708b.mo536h();
            }
            m331o(messageSnapshot.mo1841m());
        } else {
            this.f12709c.offer(messageSnapshot);
            C3068j.m341d().m336i(this);
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: a */
    public void mo289a(MessageSnapshot messageSnapshot) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "notify connected %s", this.f12707a);
        }
        this.f12708b.mo535l();
        m329q(messageSnapshot);
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: b */
    public boolean mo288b() {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "notify begin %s", this.f12707a);
        }
        if (this.f12707a == null) {
            C3062d.m406i(this, "can't begin the task, the holder fo the messenger is nil, %d", Integer.valueOf(this.f12709c.size()));
            return false;
        }
        this.f12708b.mo534o();
        return true;
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: c */
    public boolean mo287c() {
        return this.f12709c.peek().mo1841m() == 4;
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: d */
    public void mo286d(MessageSnapshot messageSnapshot) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "notify block completed %s %s", this.f12707a, Thread.currentThread().getName());
        }
        this.f12708b.mo535l();
        m329q(messageSnapshot);
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: e */
    public void mo285e(MessageSnapshot messageSnapshot) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "notify started %s", this.f12707a);
        }
        this.f12708b.mo535l();
        m329q(messageSnapshot);
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: f */
    public boolean mo284f() {
        return this.f12707a.mo573J().mo569N();
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: g */
    public void mo283g(MessageSnapshot messageSnapshot) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "notify pending %s", this.f12707a);
        }
        this.f12708b.mo535l();
        m329q(messageSnapshot);
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: h */
    public void mo282h(MessageSnapshot messageSnapshot) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "notify paused %s", this.f12707a);
        }
        this.f12708b.mo536h();
        m329q(messageSnapshot);
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: i */
    public void mo281i(MessageSnapshot messageSnapshot) {
        if (C3062d.f12682a) {
            AbstractC3005a.AbstractC3007b bVar = this.f12707a;
            C3062d.m414a(this, "notify error %s %s", bVar, bVar.mo573J().mo559c());
        }
        this.f12708b.mo536h();
        m329q(messageSnapshot);
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: j */
    public void mo280j(MessageSnapshot messageSnapshot) {
        if (C3062d.f12682a) {
            AbstractC3005a J = this.f12707a.mo573J();
            C3062d.m414a(this, "notify retry %s %d %d %s", this.f12707a, Integer.valueOf(J.mo553i()), Integer.valueOf(J.mo558d()), J.mo559c());
        }
        this.f12708b.mo535l();
        m329q(messageSnapshot);
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: k */
    public void mo279k(MessageSnapshot messageSnapshot) {
        AbstractC3005a J = this.f12707a.mo573J();
        if (C3062d.f12682a) {
            C3062d.m414a(this, "notify progress %s %d %d", J, Long.valueOf(J.mo538z()), Long.valueOf(J.mo550n()));
        }
        if (J.mo539y() > 0) {
            this.f12708b.mo535l();
            m329q(messageSnapshot);
        } else if (C3062d.f12682a) {
            C3062d.m414a(this, "notify progress but client not request notify %s", this.f12707a);
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: l */
    public void mo278l() {
        if (!this.f12710d) {
            MessageSnapshot poll = this.f12709c.poll();
            byte m = poll.mo1841m();
            AbstractC3005a.AbstractC3007b bVar = this.f12707a;
            if (bVar != null) {
                AbstractC3005a J = bVar.mo573J();
                AbstractC3067i r = J.mo546r();
                AbstractC3092w.AbstractC3093a w = bVar.mo541w();
                m331o(m);
                if (r != null && !r.m351e()) {
                    if (m == 4) {
                        try {
                            r.m355a(J);
                            m330p(((BlockCompleteMessage) poll).mo1857b());
                        } catch (Throwable th) {
                            mo281i(w.mo253n(th));
                        }
                    } else {
                        AbstractC3046g gVar = null;
                        if (r instanceof AbstractC3046g) {
                            gVar = (AbstractC3046g) r;
                        }
                        if (m == -4) {
                            r.m345k(J);
                        } else if (m == -3) {
                            r.m354b(J);
                        } else if (m != -2) {
                            if (m == -1) {
                                r.m352d(J, poll.mo1846n());
                            } else if (m != 1) {
                                if (m == 2) {
                                    String c = poll.mo1849c();
                                    boolean p = poll.mo1847p();
                                    if (gVar != null) {
                                        gVar.m452l(J, c, p, J.mo538z(), poll.mo1851g());
                                    } else {
                                        r.mo353c(J, c, p, J.mo552k(), poll.mo1845l());
                                    }
                                } else if (m != 3) {
                                    if (m != 5) {
                                        if (m == 6) {
                                            r.m346j(J);
                                        }
                                    } else if (gVar != null) {
                                        gVar.m448p(J, poll.mo1846n(), poll.mo1843h(), poll.mo1852f());
                                    } else {
                                        r.mo347i(J, poll.mo1846n(), poll.mo1843h(), poll.mo1844i());
                                    }
                                } else if (gVar != null) {
                                    gVar.m449o(J, poll.mo1852f(), J.mo550n());
                                } else {
                                    r.mo348h(J, poll.mo1844i(), J.mo554h());
                                }
                            } else if (gVar != null) {
                                gVar.m450n(J, poll.mo1852f(), poll.mo1851g());
                            } else {
                                r.mo349g(J, poll.mo1844i(), poll.mo1845l());
                            }
                        } else if (gVar != null) {
                            gVar.m451m(J, poll.mo1852f(), poll.mo1851g());
                        } else {
                            r.mo350f(J, poll.mo1844i(), poll.mo1845l());
                        }
                    }
                }
            } else {
                throw new IllegalArgumentException(C3066f.m367o("can't handover the message, no master to receive this message(status[%d]) size[%d]", Integer.valueOf(m), Integer.valueOf(this.f12709c.size())));
            }
        }
    }

    @Override // p092e.p096e.p097a.AbstractC3088s
    /* renamed from: m */
    public void mo277m(MessageSnapshot messageSnapshot) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "notify warn %s", this.f12707a);
        }
        this.f12708b.mo536h();
        m329q(messageSnapshot);
    }

    /* renamed from: p */
    public void m330p(MessageSnapshot messageSnapshot) {
        if (C3062d.f12682a) {
            C3062d.m414a(this, "notify completed %s", this.f12707a);
        }
        this.f12708b.mo536h();
        m329q(messageSnapshot);
    }

    public String toString() {
        AbstractC3005a.AbstractC3007b bVar = this.f12707a;
        return C3066f.m367o("%d:%s", Integer.valueOf(bVar == null ? -1 : bVar.mo573J().mo577F()), super.toString());
    }
}
