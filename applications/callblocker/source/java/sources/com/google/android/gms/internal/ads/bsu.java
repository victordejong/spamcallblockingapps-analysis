package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bsu.class */
public final class bsu extends AbstractBinderC3337mr {

    /* renamed from: a */
    private final String f12179a;

    /* renamed from: b */
    private final AbstractC3333mn f12180b;

    /* renamed from: c */
    private C3658yo<JSONObject> f12181c;

    /* renamed from: d */
    private final JSONObject f12182d = new JSONObject();
    @GuardedBy("this")

    /* renamed from: e */
    private boolean f12183e = false;

    public bsu(String str, AbstractC3333mn abstractC3333mn, C3658yo<JSONObject> c3658yo) {
        this.f12181c = c3658yo;
        this.f12179a = str;
        this.f12180b = abstractC3333mn;
        try {
            this.f12182d.put("adapter_version", this.f12180b.mo7457a().toString());
            this.f12182d.put("sdk_version", this.f12180b.mo7445b().toString());
            this.f12182d.put("name", this.f12179a);
        } catch (RemoteException e) {
        } catch (NullPointerException e2) {
        } catch (JSONException e3) {
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3334mo
    /* renamed from: a */
    public final void mo7459a(String str) {
        synchronized (this) {
            if (!this.f12183e) {
                if (str == null) {
                    mo7458b("Adapter returned null signals");
                } else {
                    try {
                        this.f12182d.put("signals", str);
                    } catch (JSONException e) {
                    }
                    this.f12181c.m6731b(this.f12182d);
                    this.f12183e = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3334mo
    /* renamed from: b */
    public final void mo7458b(String str) {
        synchronized (this) {
            if (!this.f12183e) {
                try {
                    this.f12182d.put("signal_error", str);
                } catch (JSONException e) {
                }
                this.f12181c.m6731b(this.f12182d);
                this.f12183e = true;
            }
        }
    }
}
