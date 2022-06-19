package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/fh1.class */
public final class fh1 {

    /* renamed from: a */
    private final s03 f22897a;

    /* renamed from: b */
    private final th1 f22898b;

    /* renamed from: c */
    private final yh1 f22899c;

    public fh1(s03 s03Var, th1 th1Var, yh1 yh1Var) {
        this.f22897a = s03Var;
        this.f22898b = th1Var;
        this.f22899c = yh1Var;
    }

    /* renamed from: a */
    public final r03<re1> m15199a(rj2 rj2Var, ej2 ej2Var, JSONObject jSONObject) {
        r03 r03Var;
        r03 mo11185a = this.f22897a.mo11185a(new Callable(this, rj2Var, ej2Var, jSONObject) { // from class: com.google.android.gms.internal.ads.dh1

            /* renamed from: a */
            private final fh1 f21627a;

            /* renamed from: b */
            private final rj2 f21628b;

            /* renamed from: c */
            private final ej2 f21629c;

            /* renamed from: d */
            private final JSONObject f21630d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21627a = this;
                this.f21628b = rj2Var;
                this.f21629c = ej2Var;
                this.f21630d = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                rj2 rj2Var2 = this.f21628b;
                ej2 ej2Var2 = this.f21629c;
                JSONObject jSONObject2 = this.f21630d;
                re1 re1Var = new re1();
                re1Var.m11546A(jSONObject2.optInt("template_id", -1));
                re1Var.m11527T(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                re1Var.m11517b0(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
                xj2 xj2Var = rj2Var2.f28998a.f27577a;
                if (!xj2Var.f32080g.contains(Integer.toString(re1Var.m11513d0()))) {
                    int m11513d0 = re1Var.m11513d0();
                    StringBuilder sb = new StringBuilder(32);
                    sb.append("Invalid template ID: ");
                    sb.append(m11513d0);
                    throw new zzehs(1, sb.toString());
                }
                if (re1Var.m11513d0() == 3) {
                    if (re1Var.m11496q() == null) {
                        throw new zzehs(1, "No custom template id for custom template ad response.");
                    }
                    if (!xj2Var.f32081h.contains(re1Var.m11496q())) {
                        throw new zzehs(1, "Unexpected custom template id in the response.");
                    }
                }
                re1Var.m11530Q(jSONObject2.optDouble("rating", -1.0d));
                String optString = jSONObject2.optString("headline", null);
                String str = optString;
                if (ej2Var2.f22201I) {
                    C5667s.m18160d();
                    String m18077c = C5679c2.m18077c();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(m18077c).length() + 3 + String.valueOf(optString).length());
                    sb2.append(m18077c);
                    sb2.append(" : ");
                    sb2.append(optString);
                    str = sb2.toString();
                }
                re1Var.m11522Y("headline", str);
                re1Var.m11522Y("body", jSONObject2.optString("body", null));
                re1Var.m11522Y("call_to_action", jSONObject2.optString("call_to_action", null));
                re1Var.m11522Y("store", jSONObject2.optString("store", null));
                re1Var.m11522Y("price", jSONObject2.optString("price", null));
                re1Var.m11522Y("advertiser", jSONObject2.optString("advertiser", null));
                return re1Var;
            }
        });
        r03<List<BinderC6940ry>> m10675b = this.f22898b.m10675b(jSONObject, "images");
        r03<wn0> m10674c = this.f22898b.m10674c(jSONObject, "images", ej2Var, rj2Var.f28999b.f28519b);
        r03<BinderC6940ry> m10676a = this.f22898b.m10676a(jSONObject, "secondary_image");
        r03<BinderC6940ry> m10676a2 = this.f22898b.m10676a(jSONObject, "app_icon");
        r03<BinderC6866py> m10673d = this.f22898b.m10673d(jSONObject, "attribution");
        r03<wn0> m10672e = this.f22898b.m10672e(jSONObject, ej2Var, rj2Var.f28999b.f28519b);
        th1 th1Var = this.f22898b;
        if (!jSONObject.optBoolean("enable_omid")) {
            r03Var = k03.m14003a(null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                r03Var = k03.m14003a(null);
            } else {
                String optString = optJSONObject.optString("omid_html");
                r03Var = TextUtils.isEmpty(optString) ? k03.m14003a(null) : k03.m13995i(k03.m14003a(null), new uz2(th1Var, optString) { // from class: com.google.android.gms.internal.ads.oh1

                    /* renamed from: a */
                    private final th1 f27542a;

                    /* renamed from: b */
                    private final String f27543b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f27542a = th1Var;
                        this.f27543b = optString;
                    }

                    @Override // com.google.android.gms.internal.ads.uz2
                    /* renamed from: a */
                    public final r03 mo8403a(Object obj) {
                        return this.f27542a.m10671f(this.f27543b, obj);
                    }
                }, qi0.f28499e);
            }
        }
        r03<List<xh1>> m8822a = this.f22899c.m8822a(jSONObject, "custom_assets");
        return k03.m13992l(mo11185a, m10675b, m10674c, m10676a, m10676a2, m10673d, m10672e, r03Var, m8822a).m14516a(new Callable(this, mo11185a, m10675b, m10676a2, m10676a, m10673d, jSONObject, m10672e, m10674c, r03Var, m8822a) { // from class: com.google.android.gms.internal.ads.eh1

            /* renamed from: a */
            private final fh1 f22167a;

            /* renamed from: b */
            private final r03 f22168b;

            /* renamed from: c */
            private final r03 f22169c;

            /* renamed from: d */
            private final r03 f22170d;

            /* renamed from: e */
            private final r03 f22171e;

            /* renamed from: f */
            private final r03 f22172f;

            /* renamed from: g */
            private final JSONObject f22173g;

            /* renamed from: h */
            private final r03 f22174h;

            /* renamed from: i */
            private final r03 f22175i;

            /* renamed from: j */
            private final r03 f22176j;

            /* renamed from: k */
            private final r03 f22177k;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f22167a = this;
                this.f22168b = mo11185a;
                this.f22169c = m10675b;
                this.f22170d = m10676a2;
                this.f22171e = m10676a;
                this.f22172f = m10673d;
                this.f22173g = jSONObject;
                this.f22174h = m10672e;
                this.f22175i = m10674c;
                this.f22176j = r03Var;
                this.f22177k = m8822a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                r03 r03Var3 = this.f22168b;
                r03 r03Var4 = this.f22169c;
                r03 r03Var5 = this.f22170d;
                r03 r03Var6 = this.f22171e;
                r03 r03Var7 = this.f22172f;
                JSONObject jSONObject2 = this.f22173g;
                r03 r03Var8 = this.f22174h;
                r03 r03Var9 = this.f22175i;
                r03 r03Var10 = this.f22176j;
                r03 r03Var11 = this.f22177k;
                re1 re1Var = (re1) r03Var3.get();
                re1Var.m11535L((List) r03Var4.get());
                re1Var.m11529R((AbstractC6533gz) r03Var5.get());
                re1Var.m11528S((AbstractC6533gz) r03Var6.get());
                re1Var.m11536K((AbstractC7199yy) r03Var7.get());
                re1Var.m11534M(th1.m10667j(jSONObject2));
                re1Var.m11533N(th1.m10668i(jSONObject2));
                wn0 wn0Var = (wn0) r03Var8.get();
                if (wn0Var != null) {
                    re1Var.m11526U(wn0Var);
                    re1Var.m11532O(wn0Var.mo7960D());
                    re1Var.m11537J(wn0Var.mo7909f());
                }
                wn0 wn0Var2 = (wn0) r03Var9.get();
                if (wn0Var2 != null) {
                    re1Var.m11525V(wn0Var2);
                    re1Var.m11531P(wn0Var2.mo7960D());
                }
                wn0 wn0Var3 = (wn0) r03Var10.get();
                if (wn0Var3 != null) {
                    re1Var.m11524W(wn0Var3);
                }
                for (xh1 xh1Var : (List) r03Var11.get()) {
                    if (xh1Var.f32056a != 1) {
                        re1Var.m11521Z(xh1Var.f32057b, xh1Var.f32059d);
                    } else {
                        re1Var.m11522Y(xh1Var.f32057b, xh1Var.f32058c);
                    }
                }
                return re1Var;
            }
        }, this.f22897a);
    }
}
