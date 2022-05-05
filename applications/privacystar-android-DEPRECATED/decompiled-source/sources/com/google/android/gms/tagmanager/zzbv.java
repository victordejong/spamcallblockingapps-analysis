package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzbv.class */
public final class zzbv extends zzbq {

    /* renamed from: ID */
    private static final String f179ID = zza.HASH.toString();
    private static final String zzbbt = zzb.ARG0.toString();
    private static final String zzbby = zzb.ALGORITHM.toString();
    private static final String zzbbv = zzb.INPUT_FORMAT.toString();

    public zzbv() {
        super(f179ID, zzbbt);
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        byte[] bArr;
        zzp zzpVar = map.get(zzbbt);
        if (zzpVar == null || zzpVar == zzgj.zzqg()) {
            return zzgj.zzqg();
        }
        String zzc = zzgj.zzc(zzpVar);
        zzp zzpVar2 = map.get(zzbby);
        String zzc2 = zzpVar2 == null ? "MD5" : zzgj.zzc(zzpVar2);
        zzp zzpVar3 = map.get(zzbbv);
        String zzc3 = zzpVar3 == null ? "text" : zzgj.zzc(zzpVar3);
        if ("text".equals(zzc3)) {
            bArr = zzc.getBytes();
        } else if ("base16".equals(zzc3)) {
            bArr = zzo.decode(zzc);
        } else {
            String valueOf = String.valueOf(zzc3);
            zzdi.m329e(valueOf.length() != 0 ? "Hash: unknown input format: ".concat(valueOf) : new String("Hash: unknown input format: "));
            return zzgj.zzqg();
        }
        try {
            MessageDigest instance = MessageDigest.getInstance(zzc2);
            instance.update(bArr);
            return zzgj.zzj(zzo.encode(instance.digest()));
        } catch (NoSuchAlgorithmException e) {
            String valueOf2 = String.valueOf(zzc2);
            zzdi.m329e(valueOf2.length() != 0 ? "Hash: unknown algorithm: ".concat(valueOf2) : new String("Hash: unknown algorithm: "));
            return zzgj.zzqg();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
