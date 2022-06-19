package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgg.class */
public final class zzcgg implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final Context zza;
    private final SharedPreferences zzb;
    private final zzg zzc;
    private final zzchh zzd;
    private String zze = "-1";
    private int zzf = -1;

    public zzcgg(Context context, zzg zzgVar, zzchh zzchhVar) {
        this.zzb = PreferenceManager.getDefaultSharedPreferences(context);
        this.zzc = zzgVar;
        this.zza = context;
        this.zzd = zzchhVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        if (r4.equals("-1") == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0056, code lost:
        if (r4.charAt(0) != '1') goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(java.lang.String r4, int r5) {
        /*
            r3 = this;
            com.google.android.gms.internal.ads.zzblb<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzblj.zzaq
            r6 = r0
            com.google.android.gms.internal.ads.zzblh r0 = com.google.android.gms.internal.ads.zzbgq.zzc()
            r1 = r6
            java.lang.Object r0 = r0.zzb(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r5
            if (r0 == 0) goto L59
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L59
            r0 = r8
            r7 = r0
            r0 = r4
            r1 = 0
            char r0 = r0.charAt(r1)
            r1 = 49
            if (r0 == r1) goto L5c
            r0 = r8
            r7 = r0
            r0 = r4
            java.lang.String r1 = "-1"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5c
            goto L59
        L44:
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L59
            r0 = r8
            r7 = r0
            r0 = r4
            r1 = 0
            char r0 = r0.charAt(r1)
            r1 = 49
            if (r0 == r1) goto L5c
        L59:
            r0 = 1
            r7 = r0
        L5c:
            com.google.android.gms.internal.ads.zzblb<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzblj.zzao
            r4 = r0
            com.google.android.gms.internal.ads.zzblh r0 = com.google.android.gms.internal.ads.zzbgq.zzc()
            r1 = r4
            java.lang.Object r0 = r0.zzb(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto La4
            r0 = r3
            com.google.android.gms.ads.internal.util.zzg r0 = r0.zzc
            r1 = r7
            r0.zzD(r1)
            com.google.android.gms.internal.ads.zzblb<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzblj.zzeE
            r4 = r0
            com.google.android.gms.internal.ads.zzblh r0 = com.google.android.gms.internal.ads.zzbgq.zzc()
            r1 = r4
            java.lang.Object r0 = r0.zzb(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto La4
            r0 = r7
            if (r0 == 0) goto La4
            r0 = r3
            android.content.Context r0 = r0.zza
            r4 = r0
            r0 = r4
            if (r0 == 0) goto La4
            r0 = r4
            java.lang.String r1 = "OfflineUpload.db"
            boolean r0 = r0.deleteDatabase(r1)
        La4:
            com.google.android.gms.internal.ads.zzblb<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzblj.zzaj
            r4 = r0
            com.google.android.gms.internal.ads.zzblh r0 = com.google.android.gms.internal.ads.zzbgq.zzc()
            r1 = r4
            java.lang.Object r0 = r0.zzb(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lc0
            r0 = r3
            com.google.android.gms.internal.ads.zzchh r0 = r0.zzd
            boolean r0 = r0.zzt()
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcgg.zzb(java.lang.String, int):void");
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        boolean z;
        String string = sharedPreferences.getString("IABTCF_PurposeConsents", "-1");
        int i = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
        String valueOf = String.valueOf(str);
        int hashCode = valueOf.hashCode();
        if (hashCode != -2004976699) {
            if (hashCode == -527267622 && valueOf.equals("gad_has_consent_for_cookies")) {
                z = true;
            }
            z = true;
        } else {
            if (valueOf.equals("IABTCF_PurposeConsents")) {
                z = false;
            }
            z = true;
        }
        if (!z) {
            if (string.equals("-1") || this.zze.equals(string)) {
                return;
            }
            this.zze = string;
            zzb(string, i);
        } else if (!z) {
        } else {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzaq)).booleanValue() || i == -1 || this.zzf == i) {
                return;
            }
            this.zzf = i;
            zzb(string, i);
        }
    }

    public final void zza() {
        this.zzb.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(this.zzb, "IABTCF_PurposeConsents");
        onSharedPreferenceChanged(this.zzb, "gad_has_consent_for_cookies");
    }
}
