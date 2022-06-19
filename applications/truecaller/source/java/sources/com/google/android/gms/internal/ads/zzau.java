package com.google.android.gms.internal.ads;

import com.facebook.ads.AdError;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzau.class */
public final class zzau extends zzat {
    public final String zzc;
    public final Map<String, List<String>> zzd;
    public final byte[] zze;

    public zzau(int i, String str, IOException iOException, Map<String, List<String>> map, zzan zzanVar, byte[] bArr) {
        super(C22128a.m8690L1(26, "Response code: ", i), iOException, zzanVar, AdError.INTERNAL_ERROR_2004, 1);
        this.zzc = str;
        this.zzd = map;
        this.zze = bArr;
    }
}
