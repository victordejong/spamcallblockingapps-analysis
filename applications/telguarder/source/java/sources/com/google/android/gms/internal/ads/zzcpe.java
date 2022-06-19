package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcpe.class */
public final class zzcpe implements zzdqu<zzcpd, zzcpg> {
    private final Context context;
    private final String zzdux;
    private final zzauh zzgpl;
    private final String zzgqb;
    private final int zzgqc;

    public zzcpe(Context context, String str, zzauh zzauhVar, String str2, int i) {
        this.context = context;
        this.zzgqb = str;
        this.zzgpl = zzauhVar;
        this.zzdux = str2;
        this.zzgqc = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x0398, code lost:
        r0 = new java.lang.StringBuilder(46);
        r0.append("Received error HTTP response code: ");
        r0.append(r0);
        com.google.android.gms.ads.internal.util.zzd.zzex(r0.toString());
        r0 = com.google.android.gms.internal.ads.zzdom.INTERNAL_ERROR;
        r0 = new java.lang.StringBuilder(46);
        r0.append("Received error HTTP response code: ");
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x03e0, code lost:
        throw new com.google.android.gms.internal.ads.zzcmb(r0, r0.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.ads.zzcpg zza(java.lang.String r9, com.google.android.gms.internal.ads.zzatw r10, org.json.JSONObject r11, java.lang.String r12) throws com.google.android.gms.internal.ads.zzcmb {
        /*
            Method dump skipped, instructions count: 1129
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcpe.zza(java.lang.String, com.google.android.gms.internal.ads.zzatw, org.json.JSONObject, java.lang.String):com.google.android.gms.internal.ads.zzcpg");
    }

    @Override // com.google.android.gms.internal.ads.zzdqu
    public final /* synthetic */ zzcpg apply(zzcpd zzcpdVar) throws Exception {
        zzatw zzatwVar;
        zzatw zzatwVar2;
        JSONObject jSONObject;
        zzcpd zzcpdVar2 = zzcpdVar;
        zzatwVar = zzcpdVar2.zzgpv;
        String url = zzatwVar.getUrl();
        zzatwVar2 = zzcpdVar2.zzgpv;
        jSONObject = zzcpdVar2.zzgpu;
        return zza(url, zzatwVar2, jSONObject, this.zzdux);
    }
}
