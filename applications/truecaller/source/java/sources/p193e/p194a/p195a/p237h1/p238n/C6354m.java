package p193e.p194a.p195a.p237h1.p238n;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.amazon.device.ads.MraidCloseCommand;
import com.truecaller.messaging.urgent.UrgentConversation;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1270u2.p1271a.AbstractC20579d;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.a.h1.n.m */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/n/m.class */
public final class C6354m extends AbstractC20579d<AbstractC6352k, AbstractC6353l> implements AbstractC6351j {

    /* renamed from: c */
    public long f21197c = -1;

    /* renamed from: d */
    public List<UrgentConversation> f21198d = s.a;

    /* renamed from: e */
    public final AbstractC19510i0 f21199e;

    @Inject
    public C6354m(AbstractC19510i0 abstractC19510i0) {
        l.e(abstractC19510i0, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f21199e = abstractC19510i0;
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6347f
    /* renamed from: Ca */
    public long mo31414Ca() {
        return this.f21197c;
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6347f
    /* renamed from: Ga */
    public List<UrgentConversation> mo31413Ga() {
        return this.f21198d;
    }

    /* renamed from: Hj */
    public final void m31412Hj(int i) {
        if (this.f21197c == this.f21198d.get(i).f13900a.f13199a) {
            return;
        }
        long j = this.f21198d.get(i).f13900a.f13199a;
        this.f21197c = j;
        AbstractC6353l abstractC6353l = (AbstractC6353l) this.f57683a;
        if (abstractC6353l != null) {
            abstractC6353l.mo31419Y8(j);
        }
        AbstractC6353l abstractC6353l2 = (AbstractC6353l) this.f57683a;
        if (abstractC6353l2 != null) {
            abstractC6353l2.mo31420I3(false);
        }
        AbstractC6352k abstractC6352k = (AbstractC6352k) this.f57687b;
        if (abstractC6352k != null) {
            abstractC6352k.mo31391Zd(this.f21197c);
        }
        AbstractC6353l abstractC6353l3 = (AbstractC6353l) this.f57683a;
        if (abstractC6353l3 == null) {
            return;
        }
        abstractC6353l3.mo31418c0();
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6351j
    /* renamed from: L0 */
    public void mo31411L0() {
        AbstractC6353l abstractC6353l = (AbstractC6353l) this.f57683a;
        if (abstractC6353l != null) {
            abstractC6353l.mo31416u2(this.f21197c);
        }
        AbstractC6353l abstractC6353l2 = (AbstractC6353l) this.f57683a;
        if (abstractC6353l2 != null) {
            abstractC6353l2.finish();
        }
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6346e
    /* renamed from: S6 */
    public void mo31410S6(int i) {
        if (this.f21197c != this.f21198d.get(i).f13900a.f13199a) {
            m31412Hj(i);
            return;
        }
        AbstractC6353l abstractC6353l = (AbstractC6353l) this.f57683a;
        if (abstractC6353l == null) {
            return;
        }
        abstractC6353l.finish();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0043, code lost:
        if ((r5.f21198d.size() > 4) == false) goto L14;
     */
    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6367h
    /* renamed from: W8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo31404W8(java.util.List<com.truecaller.messaging.urgent.UrgentConversation> r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = "conversations"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r0.f21198d = r1
            r0 = r6
            boolean r0 = r0.isEmpty()
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L4c
            r0 = r5
            long r0 = r0.f21197c
            r7 = r0
            r0 = r7
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L46
            r0 = r7
            r1 = -2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L4c
            r0 = r5
            java.util.List<com.truecaller.messaging.urgent.UrgentConversation> r0 = r0.f21198d
            int r0 = r0.size()
            r1 = 4
            if (r0 <= r1) goto L3e
            r0 = 1
            r9 = r0
            goto L41
        L3e:
            r0 = 0
            r9 = r0
        L41:
            r0 = r9
            if (r0 != 0) goto L4c
        L46:
            r0 = r5
            r1 = 0
            r0.m31412Hj(r1)
            return
        L4c:
            r0 = r6
            java.util.Iterator r0 = r0.iterator()
            r10 = r0
        L54:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L89
            r0 = r10
            java.lang.Object r0 = r0.next()
            r6 = r0
            r0 = r6
            com.truecaller.messaging.urgent.UrgentConversation r0 = (com.truecaller.messaging.urgent.UrgentConversation) r0
            com.truecaller.messaging.data.types.Conversation r0 = r0.f13900a
            long r0 = r0.f13199a
            r1 = r5
            long r1 = r1.f21197c
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L7e
            r0 = 1
            r9 = r0
            goto L81
        L7e:
            r0 = 0
            r9 = r0
        L81:
            r0 = r9
            if (r0 == 0) goto L54
            goto L8b
        L89:
            r0 = 0
            r6 = r0
        L8b:
            r0 = r6
            com.truecaller.messaging.urgent.UrgentConversation r0 = (com.truecaller.messaging.urgent.UrgentConversation) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Lb6
            r0 = r6
            long r0 = r0.f13902c
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto Lb6
            r0 = r5
            Router r0 = r0.f57687b
            e.a.a.h1.n.k r0 = (p193e.p194a.p195a.p237h1.p238n.AbstractC6352k) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Lc8
            r0 = r6
            r1 = r5
            long r1 = r1.f21197c
            r0.mo31391Zd(r1)
            goto Lc8
        Lb6:
            r0 = r5
            PV r0 = r0.f57683a
            e.a.a.h1.n.l r0 = (p193e.p194a.p195a.p237h1.p238n.AbstractC6353l) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto Lc8
            r0 = r6
            r0.mo31418c0()
        Lc8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p237h1.p238n.C6354m.mo31404W8(java.util.List):void");
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6351j
    public void onCloseClick() {
        AbstractC6353l abstractC6353l = (AbstractC6353l) this.f57683a;
        if (abstractC6353l != null) {
            abstractC6353l.finish();
        }
        AbstractC6353l abstractC6353l2 = (AbstractC6353l) this.f57683a;
        if (abstractC6353l2 != null) {
            abstractC6353l2.mo31415w7(this.f21197c);
        }
        this.f21199e.mo13216j(MraidCloseCommand.NAME, null);
    }

    @Override // p193e.p194a.p195a.p237h1.p238n.AbstractC6346e
    /* renamed from: r5 */
    public void mo31409r5() {
        this.f21197c = -2L;
        AbstractC6352k abstractC6352k = (AbstractC6352k) this.f57687b;
        if (abstractC6352k != null) {
            abstractC6352k.mo31391Zd(-2L);
        }
        AbstractC6353l abstractC6353l = (AbstractC6353l) this.f57683a;
        if (abstractC6353l != null) {
            abstractC6353l.mo31417d1();
        }
        AbstractC6353l abstractC6353l2 = (AbstractC6353l) this.f57683a;
        if (abstractC6353l2 != null) {
            abstractC6353l2.mo31420I3(true);
        }
        AbstractC6353l abstractC6353l3 = (AbstractC6353l) this.f57683a;
        if (abstractC6353l3 != null) {
            abstractC6353l3.mo31418c0();
        }
    }
}
