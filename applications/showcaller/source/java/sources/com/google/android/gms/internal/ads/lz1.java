package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.C6237o;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lz1.class */
public final class lz1 implements fz1<me1> {

    /* renamed from: a */
    private final fd1 f26356a;

    /* renamed from: b */
    private final s03 f26357b;

    /* renamed from: c */
    private final fh1 f26358c;

    /* renamed from: d */
    private final pk2<qj1> f26359d;

    /* renamed from: e */
    private final wj1 f26360e;

    public lz1(fd1 fd1Var, s03 s03Var, fh1 fh1Var, pk2<qj1> pk2Var, wj1 wj1Var) {
        this.f26356a = fd1Var;
        this.f26357b = s03Var;
        this.f26358c = fh1Var;
        this.f26359d = pk2Var;
        this.f26360e = wj1Var;
    }

    /* renamed from: g */
    private final r03<me1> m13382g(rj2 rj2Var, ej2 ej2Var, JSONObject jSONObject) {
        r03<qj1> m12222b = this.f26359d.m12222b();
        r03<re1> m15199a = this.f26358c.m15199a(rj2Var, ej2Var, jSONObject);
        return k03.m13990n(m12222b, m15199a).m14516a(new Callable(this, m15199a, m12222b, rj2Var, ej2Var, jSONObject) { // from class: com.google.android.gms.internal.ads.kz1

            /* renamed from: a */
            private final lz1 f25893a;

            /* renamed from: b */
            private final r03 f25894b;

            /* renamed from: c */
            private final r03 f25895c;

            /* renamed from: d */
            private final rj2 f25896d;

            /* renamed from: e */
            private final ej2 f25897e;

            /* renamed from: f */
            private final JSONObject f25898f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25893a = this;
                this.f25894b = m15199a;
                this.f25895c = m12222b;
                this.f25896d = rj2Var;
                this.f25897e = ej2Var;
                this.f25898f = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f25893a.m13386c(this.f25894b, this.f25895c, this.f25896d, this.f25897e, this.f25898f);
            }
        }, this.f26357b);
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: a */
    public final boolean mo8628a(rj2 rj2Var, ej2 ej2Var) {
        kj2 kj2Var = ej2Var.f22247s;
        return (kj2Var == null || kj2Var.f25235c == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.qw1
    /* renamed from: b */
    public final r03<List<r03<me1>>> mo8627b(rj2 rj2Var, ej2 ej2Var) {
        return k03.m13995i(k03.m13995i(this.f26359d.m12222b(), new uz2(this, ej2Var) { // from class: com.google.android.gms.internal.ads.gz1

            /* renamed from: a */
            private final lz1 f23756a;

            /* renamed from: b */
            private final ej2 f23757b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23756a = this;
                this.f23757b = ej2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f23756a.m13383f(this.f23757b, (qj1) obj);
            }
        }, this.f26357b), new uz2(this, rj2Var, ej2Var) { // from class: com.google.android.gms.internal.ads.hz1

            /* renamed from: a */
            private final lz1 f24094a;

            /* renamed from: b */
            private final rj2 f24095b;

            /* renamed from: c */
            private final ej2 f24096c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24094a = this;
                this.f24095b = rj2Var;
                this.f24096c = ej2Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f24094a.m13384e(this.f24095b, this.f24096c, (JSONArray) obj);
            }
        }, this.f26357b);
    }

    /* renamed from: c */
    public final /* synthetic */ me1 m13386c(r03 r03Var, r03 r03Var2, rj2 rj2Var, ej2 ej2Var, JSONObject jSONObject) {
        re1 re1Var = (re1) r03Var.get();
        qj1 qj1Var = (qj1) r03Var2.get();
        se1 mo10226c = this.f26356a.mo10226c(new mz0(rj2Var, ej2Var, null), new df1(re1Var), new sd1(jSONObject, qj1Var));
        mo10226c.mo11076i().m16030b();
        mo10226c.mo11075j().m13179a(qj1Var);
        mo10226c.mo11074k().m13505a(re1Var.m11495r());
        mo10226c.mo11073l().m9996a(this.f26360e);
        return mo10226c.mo10342h();
    }

    /* renamed from: d */
    public final /* synthetic */ r03 m13385d(qj1 qj1Var, JSONObject jSONObject) {
        this.f26359d.m12221c(k03.m14003a(qj1Var));
        if (jSONObject.optBoolean("success")) {
            return k03.m14003a(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzbtv("process json failed");
    }

    /* renamed from: e */
    public final /* synthetic */ r03 m13384e(rj2 rj2Var, ej2 ej2Var, JSONArray jSONArray) {
        r03 r03Var;
        if (jSONArray.length() == 0) {
            r03Var = k03.m14001c(new zzdym(3));
        } else {
            if (rj2Var.f28998a.f27577a.f32084k > 1) {
                int length = jSONArray.length();
                this.f26359d.m12223a(Math.min(length, rj2Var.f28998a.f27577a.f32084k));
                ArrayList arrayList = new ArrayList(rj2Var.f28998a.f27577a.f32084k);
                for (int i = 0; i < rj2Var.f28998a.f27577a.f32084k; i++) {
                    if (i < length) {
                        arrayList.add(m13382g(rj2Var, ej2Var, jSONArray.getJSONObject(i)));
                    } else {
                        arrayList.add(k03.m14001c(new zzdym(3)));
                    }
                }
                r03Var = k03.m14003a(arrayList);
            } else {
                r03Var = k03.m13994j(m13382g(rj2Var, ej2Var, jSONArray.getJSONObject(0)), jz1.f25033a, this.f26357b);
            }
        }
        return r03Var;
    }

    /* renamed from: f */
    public final /* synthetic */ r03 m13383f(ej2 ej2Var, qj1 qj1Var) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isNonagon", true);
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25693f6)).booleanValue() && C6237o.m16771m()) {
            jSONObject.put("skipDeepLinkValidation", true);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("response", ej2Var.f22247s.f25235c);
        jSONObject2.put("sdk_params", jSONObject);
        return k03.m13995i(qj1Var.m11877d("google.afma.nativeAds.preProcessJson", jSONObject2), new uz2(this, qj1Var) { // from class: com.google.android.gms.internal.ads.iz1

            /* renamed from: a */
            private final lz1 f24546a;

            /* renamed from: b */
            private final qj1 f24547b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24546a = this;
                this.f24547b = qj1Var;
            }

            @Override // com.google.android.gms.internal.ads.uz2
            /* renamed from: a */
            public final r03 mo8403a(Object obj) {
                return this.f24546a.m13385d(this.f24547b, (JSONObject) obj);
            }
        }, this.f26357b);
    }
}
