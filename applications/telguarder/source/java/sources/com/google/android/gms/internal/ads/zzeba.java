package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzemo;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeba.class */
public abstract class zzeba<KeyFormatProtoT extends zzemo, KeyT> {
    private final Class<KeyFormatProtoT> zzibj;

    public zzeba(Class<KeyFormatProtoT> cls) {
        this.zzibj = cls;
    }

    public final Class<KeyFormatProtoT> zzbap() {
        return this.zzibj;
    }

    public abstract void zzd(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    public abstract KeyT zze(KeyFormatProtoT keyformatprotot) throws GeneralSecurityException;

    public abstract KeyFormatProtoT zzr(zzejr zzejrVar) throws zzelo;
}
