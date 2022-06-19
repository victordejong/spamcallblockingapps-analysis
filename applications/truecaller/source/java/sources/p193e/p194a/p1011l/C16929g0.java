package p193e.p194a.p1011l;

import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1025p2.AbstractC17180s1;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.l.g0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/g0.class */
public final class C16929g0 extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ String f47527b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC16856e0 f47528c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16929g0(String str, AbstractC16856e0 abstractC16856e0) {
        super(0);
        this.f47527b = str;
        this.f47528c = abstractC16856e0;
    }

    public Object invoke() {
        AbstractC16856e0 abstractC16856e0;
        AbstractC17180s1.C17182b c17182b;
        C16993f c16993f;
        AbstractC16856e0 abstractC16856e02;
        AbstractC17180s1.C17182b c17182b2;
        C16993f c16993f2;
        this.f47528c.f47281L.f47727b.putBoolean("showLostPremiumConsumableNotification", false);
        String str = this.f47527b;
        int hashCode = str.hashCode();
        if (hashCode != -318452137) {
            if (hashCode == 3178592 && str.equals("gold") && (c17182b2 = (abstractC16856e02 = this.f47528c).f47292d) != null && (c16993f2 = c17182b2.f48210j) != null) {
                abstractC16856e02.m16846Yj(c16993f2, null);
            }
        } else if (str.equals("premium") && (c17182b = (abstractC16856e0 = this.f47528c).f47292d) != null && (c16993f = c17182b.f48208h) != null) {
            abstractC16856e0.m16846Yj(c16993f, null);
        }
        return s.a;
    }
}
