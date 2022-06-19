package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.amazon.device.ads.DtbConstants;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeos.class */
public final class zzeos implements zzery<zzeoq> {
    private final Context zza;
    private final zzfsn zzb;

    public zzeos(Context context, zzfsn zzfsnVar) {
        this.zza = context;
        this.zzb = zzfsnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeoq> zza() {
        return this.zzb.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzeop
            private final zzeos zza;

            {
                this.zza = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzb();
            }
        });
    }

    public final /* synthetic */ zzeoq zzb() throws Exception {
        Bundle bundle;
        zzt.zzc();
        String str = "";
        int i = 0;
        String string = !((Boolean) zzbet.zzc().zzc(zzbjl.zzeq)).booleanValue() ? "" : this.zza.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzes)).booleanValue()) {
            str = this.zza.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "");
        }
        zzt.zzc();
        Context context = this.zza;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzer)).booleanValue()) {
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
                String str2 = new String[]{DtbConstants.IABCONSENT_SUBJECT_TO_GDPR, DtbConstants.IABCONSENT_CONSENT_STRING, "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"}[i];
                if (defaultSharedPreferences.contains(str2)) {
                    bundle2.putString(str2, defaultSharedPreferences.getString(str2, null));
                }
                i++;
            }
        } else {
            bundle = null;
        }
        return new zzeoq(string, str, bundle, null);
    }
}
