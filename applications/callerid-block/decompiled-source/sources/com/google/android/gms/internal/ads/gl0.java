package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gl0.class */
public final class gl0 {

    /* renamed from: a */
    private final sz1 f6659a;

    /* renamed from: b */
    private final ql0 f6660b;

    /* renamed from: c */
    private final vl0 f6661c;

    public gl0(sz1 sz1Var, ql0 ql0Var, vl0 vl0Var) {
        this.f6659a = sz1Var;
        this.f6660b = ql0Var;
        this.f6661c = vl0Var;
    }

    /* renamed from: a */
    public final rz1<si0> m7363a(final ml1 ml1Var, final al1 al1Var, final JSONObject jSONObject) {
        final rz1 rz1Var;
        JSONObject optJSONObject;
        final rz1 a = this.f6659a.m5553a(new Callable(this, ml1Var, al1Var, jSONObject) { // from class: com.google.android.gms.internal.ads.el0

            /* renamed from: a */
            private final ml1 f6415a;

            /* renamed from: b */
            private final al1 f6416b;

            /* renamed from: c */
            private final JSONObject f6417c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6415a = ml1Var;
                this.f6416b = al1Var;
                this.f6417c = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ml1 ml1Var2 = this.f6415a;
                al1 al1Var2 = this.f6416b;
                JSONObject jSONObject2 = this.f6417c;
                si0 si0Var = new si0();
                si0Var.m5745A(jSONObject2.optInt("template_id", -1));
                si0Var.m5731O(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject2 = jSONObject2.optJSONObject("omid_settings");
                si0Var.m5724V(optJSONObject2 != null ? optJSONObject2.optString("omid_partner_name") : null);
                sl1 sl1Var = ml1Var2.f7582a.f6809a;
                if (sl1Var.f8502g.contains(Integer.toString(si0Var.m5722X()))) {
                    if (si0Var.m5722X() == 3) {
                        if (si0Var.m5702n() == null) {
                            throw new zzczn(1, "No custom template id for custom template ad response.");
                        } else if (!sl1Var.f8503h.contains(si0Var.m5702n())) {
                            throw new zzczn(1, "Unexpected custom template id in the response.");
                        }
                    }
                    si0Var.m5734L(jSONObject2.optDouble("rating", -1.0d));
                    String optString = jSONObject2.optString("headline", null);
                    String str = optString;
                    if (al1Var2.f5988H) {
                        C1407r.m8920d();
                        String b = C1433l1.m8769b();
                        StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 3 + String.valueOf(optString).length());
                        sb.append(b);
                        sb.append(" : ");
                        sb.append(optString);
                        str = sb.toString();
                    }
                    si0Var.m5727S("headline", str);
                    si0Var.m5727S("body", jSONObject2.optString("body", null));
                    si0Var.m5727S("call_to_action", jSONObject2.optString("call_to_action", null));
                    si0Var.m5727S("store", jSONObject2.optString("store", null));
                    si0Var.m5727S("price", jSONObject2.optString("price", null));
                    si0Var.m5727S("advertiser", jSONObject2.optString("advertiser", null));
                    return si0Var;
                }
                int X = si0Var.m5722X();
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Invalid template ID: ");
                sb2.append(X);
                throw new zzczn(1, sb2.toString());
            }
        });
        final rz1<List<r5>> b = this.f6660b.m6102b(jSONObject, "images");
        final rz1<r5> a2 = this.f6660b.m6103a(jSONObject, "secondary_image");
        final rz1<r5> a3 = this.f6660b.m6103a(jSONObject, "app_icon");
        final rz1<p5> c = this.f6660b.m6101c(jSONObject, "attribution");
        final rz1<jt> d = this.f6660b.m6100d(jSONObject);
        ql0 ql0Var = this.f6660b;
        if (jSONObject.optBoolean("enable_omid") && (optJSONObject = jSONObject.optJSONObject("omid_settings")) != null) {
            String optString = optJSONObject.optString("omid_html");
            if (!TextUtils.isEmpty(optString)) {
                rz1Var = kz1.h(kz1.a((Object) null), new ll0(ql0Var, optString), C2073zo.f9414e);
                final rz1<List<ul0>> a4 = this.f6661c.m5213a(jSONObject, "custom_assets");
                return kz1.k(new rz1[]{a, b, a2, a3, c, d, rz1Var, a4}).m6894a(new Callable(this, a, b, a3, a2, c, jSONObject, d, rz1Var, a4) { // from class: com.google.android.gms.internal.ads.fl0

                    /* renamed from: a */
                    private final rz1 f6500a;

                    /* renamed from: b */
                    private final rz1 f6501b;

                    /* renamed from: c */
                    private final rz1 f6502c;

                    /* renamed from: d */
                    private final rz1 f6503d;

                    /* renamed from: e */
                    private final rz1 f6504e;

                    /* renamed from: f */
                    private final JSONObject f6505f;

                    /* renamed from: g */
                    private final rz1 f6506g;

                    /* renamed from: h */
                    private final rz1 f6507h;

                    /* renamed from: i */
                    private final rz1 f6508i;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6500a = a;
                        this.f6501b = b;
                        this.f6502c = a3;
                        this.f6503d = a2;
                        this.f6504e = c;
                        this.f6505f = jSONObject;
                        this.f6506g = d;
                        this.f6507h = rz1Var;
                        this.f6508i = a4;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        rz1 rz1Var2 = this.f6500a;
                        rz1 rz1Var3 = this.f6501b;
                        rz1 rz1Var4 = this.f6502c;
                        rz1 rz1Var5 = this.f6503d;
                        rz1 rz1Var6 = this.f6504e;
                        JSONObject jSONObject2 = this.f6505f;
                        rz1 rz1Var7 = this.f6506g;
                        rz1 rz1Var8 = this.f6507h;
                        rz1 rz1Var9 = this.f6508i;
                        si0 si0Var = (si0) rz1Var2.get();
                        si0Var.m5738H((List) rz1Var3.get());
                        si0Var.m5733M((AbstractC1746g6) rz1Var4.get());
                        si0Var.m5732N((AbstractC1746g6) rz1Var5.get());
                        si0Var.m5739G((AbstractC2063z5) rz1Var6.get());
                        si0Var.m5737I(ql0.m6096h(jSONObject2));
                        si0Var.m5736J(ql0.m6097g(jSONObject2));
                        jt jtVar = (jt) rz1Var7.get();
                        if (jtVar != null) {
                            si0Var.m5730P(jtVar);
                            si0Var.m5735K(jtVar.G());
                            si0Var.m5740F(jtVar.e());
                        }
                        jt jtVar2 = (jt) rz1Var8.get();
                        if (jtVar2 != null) {
                            si0Var.m5729Q(jtVar2);
                        }
                        for (ul0 ul0Var : (List) rz1Var9.get()) {
                            if (ul0Var.f8796a != 1) {
                                si0Var.m5726T(ul0Var.f8797b, ul0Var.f8799d);
                            } else {
                                si0Var.m5727S(ul0Var.f8797b, ul0Var.f8798c);
                            }
                        }
                        return si0Var;
                    }
                }, this.f6659a);
            }
        }
        rz1Var = kz1.a((Object) null);
        final rz1 a42 = this.f6661c.m5213a(jSONObject, "custom_assets");
        return kz1.k(new rz1[]{a, b, a2, a3, c, d, rz1Var, a42}).m6894a(new Callable(this, a, b, a3, a2, c, jSONObject, d, rz1Var, a42) { // from class: com.google.android.gms.internal.ads.fl0

            /* renamed from: a */
            private final rz1 f6500a;

            /* renamed from: b */
            private final rz1 f6501b;

            /* renamed from: c */
            private final rz1 f6502c;

            /* renamed from: d */
            private final rz1 f6503d;

            /* renamed from: e */
            private final rz1 f6504e;

            /* renamed from: f */
            private final JSONObject f6505f;

            /* renamed from: g */
            private final rz1 f6506g;

            /* renamed from: h */
            private final rz1 f6507h;

            /* renamed from: i */
            private final rz1 f6508i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6500a = a;
                this.f6501b = b;
                this.f6502c = a3;
                this.f6503d = a2;
                this.f6504e = c;
                this.f6505f = jSONObject;
                this.f6506g = d;
                this.f6507h = rz1Var;
                this.f6508i = a42;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                rz1 rz1Var2 = this.f6500a;
                rz1 rz1Var3 = this.f6501b;
                rz1 rz1Var4 = this.f6502c;
                rz1 rz1Var5 = this.f6503d;
                rz1 rz1Var6 = this.f6504e;
                JSONObject jSONObject2 = this.f6505f;
                rz1 rz1Var7 = this.f6506g;
                rz1 rz1Var8 = this.f6507h;
                rz1 rz1Var9 = this.f6508i;
                si0 si0Var = (si0) rz1Var2.get();
                si0Var.m5738H((List) rz1Var3.get());
                si0Var.m5733M((AbstractC1746g6) rz1Var4.get());
                si0Var.m5732N((AbstractC1746g6) rz1Var5.get());
                si0Var.m5739G((AbstractC2063z5) rz1Var6.get());
                si0Var.m5737I(ql0.m6096h(jSONObject2));
                si0Var.m5736J(ql0.m6097g(jSONObject2));
                jt jtVar = (jt) rz1Var7.get();
                if (jtVar != null) {
                    si0Var.m5730P(jtVar);
                    si0Var.m5735K(jtVar.G());
                    si0Var.m5740F(jtVar.e());
                }
                jt jtVar2 = (jt) rz1Var8.get();
                if (jtVar2 != null) {
                    si0Var.m5729Q(jtVar2);
                }
                for (ul0 ul0Var : (List) rz1Var9.get()) {
                    if (ul0Var.f8796a != 1) {
                        si0Var.m5726T(ul0Var.f8797b, ul0Var.f8799d);
                    } else {
                        si0Var.m5727S(ul0Var.f8797b, ul0Var.f8798c);
                    }
                }
                return si0Var;
            }
        }, this.f6659a);
    }
}
