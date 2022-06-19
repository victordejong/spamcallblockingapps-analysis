package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdz.class */
public final class zzcdz implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final Context zza;
    private final SharedPreferences zzb;
    private final zzg zzc;
    private final zzcfa zzd;
    private String zze = "";

    public zzcdz(Context context, zzg zzgVar, zzcfa zzcfaVar) {
        this.zzb = PreferenceManager.getDefaultSharedPreferences(context);
        this.zzc = zzgVar;
        this.zza = context;
        this.zzd = zzcfaVar;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Context context;
        if (!"IABTCF_PurposeConsents".equals(str)) {
            return;
        }
        String string = sharedPreferences.getString("IABTCF_PurposeConsents", "");
        if (string.isEmpty() || this.zze.equals(string)) {
            return;
        }
        this.zze = string;
        boolean z = false;
        if (string.charAt(0) != '1') {
            z = true;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzao)).booleanValue()) {
            this.zzc.zzB(z);
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzex)).booleanValue() && z && (context = this.zza) != null) {
                context.deleteDatabase("OfflineUpload.db");
            }
        }
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzaj)).booleanValue()) {
            return;
        }
        this.zzd.zza();
    }

    public final void zza() {
        this.zzb.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(this.zzb, "IABTCF_PurposeConsents");
    }
}
