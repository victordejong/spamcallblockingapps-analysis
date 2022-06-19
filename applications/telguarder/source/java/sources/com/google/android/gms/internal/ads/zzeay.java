package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzemo;
import java.security.GeneralSecurityException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeay.class */
public final class zzeay<KeyFormatProtoT extends zzemo, KeyProtoT extends zzemo> {
    private final zzeba<KeyFormatProtoT, KeyProtoT> zzibm;

    public zzeay(zzeba<KeyFormatProtoT, KeyProtoT> zzebaVar) {
        this.zzibm = zzebaVar;
    }

    public final KeyProtoT zzq(zzejr zzejrVar) throws GeneralSecurityException, zzelo {
        KeyFormatProtoT zzr = this.zzibm.zzr(zzejrVar);
        this.zzibm.zzd(zzr);
        return this.zzibm.zze(zzr);
    }
}
