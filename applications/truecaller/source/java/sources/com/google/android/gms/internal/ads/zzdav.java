package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdav.class */
public final class zzdav extends zzbgy {
    private final String zza;
    private final String zzb;
    private final List<zzbdp> zzc;
    private final long zzd;
    private final String zze;

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0030, code lost:
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(r8) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzdav(com.google.android.gms.internal.ads.zzezz r7, java.lang.String r8, com.google.android.gms.internal.ads.zzeeh r9, com.google.android.gms.internal.ads.zzfac r10) {
        /*
            r6 = this;
            r0 = r6
            r0.<init>()
            r0 = 0
            r11 = r0
            r0 = r7
            if (r0 != 0) goto L11
            r0 = 0
            r12 = r0
            goto L17
        L11:
            r0 = r7
            java.lang.String r0 = r0.zzX
            r12 = r0
        L17:
            r0 = r6
            r1 = r12
            r0.zzb = r1
            java.lang.String r0 = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L33
            r0 = r11
            r12 = r0
            java.lang.String r0 = "com.google.ads.mediation.customevent.CustomEventAdapter"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L3e
        L33:
            r0 = r7
            org.json.JSONObject r0 = r0.zzv     // Catch: org.json.JSONException -> L9f
            java.lang.String r1 = "class_name"
            java.lang.String r0 = r0.getString(r1)     // Catch: org.json.JSONException -> L9f
            r12 = r0
        L3e:
            r0 = r12
            if (r0 != 0) goto L46
            goto L49
        L46:
            r0 = r12
            r8 = r0
        L49:
            r0 = r6
            r1 = r8
            r0.zza = r1
            r0 = r6
            r1 = r9
            java.util.List r1 = r1.zze()
            r0.zzc = r1
            r0 = r6
            com.google.android.gms.common.util.Clock r1 = com.google.android.gms.ads.internal.zzt.zzj()
            long r1 = r1.mo38787c()
            r2 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 / r2
            r0.zzd = r1
            com.google.android.gms.internal.ads.zzbjd<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzbjl.zzgG
            r7 = r0
            com.google.android.gms.internal.ads.zzbjj r0 = com.google.android.gms.internal.ads.zzbet.zzc()
            r1 = r7
            java.lang.Object r0 = r0.zzc(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L96
            r0 = r10
            if (r0 == 0) goto L96
            r0 = r10
            java.lang.String r0 = r0.zzh
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L8d
            goto L96
        L8d:
            r0 = r10
            java.lang.String r0 = r0.zzh
            r7 = r0
            goto L99
        L96:
            java.lang.String r0 = ""
            r7 = r0
        L99:
            r0 = r6
            r1 = r7
            r0.zze = r1
            return
        L9f:
            r7 = move-exception
            r0 = r11
            r12 = r0
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdav.<init>(com.google.android.gms.internal.ads.zzezz, java.lang.String, com.google.android.gms.internal.ads.zzeeh, com.google.android.gms.internal.ads.zzfac):void");
    }

    public final long zzc() {
        return this.zzd;
    }

    public final String zzd() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final String zze() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final String zzf() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbgz
    public final List<zzbdp> zzg() {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzfX)).booleanValue()) {
            return null;
        }
        return this.zzc;
    }
}
