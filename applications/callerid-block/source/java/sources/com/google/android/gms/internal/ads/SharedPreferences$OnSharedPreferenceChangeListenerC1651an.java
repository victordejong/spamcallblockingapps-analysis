package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.an */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/an.class */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC1651an implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a */
    private final String f6046a;

    /* renamed from: b */
    final /* synthetic */ C1689cn f6047b;

    public SharedPreferences$OnSharedPreferenceChangeListenerC1651an(C1689cn c1689cn, String str) {
        this.f6047b = c1689cn;
        this.f6046a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        List<AbstractC1667bn> list;
        synchronized (this.f6047b) {
            try {
                list = this.f6047b.f6274b;
                for (AbstractC1667bn abstractC1667bn : list) {
                    abstractC1667bn.m7946a(sharedPreferences, this.f6046a, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
