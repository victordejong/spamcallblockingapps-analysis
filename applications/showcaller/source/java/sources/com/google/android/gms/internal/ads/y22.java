package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.allinone.callerid.bean.ShortCut;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y22.class */
public final class y22 extends t90 {

    /* renamed from: d */
    private final String f32398d;

    /* renamed from: e */
    private final r90 f32399e;

    /* renamed from: f */
    private final vi0<JSONObject> f32400f;

    /* renamed from: g */
    private final JSONObject f32401g;

    /* renamed from: h */
    private boolean f32402h = false;

    public y22(String str, r90 r90Var, vi0<JSONObject> vi0Var) {
        JSONObject jSONObject = new JSONObject();
        this.f32401g = jSONObject;
        this.f32400f = vi0Var;
        this.f32398d = str;
        this.f32399e = r90Var;
        try {
            jSONObject.put("adapter_version", r90Var.mo11645d().toString());
            jSONObject.put("sdk_version", r90Var.zzg().toString());
            jSONObject.put(ShortCut.NAME, str);
        } catch (RemoteException | NullPointerException | JSONException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.u90
    /* renamed from: B */
    public final void mo8973B(String str) {
        synchronized (this) {
            if (this.f32402h) {
                return;
            }
            if (str == null) {
                mo8971p("Adapter returned null signals");
                return;
            }
            try {
                this.f32401g.put("signals", str);
            } catch (JSONException e) {
            }
            this.f32400f.m10016c(this.f32401g);
            this.f32402h = true;
        }
    }

    /* renamed from: b */
    public final void m8972b() {
        synchronized (this) {
            if (this.f32402h) {
                return;
            }
            this.f32400f.m10016c(this.f32401g);
            this.f32402h = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.u90
    /* renamed from: p */
    public final void mo8971p(String str) {
        synchronized (this) {
            if (this.f32402h) {
                return;
            }
            try {
                this.f32401g.put("signal_error", str);
            } catch (JSONException e) {
            }
            this.f32400f.m10016c(this.f32401g);
            this.f32402h = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.u90
    /* renamed from: x */
    public final void mo8970x(zzbcz zzbczVar) {
        synchronized (this) {
            if (this.f32402h) {
                return;
            }
            try {
                this.f32401g.put("signal_error", zzbczVar.f33654e);
            } catch (JSONException e) {
            }
            this.f32400f.m10016c(this.f32401g);
            this.f32402h = true;
        }
    }
}
