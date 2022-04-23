package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wd.class */
public final class wd implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a  reason: collision with root package name */
    final SharedPreferences f28459a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f28460b;

    /* renamed from: c  reason: collision with root package name */
    private final zzf f28461c;

    /* renamed from: d  reason: collision with root package name */
    private final wo f28462d;
    private String e = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    public wd(Context context, zzf zzfVar, wo woVar) {
        this.f28459a = PreferenceManager.getDefaultSharedPreferences(context);
        this.f28461c = zzfVar;
        this.f28460b = context;
        this.f28462d = woVar;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Context context;
        if ("IABTCF_PurposeConsents".equals(str)) {
            String string = sharedPreferences.getString("IABTCF_PurposeConsents", "");
            if (!string.isEmpty() && !this.e.equals(string)) {
                this.e = string;
                boolean z = false;
                if (string.charAt(0) != '1') {
                    z = true;
                }
                if (((Boolean) ekb.e().a(aq.al)).booleanValue()) {
                    this.f28461c.zzau(z);
                    if (((Boolean) ekb.e().a(aq.dM)).booleanValue() && z && (context = this.f28460b) != null) {
                        context.deleteDatabase("OfflineUpload.db");
                    }
                }
                if (((Boolean) ekb.e().a(aq.ah)).booleanValue()) {
                    this.f28462d.a();
                }
            }
        }
    }
}
