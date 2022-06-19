package com.google.android.gms.common;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.common.zzu;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzy.class */
public final class zzy {
    private String zza = null;
    private long zzb = -1;
    private zzu<byte[]> zzc = zzu.zzi();
    private zzu<byte[]> zzd = zzu.zzi();

    public final zzy zza(String str) {
        this.zza = str;
        return this;
    }

    public final zzy zzb(long j) {
        this.zzb = j;
        return this;
    }

    public final zzy zzc(List<byte[]> list) {
        Preconditions.checkNotNull(list);
        this.zzc = zzu.zzm(list);
        return this;
    }

    public final zzy zzd(List<byte[]> list) {
        Preconditions.checkNotNull(list);
        this.zzd = zzu.zzm(list);
        return this;
    }

    public final zzz zze() {
        if (this.zza != null) {
            if (this.zzb < 0) {
                throw new IllegalStateException("minimumStampedVersionNumber must be greater than or equal to 0");
            }
            if (this.zzc.isEmpty() && this.zzd.isEmpty()) {
                throw new IllegalStateException("Either orderedTestCerts or orderedProdCerts must have at least one cert");
            }
            return new zzz(this.zza, this.zzb, this.zzc, this.zzd, null);
        }
        throw new IllegalStateException("packageName must be defined");
    }
}
