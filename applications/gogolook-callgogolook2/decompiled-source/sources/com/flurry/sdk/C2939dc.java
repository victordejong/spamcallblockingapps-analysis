package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import androidx.core.app.NotificationCompat;
import com.appsflyer.internal.referrer.Payload;
import com.flurry.sdk.AbstractC3472lt;
import com.flurry.sdk.C2931db;
import com.flurry.sdk.C3363jx;
import com.flurry.sdk.C3368jz;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.flurry.sdk.dc */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/dc.class */
public class C2939dc extends AbstractC3377kc<C2931db> {

    /* renamed from: a */
    public static final String f4564a = "dc";

    /* renamed from: a */
    public static /* synthetic */ void m33439a(C2931db dbVar, int i) {
        HashMap<String, Object> hashMap;
        if (dbVar != null) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put(NotificationCompat.CATEGORY_EVENT, dbVar.f4559a);
            hashMap2.put("url", dbVar.f5799q);
            hashMap2.put(Payload.RESPONSE, String.valueOf(i));
            C3484p.m32358a();
            C3484p.m32352a(dbVar.f4560b, EnumC2874bi.EV_SEND_URL_STATUS_RESULT, true, hashMap2);
            if ((i < 200 || i >= 300) && (hashMap = dbVar.f4561c) != null) {
                ((Integer) hashMap.get(AbstractC3472lt.EnumC3474b.BEACON_ERROR_CODE.f5980e)).intValue();
                AbstractC3472lt ltVar = C3461lm.m32419a().f5954a;
            }
        }
    }

    @Override // com.flurry.sdk.AbstractC3377kc
    /* renamed from: a */
    public final C3342jj<List<C2931db>> mo32566a() {
        return new C3342jj<>(C3331jb.m32681a().f5679a.getFileStreamPath(".yflurryreporter"), ".yflurryreporter", 3, new AbstractC3422ko<List<C2931db>>(this) { // from class: com.flurry.sdk.dc.1
            @Override // com.flurry.sdk.AbstractC3422ko
            /* renamed from: a */
            public final AbstractC3417kl<List<C2931db>> mo32339a(int i) {
                return i == 3 ? new C3414kk(new C2931db.C2936c()) : i == 2 ? new C3414kk(new C2931db.C2934b()) : new C3414kk(new C2931db.C2932a());
            }
        });
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final void mo32565a(final C2931db dbVar) {
        String str = f4564a;
        C3356jq.m32615a(3, str, "Sending next report for original url: " + dbVar.f5799q + " to current url:" + dbVar.f5800r);
        C3363jx jxVar = new C3363jx();
        jxVar.f5766g = dbVar.f5800r;
        jxVar.f5941u = 100000;
        jxVar.f5767h = C3368jz.EnumC3371a.kGet;
        jxVar.m32581a("User-Agent", C3018ee.m33279a(C3331jb.m32681a().f5679a));
        jxVar.f5770k = false;
        jxVar.f5751a = new C3363jx.AbstractC3365a<Void, Void>() { // from class: com.flurry.sdk.dc.2
            @Override // com.flurry.sdk.C3363jx.AbstractC3365a
            /* renamed from: a */
            public final /* synthetic */ void mo32321a(final C3363jx<Void, Void> jxVar2, Void r8) {
                C3356jq.m32615a(3, C2939dc.f4564a, "AsyncReportInfo request: HTTP status code is:" + jxVar2.f5776q);
                int i = jxVar2.f5776q;
                if (i >= 200 && i < 300) {
                    C3356jq.m32615a(3, C2939dc.f4564a, "Send report successful to url: " + jxVar2.f5766g);
                    C2939dc.this.m32557c((C2939dc) dbVar);
                    if (C3356jq.m32608c() <= 3 && C3356jq.m32605d()) {
                        C3331jb.m32681a().m32678a(new Runnable(this) { // from class: com.flurry.sdk.dc.2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                Context context = C3331jb.m32681a().f5679a;
                                Toast.makeText(context, "ADS AR HTTP Response Code: " + jxVar2.f5776q + " for url: " + jxVar2.f5766g, 1).show();
                            }
                        });
                    }
                    C2939dc.m33439a(dbVar, i);
                } else if (i < 300 || i >= 400) {
                    C3356jq.m32615a(3, C2939dc.f4564a, "Send report failed to url: " + jxVar2.f5766g);
                    C2931db dbVar2 = dbVar;
                    if (dbVar2.f5798p == 0) {
                        C2939dc.m33439a(dbVar2, i);
                    }
                    if (C3452lf.m32430g(dbVar.f5800r)) {
                        C2939dc.this.m32554d(dbVar);
                        return;
                    }
                    C3356jq.m32615a(3, C2939dc.f4564a, "Oops! url: " + jxVar2.f5766g + " is invalid, aborting transmission");
                    C2939dc.this.m32557c((C2939dc) dbVar);
                } else {
                    List<String> a = jxVar2.m32582a("Location");
                    String str2 = null;
                    if (a != null) {
                        str2 = null;
                        if (a.size() > 0) {
                            str2 = C3452lf.m32435b(a.get(0), dbVar.f5800r);
                        }
                    }
                    if (TextUtils.isEmpty(str2)) {
                        C3356jq.m32615a(3, C2939dc.f4564a, "Send report successful to url: " + jxVar2.f5766g);
                        C2939dc.this.m32557c((C2939dc) dbVar);
                        if (C3356jq.m32608c() <= 3 && C3356jq.m32605d()) {
                            C3331jb.m32681a().m32678a(new Runnable(this) { // from class: com.flurry.sdk.dc.2.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Context context = C3331jb.m32681a().f5679a;
                                    Toast.makeText(context, "ADS AR HTTP Response Code: " + jxVar2.f5776q + " for url: " + jxVar2.f5766g, 1).show();
                                }
                            });
                        }
                        C2939dc.m33439a(dbVar, i);
                        return;
                    }
                    C3356jq.m32615a(3, C2939dc.f4564a, "Send report redirecting to url: " + str2);
                    C2931db dbVar3 = dbVar;
                    dbVar3.f5800r = str2;
                    C2939dc.this.mo32565a(dbVar3);
                }
            }
        };
        C3323iz.m32690a().m32623a((Object) this, (C2939dc) jxVar);
    }
}
