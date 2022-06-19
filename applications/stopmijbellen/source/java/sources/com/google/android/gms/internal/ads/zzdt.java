package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import com.facebook.ads.AdError;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdt.class */
public final class zzdt extends zzds {
    public final String zzc;
    public final Map<String, List<String>> zzd;
    public final byte[] zze;

    public zzdt(int i, String str, IOException iOException, Map<String, List<String>> map, zzdm zzdmVar, byte[] bArr) {
        super(C0082b.m8758d(26, "Response code: ", i), iOException, zzdmVar, AdError.INTERNAL_ERROR_2004, 1);
        this.zzc = str;
        this.zzd = map;
        this.zze = bArr;
    }
}
