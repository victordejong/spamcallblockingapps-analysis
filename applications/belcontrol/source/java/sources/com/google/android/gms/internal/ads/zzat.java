package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzat.class */
public final class zzat {
    private static final Comparator<byte[]> zzcd = new zzaw();
    private final List<byte[]> zzbz = new ArrayList();
    private final List<byte[]> zzca = new ArrayList(64);
    private int zzcb = 0;
    private final int zzcc = 4096;

    public zzat(int i) {
    }

    private final void zzn() {
        synchronized (this) {
            while (this.zzcb > this.zzcc) {
                byte[] remove = this.zzbz.remove(0);
                this.zzca.remove(remove);
                this.zzcb -= remove.length;
            }
        }
    }

    public final void zza(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                if (bArr.length <= this.zzcc) {
                    this.zzbz.add(bArr);
                    int binarySearch = Collections.binarySearch(this.zzca, bArr, zzcd);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.zzca.add(i, bArr);
                    this.zzcb += bArr.length;
                    zzn();
                }
            }
        }
    }

    public final byte[] zzf(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.zzca.size(); i2++) {
                byte[] bArr = this.zzca.get(i2);
                if (bArr.length >= i) {
                    this.zzcb -= bArr.length;
                    this.zzca.remove(i2);
                    this.zzbz.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }
}
