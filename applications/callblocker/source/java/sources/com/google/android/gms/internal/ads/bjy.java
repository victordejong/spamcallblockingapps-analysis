package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.C2341q;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjy.class */
public final class bjy {

    /* renamed from: a */
    private final Context f11407a;

    /* renamed from: b */
    private final C3647yd f11408b;

    /* renamed from: c */
    private final chh f11409c;

    /* renamed from: d */
    private final Executor f11410d;

    public bjy(Context context, C3647yd c3647yd, chh chhVar, Executor executor) {
        this.f11407a = context;
        this.f11408b = c3647yd;
        this.f11409c = chhVar;
        this.f11410d = executor;
    }

    /* renamed from: a */
    public final crt<chd> m11840a() {
        AbstractC3244jf m7725a = C2341q.m14731p().m7730b(this.f11407a, this.f11408b).m7725a("google.afma.response.normalize", C3247ji.f16804a, C3247ji.f16804a);
        return crg.m10782a(crg.m10782a(crg.m10782a(crg.m10778a(""), new cqt(this, this.f11409c.f13040d.f16085s) { // from class: com.google.android.gms.internal.ads.bjx

            /* renamed from: a */
            private final bjy f11405a;

            /* renamed from: b */
            private final dxu f11406b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11405a = this;
                this.f11406b = dxuVar;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                dxu dxuVar2 = this.f11406b;
                String str = (String) obj;
                String str2 = dxuVar2.f16043a;
                String str3 = dxuVar2.f16044b;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("headers", new JSONObject());
                jSONObject3.put("body", str2);
                jSONObject2.put("base_url", "");
                jSONObject2.put("signals", new JSONObject(str3));
                jSONObject.put("request", jSONObject2);
                jSONObject.put("response", jSONObject3);
                jSONObject.put("flags", new JSONObject());
                return crg.m10778a(jSONObject);
            }
        }, this.f11410d), new cqt(m7725a) { // from class: com.google.android.gms.internal.ads.bka

            /* renamed from: a */
            private final AbstractC3244jf f11412a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11412a = m7725a;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11412a.mo7721b((JSONObject) obj);
            }
        }, this.f11410d), new cqt(this) { // from class: com.google.android.gms.internal.ads.bjz

            /* renamed from: a */
            private final bjy f11411a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11411a = this;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return this.f11411a.m11839a((JSONObject) obj);
            }
        }, this.f11410d);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11839a(JSONObject jSONObject) {
        return crg.m10778a(new chd(new cgx(this.f11409c), cha.m11360a(new StringReader(jSONObject.toString()))));
    }
}
