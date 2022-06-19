package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.n.n0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/n0.class */
public class C18394n0 extends AbstractC18454z0<Boolean> {

    /* renamed from: b */
    public final String f51957b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18394n0(String str, AbstractC8541a abstractC8541a) {
        super(abstractC8541a);
        l.e(str, AnalyticsConstants.KEY);
        l.e(abstractC8541a, "coreSettings");
        this.f51957b = str;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    /* renamed from: b */
    public boolean mo14983b(Object obj) {
        boolean z = false;
        if (obj instanceof Boolean) {
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
        return this.f51957b;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public Object getValue() {
        return Boolean.valueOf(this.f52109a.getBoolean(this.f51957b));
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public void setValue(Object obj) {
        this.f52109a.putBoolean(this.f51957b, ((Boolean) obj).booleanValue());
    }
}
