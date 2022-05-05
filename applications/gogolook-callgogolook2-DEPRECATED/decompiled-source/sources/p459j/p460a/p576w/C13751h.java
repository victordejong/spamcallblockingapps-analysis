package p459j.p460a.p576w;

import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.share.Constants;
import com.mopub.network.ImpressionData;
import gogolook.callgogolook2.realm.obj.iap.PlanProductRealmObject;
import p081h.p093b.p094a.p095a.C5552i;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.p590x4.C14296p;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.h */
/* loaded from: classes2-dex2jar.jar:j/a/w/h.class */
public final class C13751h {

    /* renamed from: a */
    public static final C13751h f30860a = new C13751h();

    /* renamed from: a */
    public final void m3527a(C5552i iVar, int i, Integer num, String str, String str2) {
        C15149k.m377b(iVar, PlanProductRealmObject.SKU_DETAILS);
        C15149k.m377b(str, "source");
        String k = iVar.m25145k();
        C15149k.m383a((Object) k, "skuDetails.sku");
        double a = C14021h2.f31457a.m2796a(iVar.m25147i());
        String j = iVar.m25146j();
        C15149k.m383a((Object) j, "skuDetails.priceCurrencyCode");
        C14296p.C14297a.C14298a aVar = new C14296p.C14297a.C14298a();
        aVar.m1808a("ver", (Integer) 1);
        aVar.m1807a(Constants.URL_MEDIA_SOURCE, k);
        aVar.m1807a("price", String.valueOf(a));
        aVar.m1807a(ImpressionData.CURRENCY, j);
        aVar.m1808a(Payload.RESPONSE, Integer.valueOf(i));
        if (num == null) {
            num = -1;
        }
        aVar.m1808a("purchase_state", num);
        aVar.m1807a("source", str);
        if (str2 == null) {
            str2 = "none";
        }
        aVar.m1807a("material", str2);
        C14296p.m1830a("whoscall_iap_subscription", aVar.m1811a());
    }
}
