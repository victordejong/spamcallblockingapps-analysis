package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.util.zzf;
/* renamed from: com.google.android.gms.internal.ads.wd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wd.class */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC13008wd implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a */
    final SharedPreferences f49954a;

    /* renamed from: b */
    private final Context f49955b;

    /* renamed from: c */
    private final zzf f49956c;

    /* renamed from: d */
    private final C13019wo f49957d;

    /* renamed from: e */
    private String f49958e = "";

    public SharedPreferences$OnSharedPreferenceChangeListenerC13008wd(Context context, zzf zzfVar, C13019wo c13019wo) {
        this.f49954a = PreferenceManager.getDefaultSharedPreferences(context);
        this.f49956c = zzfVar;
        this.f49955b = context;
        this.f49957d = c13019wo;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Context context;
        if (!"IABTCF_PurposeConsents".equals(str)) {
            return;
        }
        String string = sharedPreferences.getString("IABTCF_PurposeConsents", "");
        if (string.isEmpty() || this.f49958e.equals(string)) {
            return;
        }
        this.f49958e = string;
        boolean z = false;
        if (string.charAt(0) != '1') {
            z = true;
        }
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42675al)).booleanValue()) {
            this.f49956c.zzau(z);
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42809dM)).booleanValue() && z && (context = this.f49955b) != null) {
                context.deleteDatabase("OfflineUpload.db");
            }
        }
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42671ah)).booleanValue()) {
            return;
        }
        this.f49957d.m14045a();
    }
}
