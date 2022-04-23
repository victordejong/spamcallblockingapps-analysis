package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczg.class */
public final class zzczg extends zzapl {

    /* renamed from: a */
    public final String f26790a;

    /* renamed from: b */
    public final zzaph f26791b;

    /* renamed from: c */
    public zzbcg<JSONObject> f26792c;

    /* renamed from: d */
    public final JSONObject f26793d;

    /* renamed from: e */
    public boolean f26794e = false;

    public zzczg(String str, zzaph zzaphVar, zzbcg<JSONObject> zzbcgVar) {
        JSONObject jSONObject = new JSONObject();
        this.f26793d = jSONObject;
        this.f26792c = zzbcgVar;
        this.f26790a = str;
        this.f26791b = zzaphVar;
        try {
            jSONObject.put("adapter_version", zzaphVar.mo16468d0().toString());
            this.f26793d.put("sdk_version", this.f26791b.mo16482V().toString());
            this.f26793d.put("name", this.f26790a);
        } catch (RemoteException | NullPointerException | JSONException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    /* renamed from: a */
    public final void mo13750a(String str) throws RemoteException {
        synchronized (this) {
            if (!this.f26794e) {
                try {
                    this.f26793d.put("signal_error", str);
                } catch (JSONException e) {
                }
                this.f26792c.m15835a((zzbcg<JSONObject>) this.f26793d);
                this.f26794e = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    /* renamed from: i */
    public final void mo13749i(zzva zzvaVar) throws RemoteException {
        synchronized (this) {
            if (!this.f26794e) {
                try {
                    this.f26793d.put("signal_error", zzvaVar.f28996b);
                } catch (JSONException e) {
                }
                this.f26792c.m15835a((zzbcg<JSONObject>) this.f26793d);
                this.f26794e = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapm
    /* renamed from: x */
    public final void mo13748x(String str) throws RemoteException {
        synchronized (this) {
            if (!this.f26794e) {
                if (str == null) {
                    mo13750a("Adapter returned null signals");
                    return;
                }
                try {
                    this.f26793d.put("signals", str);
                } catch (JSONException e) {
                }
                this.f26792c.m15835a((zzbcg<JSONObject>) this.f26793d);
                this.f26794e = true;
            }
        }
    }
}
