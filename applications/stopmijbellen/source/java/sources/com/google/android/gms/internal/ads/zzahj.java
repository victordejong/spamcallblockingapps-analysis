package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahj.class */
public final class zzahj {
    public static final Comparator<byte[]> zza = new zzahi();
    private final List<byte[]> zzb = new ArrayList();
    private final List<byte[]> zzc = new ArrayList(64);
    private int zzd = 0;

    public zzahj(int i) {
    }

    private final void zzc() {
        synchronized (this) {
            while (this.zzd > 4096) {
                byte[] remove = this.zzb.remove(0);
                this.zzc.remove(remove);
                this.zzd -= remove.length;
            }
        }
    }

    public final void zza(byte[] bArr) {
        synchronized (this) {
            if (bArr != null) {
                int length = bArr.length;
                if (length <= 4096) {
                    this.zzb.add(bArr);
                    int binarySearch = Collections.binarySearch(this.zzc, bArr, zza);
                    int i = binarySearch;
                    if (binarySearch < 0) {
                        i = (-binarySearch) - 1;
                    }
                    this.zzc.add(i, bArr);
                    this.zzd += length;
                    zzc();
                }
            }
        }
    }

    public final byte[] zzb(int i) {
        synchronized (this) {
            for (int i2 = 0; i2 < this.zzc.size(); i2++) {
                byte[] bArr = this.zzc.get(i2);
                int length = bArr.length;
                if (length >= i) {
                    this.zzd -= length;
                    this.zzc.remove(i2);
                    this.zzb.remove(bArr);
                    return bArr;
                }
            }
            return new byte[i];
        }
    }
}
