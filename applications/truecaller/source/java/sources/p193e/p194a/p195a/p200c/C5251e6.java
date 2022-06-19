package p193e.p194a.p195a.p200c;

import javax.inject.Inject;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import s1.z.c.l;
/* renamed from: e.a.a.c.e6 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/e6.class */
public final class C5251e6 extends AbstractC20576b<AbstractC5280f6> implements AbstractC5229d6 {

    /* renamed from: b */
    public final AbstractC5585n5 f18049b;

    /* renamed from: c */
    public final AbstractC5719s4 f18050c;

    /* renamed from: d */
    public final AbstractC5336h3 f18051d;

    /* renamed from: e */
    public final AbstractC6708t f18052e;

    /* renamed from: f */
    public final AbstractC5484l5 f18053f;

    /* renamed from: g */
    public final AbstractC5743t3 f18054g;

    @Inject
    public C5251e6(AbstractC5585n5 abstractC5585n5, AbstractC5719s4 abstractC5719s4, AbstractC5336h3 abstractC5336h3, AbstractC6708t abstractC6708t, AbstractC5484l5 abstractC5484l5, AbstractC5743t3 abstractC5743t3) {
        l.e(abstractC5585n5, "conversationState");
        l.e(abstractC5719s4, "conversationMessagesPresenter");
        l.e(abstractC5336h3, "actionModePresenter");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC5484l5, "resourceProvider");
        l.e(abstractC5743t3, "conversationBubbleInteractions");
        this.f18049b = abstractC5585n5;
        this.f18050c = abstractC5719s4;
        this.f18051d = abstractC5336h3;
        this.f18052e = abstractC6708t;
        this.f18053f = abstractC5484l5;
        this.f18054g = abstractC5743t3;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x019d  */
    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.c.f6] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9029Y0(p193e.p194a.p195a.p200c.AbstractC5280f6 r14) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5251e6.mo9029Y0(java.lang.Object):void");
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        if (!this.f18049b.mo32873B()) {
            this.f18051d.mo33235L6();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5229d6
    /* renamed from: f0 */
    public void mo33480f0() {
        if (this.f18049b.mo32870E()) {
            this.f18054g.mo32629r0(this.f18049b.mo32858g());
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5229d6
    /* renamed from: n */
    public void mo33479n(int i) {
        if (this.f18049b.mo32870E()) {
            this.f18050c.mo32688n0(this.f18049b.mo32858g(), i);
        }
        AbstractC5280f6 abstractC5280f6 = (AbstractC5280f6) this.f57683a;
        if (abstractC5280f6 != null) {
            abstractC5280f6.dismiss();
        }
    }
}
