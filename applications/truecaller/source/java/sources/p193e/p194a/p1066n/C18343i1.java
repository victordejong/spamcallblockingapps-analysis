package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import com.truecaller.settings.CallingSettings;
import s1.z.c.l;
/* renamed from: e.a.n.i1 */
/* loaded from: classes5-dex2jar.jar:e/a/n/i1.class */
public class C18343i1 extends AbstractC18436u0<Integer> {

    /* renamed from: b */
    public final String f51804b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18343i1(String str, CallingSettings callingSettings) {
        super(callingSettings);
        l.e(str, AnalyticsConstants.KEY);
        l.e(callingSettings, "callingSettings");
        this.f51804b = str;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public String getKey() {
        return this.f51804b;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public Object getValue() {
        return Integer.valueOf(this.f52082a.getInt(this.f51804b, 0));
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public void setValue(Object obj) {
        this.f52082a.putInt(this.f51804b, ((Number) obj).intValue());
    }
}
