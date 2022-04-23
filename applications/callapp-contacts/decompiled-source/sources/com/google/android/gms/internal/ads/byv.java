package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byv.class */
public final class byv extends ow {

    /* renamed from: a  reason: collision with root package name */
    private final String f25417a;

    /* renamed from: b  reason: collision with root package name */
    private final os f25418b;

    /* renamed from: c  reason: collision with root package name */
    private zp<JSONObject> f25419c;

    /* renamed from: d  reason: collision with root package name */
    private final JSONObject f25420d;
    private boolean e = false;

    public byv(String str, os osVar, zp<JSONObject> zpVar) {
        JSONObject jSONObject = new JSONObject();
        this.f25420d = jSONObject;
        this.f25419c = zpVar;
        this.f25417a = str;
        this.f25418b = osVar;
        try {
            jSONObject.put("adapter_version", osVar.a().toString());
            jSONObject.put("sdk_version", osVar.b().toString());
            jSONObject.put("name", str);
        } catch (RemoteException | NullPointerException | JSONException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.ox
    public final void a(zzvh zzvhVar) throws RemoteException {
        synchronized (this) {
            if (!this.e) {
                try {
                    this.f25420d.put("signal_error", zzvhVar.zzchs);
                } catch (JSONException e) {
                }
                this.f25419c.set(this.f25420d);
                this.e = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ox
    public final void a(String str) throws RemoteException {
        synchronized (this) {
            if (!this.e) {
                if (str == null) {
                    b("Adapter returned null signals");
                    return;
                }
                try {
                    this.f25420d.put("signals", str);
                } catch (JSONException e) {
                }
                this.f25419c.set(this.f25420d);
                this.e = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ox
    public final void b(String str) throws RemoteException {
        synchronized (this) {
            if (!this.e) {
                try {
                    this.f25420d.put("signal_error", str);
                } catch (JSONException e) {
                }
                this.f25419c.set(this.f25420d);
                this.e = true;
            }
        }
    }
}
