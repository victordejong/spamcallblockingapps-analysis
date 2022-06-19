package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/aq1.class */
public final class aq1 implements b31, u51, r41 {

    /* renamed from: d */
    private final lq1 f20078d;

    /* renamed from: e */
    private final String f20079e;

    /* renamed from: f */
    private int f20080f = 0;

    /* renamed from: g */
    private zzdxp f20081g = zzdxp.AD_REQUESTED;

    /* renamed from: h */
    private q21 f20082h;

    /* renamed from: i */
    private zzbcz f20083i;

    public aq1(lq1 lq1Var, xj2 xj2Var) {
        this.f20078d = lq1Var;
        this.f20079e = xj2Var.f32079f;
    }

    /* renamed from: c */
    private static JSONObject m16507c(q21 q21Var) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", q21Var.mo12041a());
        jSONObject.put("responseSecsSinceEpoch", q21Var.m12043E6());
        jSONObject.put("responseId", q21Var.mo12040d());
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25490G6)).booleanValue()) {
            String m12042F6 = q21Var.m12042F6();
            if (!TextUtils.isEmpty(m12042F6)) {
                String valueOf = String.valueOf(m12042F6);
                ei0.m15469a(valueOf.length() != 0 ? "Bidding data: ".concat(valueOf) : new String("Bidding data: "));
                jSONObject.put("biddingData", new JSONObject(m12042F6));
            }
        }
        JSONArray jSONArray = new JSONArray();
        List<zzbdp> zzg = q21Var.zzg();
        if (zzg != null) {
            for (zzbdp zzbdpVar : zzg) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("adapterClassName", zzbdpVar.f33701d);
                jSONObject2.put("latencyMillis", zzbdpVar.f33702e);
                zzbcz zzbczVar = zzbdpVar.f33703f;
                jSONObject2.put("error", zzbczVar == null ? null : m16506d(zzbczVar));
                jSONArray.put(jSONObject2);
            }
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    /* renamed from: d */
    private static JSONObject m16506d(zzbcz zzbczVar) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", zzbczVar.f33655f);
        jSONObject.put("errorCode", zzbczVar.f33653d);
        jSONObject.put("errorDescription", zzbczVar.f33654e);
        zzbcz zzbczVar2 = zzbczVar.f33656g;
        jSONObject.put("underlyingError", zzbczVar2 == null ? null : m16506d(zzbczVar2));
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.r41
    /* renamed from: N */
    public final void mo11723N(xy0 xy0Var) {
        this.f20082h = xy0Var.m9018d();
        this.f20081g = zzdxp.AD_LOADED;
    }

    @Override // com.google.android.gms.internal.ads.b31
    /* renamed from: O */
    public final void mo9146O(zzbcz zzbczVar) {
        this.f20081g = zzdxp.AD_LOAD_FAILED;
        this.f20083i = zzbczVar;
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: S */
    public final void mo10409S(rj2 rj2Var) {
        if (!rj2Var.f28999b.f28518a.isEmpty()) {
            this.f20080f = rj2Var.f28999b.f28518a.get(0).f22221b;
        }
    }

    /* renamed from: a */
    public final boolean m16509a() {
        return this.f20081g != zzdxp.AD_REQUESTED;
    }

    /* renamed from: b */
    public final JSONObject m16508b() {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("state", this.f20081g);
        jSONObject2.put("format", ej2.m15450a(this.f20080f));
        q21 q21Var = this.f20082h;
        if (q21Var != null) {
            jSONObject = m16507c(q21Var);
        } else {
            zzbcz zzbczVar = this.f20083i;
            jSONObject = null;
            if (zzbczVar != null) {
                IBinder iBinder = zzbczVar.f33657h;
                jSONObject = null;
                if (iBinder != null) {
                    q21 q21Var2 = (q21) iBinder;
                    JSONObject m16507c = m16507c(q21Var2);
                    List<zzbdp> zzg = q21Var2.zzg();
                    jSONObject = m16507c;
                    if (zzg != null) {
                        jSONObject = m16507c;
                        if (zzg.isEmpty()) {
                            JSONArray jSONArray = new JSONArray();
                            jSONArray.put(m16506d(this.f20083i));
                            m16507c.put("errors", jSONArray);
                            jSONObject = m16507c;
                        }
                    }
                }
            }
        }
        jSONObject2.put("responseInfo", jSONObject);
        return jSONObject2;
    }

    @Override // com.google.android.gms.internal.ads.u51
    /* renamed from: u */
    public final void mo10408u(zzcbj zzcbjVar) {
        this.f20078d.m13446j(this.f20079e, this);
    }
}
