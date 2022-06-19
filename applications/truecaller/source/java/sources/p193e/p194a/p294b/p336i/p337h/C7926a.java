package p193e.p194a.p294b.p336i.p337h;

import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackAction;
import com.truecaller.bizmon.callMeBack.analytics.BizCallMeBackContext;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1050l5.p1051a.C17604j3;
import p193e.p194a.p1050l5.p1051a.C17657n;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.b.i.h.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/i/h/a.class */
public final class C7926a implements AbstractC19549v {

    /* renamed from: a */
    public final BizCallMeBackContext f24549a;

    /* renamed from: b */
    public final BizCallMeBackAction f24550b;

    /* renamed from: c */
    public final String f24551c;

    /* renamed from: d */
    public final String f24552d;

    /* renamed from: e */
    public final String f24553e;

    public C7926a(BizCallMeBackContext bizCallMeBackContext, BizCallMeBackAction bizCallMeBackAction, String str, String str2, String str3) {
        l.e(bizCallMeBackContext, AnalyticsConstants.CONTEXT);
        l.e(bizCallMeBackAction, "action");
        this.f24549a = bizCallMeBackContext;
        this.f24550b = bizCallMeBackAction;
        this.f24551c = str;
        this.f24552d = str2;
        this.f24553e = str3;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17657n.f49843h;
        C17657n.C17659b c17659b = new C17657n.C17659b(null);
        c17659b.m15880b(this.f24550b.getValue());
        c17659b.m15879c(this.f24549a.getValue());
        String str = this.f24553e;
        c17659b.validate(c17659b.fields()[5], str);
        c17659b.f49857d = str;
        c17659b.fieldSetFlags()[5] = true;
        c17659b.m15878d("");
        C17604j3.C17606b m15929a = C17604j3.m15929a();
        m15929a.m15927b(this.f24551c);
        m15929a.m15926c(this.f24552d);
        m15929a.m15925d("");
        C17604j3 build = m15929a.build();
        c17659b.validate(c17659b.fields()[6], build);
        c17659b.f49858e = build;
        c17659b.fieldSetFlags()[6] = true;
        return new AbstractC19580x.C19585e(i.y0(new AbstractC19580x.C19584d(c17659b.build())));
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C7926a)) {
                return false;
            }
            C7926a c7926a = (C7926a) obj;
            return l.a(this.f24549a, c7926a.f24549a) && l.a(this.f24550b, c7926a.f24550b) && l.a(this.f24551c, c7926a.f24551c) && l.a(this.f24552d, c7926a.f24552d) && l.a(this.f24553e, c7926a.f24553e);
        }
        return true;
    }

    public int hashCode() {
        BizCallMeBackContext bizCallMeBackContext = this.f24549a;
        int i = 0;
        int hashCode = bizCallMeBackContext != null ? bizCallMeBackContext.hashCode() : 0;
        BizCallMeBackAction bizCallMeBackAction = this.f24550b;
        int hashCode2 = bizCallMeBackAction != null ? bizCallMeBackAction.hashCode() : 0;
        String str = this.f24551c;
        int hashCode3 = str != null ? str.hashCode() : 0;
        String str2 = this.f24552d;
        int hashCode4 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f24553e;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("BizCallMeBackAnalyticEvent(context=");
        m8728C.append(this.f24549a);
        m8728C.append(", action=");
        m8728C.append(this.f24550b);
        m8728C.append(", countryCode=");
        m8728C.append(this.f24551c);
        m8728C.append(", phoneNumber=");
        m8728C.append(this.f24552d);
        m8728C.append(", extraInfo=");
        return C22128a.m8618h(m8728C, this.f24553e, ")");
    }
}
