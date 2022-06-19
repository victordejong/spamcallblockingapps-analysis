package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.interfaces.ECPrivateKey;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzehu.class */
public final class zzehu implements zzeau {
    private static final byte[] zzidb = new byte[0];
    private final String zzijj;
    private final byte[] zzijk;
    private final zzeic zzijl;
    private final zzehr zzijm;
    private final ECPrivateKey zzijn;
    private final zzehw zzijo;

    public zzehu(ECPrivateKey eCPrivateKey, byte[] bArr, String str, zzeic zzeicVar, zzehr zzehrVar) throws GeneralSecurityException {
        this.zzijn = eCPrivateKey;
        this.zzijo = new zzehw(eCPrivateKey);
        this.zzijk = bArr;
        this.zzijj = str;
        this.zzijl = zzeicVar;
        this.zzijm = zzehrVar;
    }
}
