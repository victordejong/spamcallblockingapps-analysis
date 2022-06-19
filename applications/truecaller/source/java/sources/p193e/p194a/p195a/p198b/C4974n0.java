package p193e.p194a.p195a.p198b;

import com.truecaller.messaging.data.types.Conversation;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1356x2.C21392b;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.C6247v;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.b.n0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/n0.class */
public final class C4974n0 extends AbstractC18894c<AbstractC4966k0> implements AbstractC4964j0 {

    /* renamed from: b */
    public final AbstractC4962i0 f16981b;

    /* renamed from: c */
    public final AbstractC4959h f16982c;

    /* renamed from: d */
    public final AbstractC6394b f16983d;

    /* renamed from: e */
    public final C8243a f16984e;

    /* renamed from: f */
    public final C8243a f16985f;

    /* renamed from: g */
    public final C21392b f16986g;

    /* renamed from: h */
    public final AbstractC6392i0 f16987h;

    @Inject
    public C4974n0(AbstractC4962i0 abstractC4962i0, AbstractC4959h abstractC4959h, AbstractC6394b abstractC6394b, C8243a c8243a, C8243a c8243a2, C21392b c21392b, AbstractC6392i0 abstractC6392i0) {
        l.e(abstractC4962i0, "model");
        l.e(abstractC4959h, "actionHelper");
        l.e(abstractC6394b, "messageUtil");
        l.e(c8243a, "avatarPresenter1");
        l.e(c8243a2, "avatarPresenter2");
        l.e(c21392b, "avatarConfigProvider");
        l.e(abstractC6392i0, "messageSettings");
        this.f16981b = abstractC4962i0;
        this.f16982c = abstractC4959h;
        this.f16983d = abstractC6394b;
        this.f16984e = c8243a;
        this.f16985f = c8243a2;
        this.f16986g = c21392b;
        this.f16987h = abstractC6392i0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(AbstractC4966k0 abstractC4966k0, int i) {
        AbstractC4966k0 abstractC4966k02 = abstractC4966k0;
        l.e(abstractC4966k02, "itemView");
        C6247v mo34049jh = this.f16981b.mo34049jh();
        if (mo34049jh != null) {
            List F0 = i.F0(mo34049jh.f21006a, new C4970l0());
            boolean z = false;
            C8243a.m28739ok(this.f16984e, this.f16986g.mo9781a((Conversation) F0.get(0)), false, 2, null);
            if (F0.size() < 2) {
                abstractC4966k02.mo34157Y2(this.f16984e);
            } else {
                C8243a.m28739ok(this.f16985f, this.f16986g.mo9781a((Conversation) F0.get(1)), false, 2, null);
                abstractC4966k02.mo34155g0(this.f16984e, this.f16985f);
            }
            if (this.f16987h.mo31161P1() < mo34049jh.f21007b) {
                z = true;
            }
            abstractC4966k02.mo34156Z0(z);
            abstractC4966k02.mo34154i3(i.O(mo34049jh.f21006a, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new C4972m0(this), 31), z);
            abstractC4966k02.mo34153q4(z);
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f16981b.mo34049jh() != null ? 1 : 0;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return 1L;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        if (l.a(c18900h.f53001a, "ItemEvent.CLICKED")) {
            this.f16982c.mo34062Wl();
            return true;
        }
        return false;
    }
}
