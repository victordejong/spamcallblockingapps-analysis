package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzdl.class */
public final class zzdl extends zzdm {
    private final char zzhd;

    public zzdl(char c) {
        this.zzhd = c;
    }

    public final String toString() {
        String zzc;
        zzc = zzdj.zzc(this.zzhd);
        StringBuilder sb = new StringBuilder(String.valueOf(zzc).length() + 18);
        sb.append("CharMatcher.is('");
        sb.append(zzc);
        sb.append("')");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzdj
    public final boolean zzb(char c) {
        return c == this.zzhd;
    }
}
