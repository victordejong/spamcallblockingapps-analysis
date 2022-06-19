package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecc.class */
public final class ecc extends ead {

    /* renamed from: a */
    private AbstractC3166gi f16275a;

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7928a() {
        C3645yb.m6749c("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        C3634xr.f17613a.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ece

            /* renamed from: a */
            private final ecc f16277a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f16277a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16277a.m7914f();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7927a(float f) {
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7926a(AbstractC2731a abstractC2731a, String str) {
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7925a(ech echVar) {
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7924a(AbstractC3166gi abstractC3166gi) {
        this.f16275a = abstractC3166gi;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7923a(AbstractC3280ko abstractC3280ko) {
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7922a(String str) {
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7921a(String str, AbstractC2731a abstractC2731a) {
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: a */
    public final void mo7920a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: b */
    public final float mo7919b() {
        return 1.0f;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: b */
    public final void mo7918b(String str) {
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: c */
    public final boolean mo7917c() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: d */
    public final String mo7916d() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.eae
    /* renamed from: e */
    public final List<C3159gb> mo7915e() {
        return Collections.emptyList();
    }

    /* renamed from: f */
    public final /* synthetic */ void m7914f() {
        if (this.f16275a != null) {
            try {
                this.f16275a.mo7814a(Collections.emptyList());
            } catch (RemoteException e) {
                C3645yb.m6746d("Could not notify onComplete event.", e);
            }
        }
    }
}
