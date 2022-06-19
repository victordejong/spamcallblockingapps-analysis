package p193e.p194a.p1011l.p1012a;

import android.os.Bundle;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.a.d0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/d0.class */
public final class C16569d0 implements AbstractC16567c0 {

    /* renamed from: a */
    public SubscriptionPromoEventMetaData f46567a;

    /* renamed from: b */
    public String f46568b;

    /* renamed from: c */
    public String f46569c;

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16567c0
    /* renamed from: a */
    public String mo17239a() {
        String str = this.f46568b;
        this.f46568b = null;
        return str;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16567c0
    /* renamed from: b */
    public void mo17238b(String str) {
        l.e(str, "feature");
        this.f46568b = str;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16567c0
    /* renamed from: c */
    public String mo17237c() {
        return this.f46569c;
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16567c0
    /* renamed from: d */
    public void mo17236d(Bundle bundle) {
        l.e(bundle, "params");
        this.f46568b = bundle.getString("f");
        String string = bundle.getString(AbstractC2405c.f7629a);
        this.f46567a = string != null ? new SubscriptionPromoEventMetaData(C22128a.m8627e2("UUID.randomUUID().toString()"), string) : null;
        this.f46569c = bundle.getString("s");
    }

    @Override // p193e.p194a.p1011l.p1012a.AbstractC16567c0
    /* renamed from: e */
    public SubscriptionPromoEventMetaData mo17235e() {
        SubscriptionPromoEventMetaData subscriptionPromoEventMetaData = this.f46567a;
        this.f46567a = null;
        return subscriptionPromoEventMetaData;
    }
}
