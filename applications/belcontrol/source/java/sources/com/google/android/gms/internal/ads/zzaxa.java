package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.util.zzf;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxa.class */
public final class zzaxa implements SharedPreferences.OnSharedPreferenceChangeListener {
    @GuardedBy("AdMobPlusIdlessListener.class")
    private static zzaxa zzeau;
    private final SharedPreferences zzeav;
    private final zzf zzeaw;
    private String zzeax = "";

    private zzaxa(Context context, zzf zzfVar) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.zzeav = defaultSharedPreferences;
        this.zzeaw = zzfVar;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(defaultSharedPreferences, "IABTCF_PurposeConsents");
    }

    public static zzaxa zza(Context context, zzf zzfVar) {
        zzaxa zzaxaVar;
        synchronized (zzaxa.class) {
            try {
                if (zzeau == null) {
                    zzeau = new zzaxa(context, zzfVar);
                }
                zzaxaVar = zzeau;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzaxaVar;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (!"IABTCF_PurposeConsents".equals(str)) {
            return;
        }
        String string = sharedPreferences.getString("IABTCF_PurposeConsents", "");
        if (string.isEmpty() || this.zzeax.equals(string)) {
            return;
        }
        this.zzeax = string;
        boolean z = false;
        if (string.charAt(0) != '1') {
            z = true;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcos)).booleanValue()) {
            this.zzeaw.zzar(z);
        }
        ((Boolean) zzwr.zzqr().zzd(zzabp.zzcor)).booleanValue();
    }
}
