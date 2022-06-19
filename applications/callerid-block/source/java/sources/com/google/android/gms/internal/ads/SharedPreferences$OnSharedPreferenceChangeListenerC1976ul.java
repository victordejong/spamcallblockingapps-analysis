package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.util.AbstractC1409a1;
/* renamed from: com.google.android.gms.internal.ads.ul */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ul.class */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC1976ul implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a */
    private final Context f8791a;

    /* renamed from: b */
    private final SharedPreferences f8792b;

    /* renamed from: c */
    private final AbstractC1409a1 f8793c;

    /* renamed from: d */
    private final C2021wm f8794d;

    /* renamed from: e */
    private String f8795e = "";

    SharedPreferences$OnSharedPreferenceChangeListenerC1976ul(Context context, AbstractC1409a1 abstractC1409a1, C2021wm c2021wm) {
        this.f8792b = PreferenceManager.getDefaultSharedPreferences(context);
        this.f8793c = abstractC1409a1;
        this.f8791a = context;
        this.f8794d = c2021wm;
    }

    /* renamed from: a */
    public final void m5371a() {
        this.f8792b.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(this.f8792b, "IABTCF_PurposeConsents");
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Context context;
        if (!"IABTCF_PurposeConsents".equals(str)) {
            return;
        }
        String string = sharedPreferences.getString("IABTCF_PurposeConsents", "");
        if (string.isEmpty() || this.f8795e.equals(string)) {
            return;
        }
        this.f8795e = string;
        boolean z = false;
        if (string.charAt(0) != '1') {
            z = true;
        }
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7441k0)).booleanValue()) {
            this.f8793c.m8892K0(z);
            if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7296N3)).booleanValue() && z && (context = this.f8791a) != null) {
                context.deleteDatabase("OfflineUpload.db");
            }
        }
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7413g0)).booleanValue()) {
            return;
        }
        this.f8794d.m5033f();
    }
}
