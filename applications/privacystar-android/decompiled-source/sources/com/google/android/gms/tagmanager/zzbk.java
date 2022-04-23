package com.google.android.gms.tagmanager;

import android.util.Base64;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import com.privacystar.core.util.pdus.PduPart;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbk.class */
public final class zzbk extends zzbq {

    /* renamed from: ID */
    private static final String f172ID = zza.ENCODE.toString();
    private static final String zzbbt = zzb.ARG0.toString();
    private static final String zzbbu = zzb.NO_PADDING.toString();
    private static final String zzbbv = zzb.INPUT_FORMAT.toString();
    private static final String zzbbw = zzb.OUTPUT_FORMAT.toString();

    public zzbk() {
        super(f172ID, zzbbt);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        byte[] bArr;
        String str;
        zzp zzpVar = map.get(zzbbt);
        if (zzpVar == null || zzpVar == zzgj.zzqg()) {
            return zzgj.zzqg();
        }
        String zzc = zzgj.zzc(zzpVar);
        zzp zzpVar2 = map.get(zzbbv);
        String zzc2 = zzpVar2 == null ? "text" : zzgj.zzc(zzpVar2);
        zzp zzpVar3 = map.get(zzbbw);
        String zzc3 = zzpVar3 == null ? "base16" : zzgj.zzc(zzpVar3);
        zzp zzpVar4 = map.get(zzbbu);
        int i = 2;
        if (zzpVar4 != null) {
            i = 2;
            if (zzgj.zzg(zzpVar4).booleanValue()) {
                i = 3;
            }
        }
        try {
            if ("text".equals(zzc2)) {
                bArr = zzc.getBytes();
            } else if ("base16".equals(zzc2)) {
                bArr = zzo.decode(zzc);
            } else if (PduPart.P_BASE64.equals(zzc2)) {
                bArr = Base64.decode(zzc, i);
            } else if ("base64url".equals(zzc2)) {
                bArr = Base64.decode(zzc, i | 8);
            } else {
                String valueOf = String.valueOf(zzc2);
                zzdi.m329e(valueOf.length() != 0 ? "Encode: unknown input format: ".concat(valueOf) : new String("Encode: unknown input format: "));
                return zzgj.zzqg();
            }
            if ("base16".equals(zzc3)) {
                str = zzo.encode(bArr);
            } else if (PduPart.P_BASE64.equals(zzc3)) {
                str = Base64.encodeToString(bArr, i);
            } else if ("base64url".equals(zzc3)) {
                str = Base64.encodeToString(bArr, i | 8);
            } else {
                String valueOf2 = String.valueOf(zzc3);
                zzdi.m329e(valueOf2.length() != 0 ? "Encode: unknown output format: ".concat(valueOf2) : new String("Encode: unknown output format: "));
                return zzgj.zzqg();
            }
            return zzgj.zzj(str);
        } catch (IllegalArgumentException e) {
            zzdi.m329e("Encode: invalid input:");
            return zzgj.zzqg();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
