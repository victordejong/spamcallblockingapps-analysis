package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.z.c.l;
/* renamed from: e.a.n.h2 */
/* loaded from: classes5-dex2jar.jar:e/a/n/h2.class */
public class C18340h2 extends AbstractC18454z0<String> {

    /* renamed from: b */
    public final String f51801b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18340h2(String str, AbstractC8541a abstractC8541a) {
        super(abstractC8541a);
        l.e(str, AnalyticsConstants.KEY);
        l.e(abstractC8541a, "coreSettings");
        this.f51801b = str;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    /* renamed from: b */
    public boolean mo14983b(Object obj) {
        boolean z = false;
        if (obj instanceof String) {
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
        return this.f51801b;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public Object getValue() {
        String string = this.f52109a.getString(this.f51801b, "");
        l.d(string, "coreSettings.getString(key, \"\")");
        return string;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public void setValue(Object obj) {
        String str = (String) obj;
        l.e(str, "value");
        this.f52109a.putString(this.f51801b, str);
    }
}
