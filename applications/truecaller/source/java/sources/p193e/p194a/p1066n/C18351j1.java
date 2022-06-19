package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
/* renamed from: e.a.n.j1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/j1.class */
public class C18351j1 extends AbstractC18440v1<Integer> {

    /* renamed from: a */
    public final String f51825a;

    public C18351j1(String str) {
        l.e(str, AnalyticsConstants.KEY);
        this.f51825a = str;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    /* renamed from: b */
    public boolean mo14983b(Object obj) {
        boolean z = false;
        if (obj instanceof Integer) {
            if (!mo14935a() || !l.a(obj, getValue())) {
                setValue(obj);
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public String getKey() {
        return this.f51825a;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public Object getValue() {
        return Integer.valueOf(C15571h.m18642i(this.f51825a));
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public void setValue(Object obj) {
        C15571h.m18628w(this.f51825a, ((Number) obj).intValue());
    }
}
