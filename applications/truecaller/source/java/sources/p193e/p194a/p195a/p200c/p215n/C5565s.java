package p193e.p194a.p195a.p200c.p215n;

import com.truecaller.messaging.data.types.Message;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.a.c.n.s */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/n/s.class */
public final class C5565s implements AbstractC5794w3 {

    /* renamed from: a */
    public AbstractC6149q f18791a;

    /* renamed from: b */
    public AbstractC6225a f18792b;

    /* renamed from: c */
    public final Message f18793c;

    @Inject
    public C5565s(@Named("message") Message message) {
        l.e(message, "message");
        this.f18793c = message;
        m32966k();
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: a */
    public Integer mo32583a(long j) {
        return m32966k().f13380a == j ? 0 : null;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: b */
    public List<AbstractC6225a> mo32582b() {
        return s.a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: c */
    public void mo32581c(AbstractC5794w3.AbstractC5795a abstractC5795a) {
        l.e(abstractC5795a, "messagesObserver");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: d */
    public void mo32580d(List<? extends AbstractC6225a> list) {
        l.e(list, "items");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: e */
    public void mo32579e(AbstractC6149q abstractC6149q) {
        AbstractC6149q abstractC6149q2 = this.f18791a;
        if (abstractC6149q2 != null && !abstractC6149q2.isClosed()) {
            abstractC6149q2.close();
        }
        this.f18791a = abstractC6149q;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: f */
    public AbstractC6149q mo32578f() {
        return this.f18791a;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: g */
    public int mo32577g(long j) {
        return -1;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    public int getCount() {
        return 1;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    public AbstractC6225a getItem(int i) {
        Message m32966k = m32966k();
        if (!(i == 0)) {
            m32966k = null;
        }
        return m32966k;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: h */
    public int mo32576h() {
        return 1;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: i */
    public int mo32575i(int i) {
        return i;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: j */
    public void mo32574j(AbstractC6225a abstractC6225a) {
        this.f18792b = abstractC6225a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
        if (r3 != null) goto L12;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.truecaller.messaging.data.types.Message m32966k() {
        /*
            r2 = this;
            r0 = r2
            e.a.a.g.j0.q r0 = r0.f18791a
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L29
            r0 = r3
            boolean r0 = r0.moveToFirst()
            if (r0 == 0) goto L15
            goto L17
        L15:
            r0 = 0
            r3 = r0
        L17:
            r0 = r3
            if (r0 == 0) goto L29
            r0 = r3
            com.truecaller.messaging.data.types.Message r0 = r0.getMessage()
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L29
            goto L2e
        L29:
            r0 = r2
            com.truecaller.messaging.data.types.Message r0 = r0.f18793c
            r3 = r0
        L2e:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.p215n.C5565s.m32966k():com.truecaller.messaging.data.types.Message");
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5794w3
    /* renamed from: n0 */
    public void mo32573n0() {
    }
}
