package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/byv.class */
public final class byv extends AbstractBinderC12811ow {

    /* renamed from: a */
    private final String f45116a;

    /* renamed from: b */
    private final AbstractC12807os f45117b;

    /* renamed from: c */
    private C13103zp<JSONObject> f45118c;

    /* renamed from: d */
    private final JSONObject f45119d;

    /* renamed from: e */
    private boolean f45120e = false;

    public byv(String str, AbstractC12807os abstractC12807os, C13103zp<JSONObject> c13103zp) {
        JSONObject jSONObject = new JSONObject();
        this.f45119d = jSONObject;
        this.f45118c = c13103zp;
        this.f45116a = str;
        this.f45117b = abstractC12807os;
        try {
            jSONObject.put("adapter_version", abstractC12807os.mo14284a().toString());
            jSONObject.put("sdk_version", abstractC12807os.mo14269b().toString());
            jSONObject.put("name", str);
        } catch (RemoteException | NullPointerException | JSONException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12812ox
    /* renamed from: a */
    public final void mo14289a(zzvh zzvhVar) throws RemoteException {
        synchronized (this) {
            if (this.f45120e) {
                return;
            }
            try {
                this.f45119d.put("signal_error", zzvhVar.zzchs);
            } catch (JSONException e) {
            }
            this.f45118c.set(this.f45119d);
            this.f45120e = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12812ox
    /* renamed from: a */
    public final void mo14288a(String str) throws RemoteException {
        synchronized (this) {
            if (this.f45120e) {
                return;
            }
            if (str == null) {
                mo14287b("Adapter returned null signals");
                return;
            }
            try {
                this.f45119d.put("signals", str);
            } catch (JSONException e) {
            }
            this.f45118c.set(this.f45119d);
            this.f45120e = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12812ox
    /* renamed from: b */
    public final void mo14287b(String str) throws RemoteException {
        synchronized (this) {
            if (this.f45120e) {
                return;
            }
            try {
                this.f45119d.put("signal_error", str);
            } catch (JSONException e) {
            }
            this.f45118c.set(this.f45119d);
            this.f45120e = true;
        }
    }
}
