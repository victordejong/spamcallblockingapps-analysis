package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
/* renamed from: e.a.n.i2 */
/* loaded from: classes5-dex2jar.jar:e/a/n/i2.class */
public class C18344i2 extends AbstractC18440v1<String> {

    /* renamed from: a */
    public final String f51805a;

    public C18344i2(String str) {
        l.e(str, AnalyticsConstants.KEY);
        this.f51805a = str;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    /* renamed from: b */
    public boolean mo14983b(Object obj) {
        boolean z;
        if (!(obj != null ? obj instanceof String : true) || (mo14935a() && l.a(obj, getValue()))) {
            z = false;
        } else {
            setValue(obj);
            z = true;
        }
        return z;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public String getKey() {
        return this.f51805a;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public Object getValue() {
        return C15571h.m18647d(this.f51805a);
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public void setValue(Object obj) {
        C15571h.m18627x(this.f51805a, (String) obj);
    }
}
