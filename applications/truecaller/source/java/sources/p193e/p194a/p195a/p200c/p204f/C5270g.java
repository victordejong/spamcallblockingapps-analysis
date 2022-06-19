package p193e.p194a.p195a.p200c.p204f;

import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.scheduleDatePicker.Mode;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.c.f.g */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/f/g.class */
public final class C5270g extends AbstractC20576b<AbstractC5271h> implements AbstractC5269f {

    /* renamed from: b */
    public Mode f18085b = Mode.PICK_DATE;

    /* renamed from: c */
    public final Long f18086c;

    /* renamed from: d */
    public final AbstractC19223c0 f18087d;

    /* renamed from: e */
    public final AbstractC18951b0 f18088e;

    /* renamed from: f */
    public final AbstractC5265c f18089f;

    @Inject
    public C5270g(@Named("DefaultDate") Long l, AbstractC19223c0 abstractC19223c0, AbstractC18951b0 abstractC18951b0, AbstractC5265c abstractC5265c) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC5265c, "calendar");
        this.f18086c = l;
        this.f18087d = abstractC19223c0;
        this.f18088e = abstractC18951b0;
        this.f18089f = abstractC5265c;
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5269f
    /* renamed from: A7 */
    public void mo33459A7() {
        AbstractC5271h abstractC5271h = (AbstractC5271h) this.f57683a;
        if (abstractC5271h != null) {
            if (this.f18085b == Mode.PICK_DATE) {
                abstractC5271h.mo33451Zp(this.f18088e.mo14283l(this.f18089f.mo33474a()));
                abstractC5271h.mo33453Fi(this.f18089f.mo33469f(), this.f18089f.mo33464k());
                String mo13768b = this.f18087d.mo13768b(C2752R.string.schedule_message, new Object[0]);
                l.d(mo13768b, "resourceProvider.getStri….string.schedule_message)");
                abstractC5271h.mo33450lt(mo13768b);
                this.f18085b = Mode.PICK_TIME;
            } else if (this.f18088e.mo14285j().G(5).a(new b(this.f18089f.mo33474a())) > 0) {
                abstractC5271h.mo33455Aj();
            } else {
                abstractC5271h.dismiss();
                this.f18089f.mo33461n(0);
                this.f18089f.mo33462m(0);
                abstractC5271h.mo33452HA(this.f18089f.mo33474a());
            }
        }
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5269f
    /* renamed from: Qf */
    public void mo33458Qf(int i, int i2, int i3) {
        this.f18089f.mo33465j(i);
        this.f18089f.mo33468g(i2);
        this.f18089f.mo33473b(i3);
        AbstractC5271h abstractC5271h = (AbstractC5271h) this.f57683a;
        if (abstractC5271h != null) {
            abstractC5271h.mo33451Zp(this.f18088e.mo14275t(this.f18089f.mo33474a(), "MMMM dd, YYYY"));
        }
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5269f
    /* renamed from: Rg */
    public void mo33457Rg(int i, int i2) {
        this.f18089f.mo33467h(i);
        this.f18089f.mo33466i(i2);
        AbstractC5271h abstractC5271h = (AbstractC5271h) this.f57683a;
        if (abstractC5271h != null) {
            abstractC5271h.mo33451Zp(this.f18088e.mo14283l(this.f18089f.mo33474a()));
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.a.c.f.h, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC5271h abstractC5271h) {
        AbstractC5271h abstractC5271h2 = abstractC5271h;
        l.e(abstractC5271h2, "presenterView");
        this.f57683a = abstractC5271h2;
        ?? r0 = ((e) this.f18088e.mo14285j()).a;
        AbstractC5265c abstractC5265c = this.f18089f;
        Long l = this.f18086c;
        abstractC5265c.mo33470e(l != null ? l.longValue() : r0);
        abstractC5271h2.mo33451Zp(this.f18088e.mo14275t(this.f18089f.mo33474a(), "MMMM dd, YYYY"));
        b bVar = new b((long) r0);
        b N = bVar.N(((e) bVar).b.V().a(((e) bVar).a, 1));
        l.d(N, "DateTime(now).plusYears(1)");
        abstractC5271h2.mo33454Bi(this.f18089f.mo33472c(), this.f18089f.mo33463l(), this.f18089f.mo33471d(), r0, ((e) N).a);
    }

    @Override // p193e.p194a.p195a.p200c.p204f.AbstractC5269f
    /* renamed from: s9 */
    public void mo33456s9() {
        AbstractC5271h abstractC5271h = (AbstractC5271h) this.f57683a;
        if (abstractC5271h != null) {
            abstractC5271h.dismiss();
        }
    }
}
