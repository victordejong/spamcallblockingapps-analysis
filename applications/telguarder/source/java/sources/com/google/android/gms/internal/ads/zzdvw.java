package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdvw.class */
public final class zzdvw extends zzdvt {
    private final char zzhvs;

    public zzdvw(char c) {
        this.zzhvs = c;
    }

    public final String toString() {
        String zzd;
        zzd = zzdvu.zzd(this.zzhvs);
        StringBuilder sb = new StringBuilder(String.valueOf(zzd).length() + 18);
        sb.append("CharMatcher.is('");
        sb.append(zzd);
        sb.append("')");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdvu
    public final boolean zzc(char c) {
        return c == this.zzhvs;
    }
}
