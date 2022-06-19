package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzesh.class */
public final class zzesh implements zzevn<zzesg> {
    private final Context zza;
    private final zzfxb zzb;

    public zzesh(Context context, zzfxb zzfxbVar) {
        this.zza = context;
        this.zzb = zzfxbVar;
    }

    public final /* synthetic */ zzesg zza() throws Exception {
        Bundle bundle;
        zzt.zzp();
        String str = "";
        int i = 0;
        String string = !((Boolean) zzbgq.zzc().zzb(zzblj.zzex)).booleanValue() ? "" : this.zza.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzez)).booleanValue()) {
            str = this.zza.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
        }
        zzt.zzp();
        Context context = this.zza;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzey)).booleanValue()) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            Bundle bundle2 = new Bundle();
            if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
                bundle2.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
            }
            while (true) {
                bundle = bundle2;
                if (i >= 4) {
                    break;
                }
                String str2 = new String[]{"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"}[i];
                if (defaultSharedPreferences.contains(str2)) {
                    bundle2.putString(str2, defaultSharedPreferences.getString(str2, null));
                }
                i++;
            }
        } else {
            bundle = null;
        }
        return new zzesg(string, str, bundle, null);
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzesg> zzb() {
        return this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzese
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzesh.this.zza();
            }
        });
    }
}
