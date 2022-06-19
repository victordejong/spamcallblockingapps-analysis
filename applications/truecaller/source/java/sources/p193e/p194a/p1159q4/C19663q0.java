package p193e.p194a.p1159q4;

import com.razorpay.AnalyticsConstants;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1336b.AbstractC21179b;
import s1.z.c.l;
/* renamed from: e.a.q4.q0 */
/* loaded from: classes12-dex2jar.jar:e/a/q4/q0.class */
public final class C19663q0 extends C19673u0 implements AbstractC21179b {

    /* renamed from: b */
    public final C20592g f54615b;

    public C19663q0(C20592g c20592g) {
        l.e(c20592g, "featuresRegistry");
        this.f54615b = c20592g;
    }

    @Override // p193e.p194a.p1159q4.C19673u0, p193e.p194a.p372b0.p411g.AbstractC8444b
    /* renamed from: c */
    public void mo13033c(String str, boolean z) {
        l.e(str, AnalyticsConstants.KEY);
        C20592g c20592g = this.f54615b;
        switch (str.hashCode()) {
            case -2046468935:
                if (str.equals("featureReferralDeeplink")) {
                    c20592g.m10957k0("featureReferralDeeplink", z);
                    return;
                }
                break;
            case -1290598049:
                if (str.equals("featureAftercallSaveContact")) {
                    c20592g.m10957k0("featureReferralAfterCallSaveContact", z);
                    return;
                }
                break;
            case -547408280:
                if (str.equals("featureReferralAfterCallPromo")) {
                    c20592g.m10957k0("featureReferralAfterCallPromo", z);
                    return;
                }
                break;
            case -481113116:
                if (str.equals("featureAftercall")) {
                    c20592g.m10957k0("featureReferralIconInAfterCall", z);
                    return;
                }
                break;
            case -388676293:
                if (str.equals("featureContactDetail")) {
                    c20592g.m10957k0("featureReferralIconInContactDetail", z);
                    return;
                }
                break;
            case 1186865999:
                if (str.equals("featureGoPro")) {
                    c20592g.m10957k0("featureRedeemGoPro", z);
                    return;
                }
                break;
            case 1416073976:
                if (str.equals("featureReferralNavigationDrawer")) {
                    c20592g.m10957k0("featureReferralNavDrawer", z);
                    return;
                }
                break;
        }
        C18334g0.m15198v0(str, z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x011e, code lost:
        if (r6.equals("featurePushNotification") != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0174, code lost:
        if (r6.equals("featureReferralPremiumTabV2") != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0177, code lost:
        r7 = true;
     */
    @Override // p193e.p194a.p1159q4.C19673u0, p193e.p194a.p372b0.p411g.AbstractC8444b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean getBoolean(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1159q4.C19663q0.getBoolean(java.lang.String):boolean");
    }
}
