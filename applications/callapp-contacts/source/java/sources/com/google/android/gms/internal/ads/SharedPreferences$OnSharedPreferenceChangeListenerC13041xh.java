package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.xh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xh.class */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC13041xh implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a */
    private final String f50019a;

    /* renamed from: b */
    private final /* synthetic */ C13039xf f50020b;

    public SharedPreferences$OnSharedPreferenceChangeListenerC13041xh(C13039xf c13039xf, String str) {
        this.f50020b = c13039xf;
        this.f50019a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f50020b) {
            for (AbstractC13044xk abstractC13044xk : this.f50020b.f50015a) {
                abstractC13044xk.mo14004a(this.f50019a, str);
            }
        }
    }
}
