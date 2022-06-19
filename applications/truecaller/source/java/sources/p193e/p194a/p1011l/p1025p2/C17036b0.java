package p193e.p194a.p1011l.p1025p2;

import com.truecaller.C2752R;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1272u3.C20592g;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.p2.b0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/b0.class */
public final class C17036b0 {

    /* renamed from: a */
    public final C20592g f47792a;

    @Inject
    public C17036b0(C20592g c20592g) {
        l.e(c20592g, "featuresRegistry");
        this.f47792a = c20592g;
    }

    /* renamed from: a */
    public final List<C17209z> m16612a() {
        List T = i.T(new C17209z[]{new C17209z(true, C2752R.string.PremiumFeatureDescriptionAutoUpdateTopSpammers), new C17209z(true, C2752R.string.PremiumFeatureDescriptionExtendedTopSpammerList), new C17209z(this.f47792a.m10956l().isEnabled(), C2752R.string.PremiumFeatureDescriptionBlockTopSpammers), new C17209z(this.f47792a.m10958k().isEnabled(), C2752R.string.PremiumFeatureDescriptionBlockNonPhonebook), new C17209z(this.f47792a.m10966g().isEnabled(), C2752R.string.PremiumFeatureDescriptionBlockForeignNumbers), new C17209z(this.f47792a.m10964h().isEnabled(), C2752R.string.PremiumFeatureDescriptionBlockHiddenNumbers), new C17209z(this.f47792a.m10960j().isEnabled(), C2752R.string.PremiumFeatureDescriptionBlockNeighbourSpoofing), new C17209z(this.f47792a.m10962i().isEnabled(), C2752R.string.PremiumFeatureDescriptionBlockIndianRegisteredTelemarketers)});
        ArrayList arrayList = new ArrayList();
        for (Object obj : T) {
            if (((C17209z) obj).f48328a) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
