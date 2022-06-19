package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import com.truecaller.settings.CallingSettings;
import s1.z.c.l;
/* renamed from: e.a.n.g2 */
/* loaded from: classes5-dex2jar.jar:e/a/n/g2.class */
public class C18336g2 extends AbstractC18436u0<String> {

    /* renamed from: b */
    public final String f51794b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18336g2(String str, CallingSettings callingSettings) {
        super(callingSettings);
        l.e(str, AnalyticsConstants.KEY);
        l.e(callingSettings, "callingSettings");
        this.f51794b = str;
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
        return this.f51794b;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public Object getValue() {
        return this.f52082a.getString(this.f51794b);
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public void setValue(Object obj) {
        this.f52082a.putString(this.f51794b, (String) obj);
    }
}
