package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import com.truecaller.settings.CallingSettings;
import s1.z.c.l;
/* renamed from: e.a.n.m0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/m0.class */
public class C18381m0 extends AbstractC18436u0<Boolean> {

    /* renamed from: b */
    public final String f51900b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18381m0(String str, CallingSettings callingSettings) {
        super(callingSettings);
        l.e(str, AnalyticsConstants.KEY);
        l.e(callingSettings, "callingSettings");
        this.f51900b = str;
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
        return this.f51900b;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public Object getValue() {
        return Boolean.valueOf(this.f52082a.getBoolean(this.f51900b));
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public void setValue(Object obj) {
        this.f52082a.putBoolean(this.f51900b, ((Boolean) obj).booleanValue());
    }
}
