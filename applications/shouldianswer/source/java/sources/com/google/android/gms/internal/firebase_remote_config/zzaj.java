package com.google.android.gms.internal.firebase_remote_config;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzaj.class */
public abstract class zzaj {
    private String zzbs;
    private String zzbt;
    private long zzcb = -1;
    private zzcm zzcc;

    public abstract void addHeader(String str, String str2);

    public final String getContentEncoding() {
        return this.zzbs;
    }

    public final long getContentLength() {
        return this.zzcb;
    }

    public final String getContentType() {
        return this.zzbt;
    }

    public final void setContentEncoding(String str) {
        this.zzbs = str;
    }

    public final void setContentLength(long j) {
        this.zzcb = j;
    }

    public final void setContentType(String str) {
        this.zzbt = str;
    }

    public void zza(int i, int i2) {
    }

    public final void zza(zzcm zzcmVar) {
        this.zzcc = zzcmVar;
    }

    public final zzcm zzai() {
        return this.zzcc;
    }

    public abstract zzai zzaj();
}
