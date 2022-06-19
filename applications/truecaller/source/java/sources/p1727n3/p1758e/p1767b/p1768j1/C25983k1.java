package p1727n3.p1758e.p1767b.p1768j1;

import p1727n3.p1758e.p1767b.AbstractC26095u0;
import p1727n3.p1758e.p1767b.AbstractC26097v0;
/* renamed from: n3.e.b.j1.k1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/k1.class */
public final class C25983k1 {

    /* renamed from: a */
    public final AbstractC26097v0 f72622a;

    public C25983k1(AbstractC26097v0 abstractC26097v0, String str) {
        AbstractC26095u0 mo2728x0 = abstractC26097v0.mo2728x0();
        if (mo2728x0 != null) {
            Integer num = mo2728x0.mo2725f().f72648a.get(str);
            if (num == null) {
                throw new IllegalArgumentException("ImageProxy has no associated tag");
            }
            num.intValue();
            this.f72622a = abstractC26097v0;
            return;
        }
        throw new IllegalArgumentException("ImageProxy has no associated ImageInfo");
    }
}
