package p193e.p194a.p1066n;

import com.razorpay.AnalyticsConstants;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
/* renamed from: e.a.n.o0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/o0.class */
public class C18397o0 extends AbstractC18440v1<Boolean> {

    /* renamed from: a */
    public final String f51960a;

    public C18397o0(String str) {
        l.e(str, AnalyticsConstants.KEY);
        this.f51960a = str;
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
        return this.f51960a;
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public Object getValue() {
        return Boolean.valueOf(C15571h.m18643h(this.f51960a));
    }

    @Override // p193e.p194a.p1066n.AbstractC18438v
    public void setValue(Object obj) {
        C15571h.m18626y(this.f51960a, ((Boolean) obj).booleanValue());
    }
}
