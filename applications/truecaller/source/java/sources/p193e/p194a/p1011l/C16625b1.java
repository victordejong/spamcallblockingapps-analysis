package p193e.p194a.p1011l;

import com.truecaller.premium.data.PremiumType;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1025p2.C17118j1;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import s1.z.c.l;
/* renamed from: e.a.l.b1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/b1.class */
public final class C16625b1 extends AbstractC20576b<AbstractC16831c1> implements AbstractC20580e {

    /* renamed from: b */
    public final PremiumType f46712b;

    /* renamed from: c */
    public final int f46713c;

    /* renamed from: d */
    public final AbstractC16940i2 f46714d;

    @Inject
    public C16625b1(PremiumType premiumType, @Named("page") int i, AbstractC16940i2 abstractC16940i2) {
        l.e(premiumType, "premiumType");
        l.e(abstractC16940i2, "premiumThemePartModel");
        this.f46712b = premiumType;
        this.f46713c = i;
        this.f46714d = abstractC16940i2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.l.c1, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC16831c1) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        C17118j1 mo16746V9 = this.f46714d.mo16746V9(this.f46712b);
        if (mo16746V9 != null) {
            r0.mo16936W2(mo16746V9.f48051f.get(this.f46713c));
        }
    }
}
