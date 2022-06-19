package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.n.k1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/k1.class */
public class C18363k1 extends AbstractC18454z0<Long> {

    /* renamed from: b */
    public final String f51852b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18363k1(String str, AbstractC8541a abstractC8541a) {
        super(abstractC8541a);
        l.e(str, AnalyticsConstants.KEY);
        l.e(abstractC8541a, "coreSettings");
        this.f51852b = str;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    /* renamed from: b */
    public boolean mo14983b(Object obj) {
        boolean z = false;
        if (obj instanceof Long) {
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
        return this.f51852b;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public Object getValue() {
        return Long.valueOf(this.f52109a.getLong(this.f51852b, -1L));
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public void setValue(Object obj) {
        this.f52109a.putLong(this.f51852b, ((Number) obj).longValue());
    }
}
