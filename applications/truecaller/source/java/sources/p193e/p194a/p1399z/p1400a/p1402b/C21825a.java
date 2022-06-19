package p193e.p194a.p1399z.p1400a.p1402b;

import com.truecaller.personalsafety.C4318R;
import com.truecaller.personalsafety.PersonalSafetyLinkSource;
import javax.inject.Inject;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1399z.AbstractC21834f;
import p193e.p194a.p916i5.C15314a;
import s1.z.c.l;
/* renamed from: e.a.z.a.b.a */
/* loaded from: classes11-dex2jar.jar:e/a/z/a/b/a.class */
public final class C21825a extends AbstractC20576b<AbstractC21827c> implements AbstractC21826b {

    /* renamed from: b */
    public final AbstractC21834f f60691b;

    @Inject
    public C21825a(AbstractC21834f abstractC21834f) {
        l.e(abstractC21834f, "personalSafety");
        this.f60691b = abstractC21834f;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.z.a.b.c, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC21827c abstractC21827c) {
        AbstractC21827c abstractC21827c2 = abstractC21827c;
        l.e(abstractC21827c2, "presenterView");
        this.f57683a = abstractC21827c2;
        C15314a c15314a = C15314a.f43582g;
        abstractC21827c2.mo9025H3(C15314a.m18933f() ? C4318R.C4319drawable.personal_safety_awareness_img_dark : C4318R.C4319drawable.personal_safety_awareness_img_light);
        abstractC21827c2.setTitle(C4318R.string.personal_safety_awareness_title);
        abstractC21827c2.mo9023kp(C4318R.string.personal_safety_awareness_desc);
        abstractC21827c2.mo9026Fu(this.f60691b.mo9015g() ? C4318R.string.personal_safety_awareness_open : C4318R.string.personal_safety_awareness_install);
    }

    @Override // p193e.p194a.p1399z.p1400a.p1402b.AbstractC21826b
    /* renamed from: j7 */
    public void mo9028j7() {
        AbstractC21827c abstractC21827c = (AbstractC21827c) this.f57683a;
        if (abstractC21827c != null) {
            abstractC21827c.mo9022ps();
        }
    }

    @Override // p193e.p194a.p1399z.p1400a.p1402b.AbstractC21826b
    /* renamed from: lb */
    public void mo9027lb(String str) {
        PersonalSafetyLinkSource personalSafetyLinkSource;
        l.e(str, "source");
        int hashCode = str.hashCode();
        if (hashCode == -1848660153) {
            if (str.equals("side_menu")) {
                personalSafetyLinkSource = PersonalSafetyLinkSource.SIDE_MENU;
            }
            personalSafetyLinkSource = PersonalSafetyLinkSource.OTHER;
        } else if (hashCode != 291714140) {
            if (hashCode == 666902000 && str.equals("push_notification")) {
                personalSafetyLinkSource = PersonalSafetyLinkSource.DEEP_LINK;
            }
            personalSafetyLinkSource = PersonalSafetyLinkSource.OTHER;
        } else {
            if (str.equals("promo_banner")) {
                personalSafetyLinkSource = PersonalSafetyLinkSource.HOME_PROMO;
            }
            personalSafetyLinkSource = PersonalSafetyLinkSource.OTHER;
        }
        String mo9019c = this.f60691b.mo9019c(personalSafetyLinkSource);
        AbstractC21827c abstractC21827c = (AbstractC21827c) this.f57683a;
        if (abstractC21827c != null) {
            abstractC21827c.mo9024j3(mo9019c);
        }
    }
}
