package p193e.p194a.p1011l;

import com.truecaller.premium.data.PremiumType;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1011l.p1025p2.C17118j1;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import s1.z.c.l;
/* renamed from: e.a.l.r0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/r0.class */
public final class C17219r0 extends AbstractC20576b<AbstractC17227s0> implements AbstractC20580e {

    /* renamed from: b */
    public final PremiumType f48342b;

    /* renamed from: c */
    public final int f48343c;

    /* renamed from: d */
    public final AbstractC16940i2 f48344d;

    @Inject
    public C17219r0(PremiumType premiumType, @Named("initial_position") int i, AbstractC16940i2 abstractC16940i2) {
        l.e(premiumType, "premiumType");
        l.e(abstractC16940i2, "premiumThemePartModel");
        this.f48342b = premiumType;
        this.f48343c = i;
        this.f48344d = abstractC16940i2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.l.s0, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC17227s0) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        C17118j1 mo16746V9 = this.f48344d.mo16746V9(this.f48342b);
        if (mo16746V9 != null) {
            r0.setTitle(mo16746V9.f48047b);
            r0.mo16360xj(this.f48342b, mo16746V9.f48051f.size(), this.f48343c);
        }
    }
}
