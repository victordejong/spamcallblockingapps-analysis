package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcqb.class */
public final class zzcqb {
    private int responseCode = 0;
    private long zzgqs = 0;
    private long zzgqt = 0;
    private long zzgqu = 0;
    private final Object zzgqv = new Object();
    private final Object zzgqw = new Object();
    private final Object zzgqx = new Object();
    private final Object zzgqy = new Object();

    public final int getResponseCode() {
        int i;
        synchronized (this.zzgqv) {
            i = this.responseCode;
        }
        return i;
    }

    public final long zzaru() {
        long j;
        synchronized (this) {
            synchronized (this.zzgqx) {
                j = this.zzgqt;
            }
        }
        return j;
    }

    public final void zzea(int i) {
        synchronized (this.zzgqv) {
            this.responseCode = i;
        }
    }

    public final void zzeq(long j) {
        synchronized (this.zzgqw) {
            this.zzgqs = j;
        }
    }

    public final void zzer(long j) {
        synchronized (this) {
            synchronized (this.zzgqy) {
                this.zzgqu = j;
            }
        }
    }

    public final void zzfe(long j) {
        synchronized (this) {
            synchronized (this.zzgqx) {
                this.zzgqt = j;
            }
        }
    }

    public final long zzow() {
        long j;
        synchronized (this.zzgqw) {
            j = this.zzgqs;
        }
        return j;
    }

    public final long zzox() {
        long j;
        synchronized (this) {
            synchronized (this.zzgqy) {
                j = this.zzgqu;
            }
        }
        return j;
    }
}
