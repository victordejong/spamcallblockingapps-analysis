package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdek.class */
public final class zzdek extends zzbiv {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final List<zzbfm> zzd;
    private final long zze;
    private final String zzf;

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
        if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(r8) != false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzdek(com.google.android.gms.internal.ads.zzfdn r7, java.lang.String r8, com.google.android.gms.internal.ads.zzehy r9, com.google.android.gms.internal.ads.zzfdq r10) {
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
            java.lang.String r0 = r0.zzY
            r12 = r0
        L17:
            r0 = r6
            r1 = r12
            r0.zzb = r1
            r0 = r10
            if (r0 != 0) goto L28
            r0 = 0
            r12 = r0
            goto L2f
        L28:
            r0 = r10
            java.lang.String r0 = r0.zzb
            r12 = r0
        L2f:
            r0 = r6
            r1 = r12
            r0.zzc = r1
            java.lang.String r0 = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L4b
            r0 = r11
            r12 = r0
            java.lang.String r0 = "com.google.ads.mediation.customevent.CustomEventAdapter"
            r1 = r8
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5e
        L4b:
            r0 = r7
            org.json.JSONObject r0 = r0.zzw     // Catch: org.json.JSONException -> L59
            java.lang.String r1 = "class_name"
            java.lang.String r0 = r0.getString(r1)     // Catch: org.json.JSONException -> L59
            r12 = r0
            goto L5e
        L59:
            r7 = move-exception
            r0 = r11
            r12 = r0
        L5e:
            r0 = r12
            if (r0 != 0) goto L66
            goto L69
        L66:
            r0 = r12
            r8 = r0
        L69:
            r0 = r6
            r1 = r8
            r0.zza = r1
            r0 = r6
            r1 = r9
            java.util.List r1 = r1.zzb()
            r0.zzd = r1
            r0 = r6
            com.google.android.gms.common.util.Clock r1 = com.google.android.gms.ads.internal.zzt.zzA()
            long r1 = r1.currentTimeMillis()
            r2 = 1000(0x3e8, double:4.94E-321)
            long r1 = r1 / r2
            r0.zze = r1
            com.google.android.gms.internal.ads.zzblb<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzblj.zzgR
            r7 = r0
            com.google.android.gms.internal.ads.zzblh r0 = com.google.android.gms.internal.ads.zzbgq.zzc()
            r1 = r7
            java.lang.Object r0 = r0.zzb(r1)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lb6
            r0 = r10
            if (r0 == 0) goto Lb6
            r0 = r10
            java.lang.String r0 = r0.zzh
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto Lad
            goto Lb6
        Lad:
            r0 = r10
            java.lang.String r0 = r0.zzh
            r7 = r0
            goto Lb9
        Lb6:
            java.lang.String r0 = ""
            r7 = r0
        Lb9:
            r0 = r6
            r1 = r7
            r0.zzf = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdek.<init>(com.google.android.gms.internal.ads.zzfdn, java.lang.String, com.google.android.gms.internal.ads.zzehy, com.google.android.gms.internal.ads.zzfdq):void");
    }

    public final long zzc() {
        return this.zze;
    }

    public final String zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzbiw
    public final String zze() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbiw
    public final String zzf() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbiw
    public final List<zzbfm> zzg() {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzge)).booleanValue()) {
            return null;
        }
        return this.zzd;
    }

    public final String zzh() {
        return this.zzc;
    }
}
