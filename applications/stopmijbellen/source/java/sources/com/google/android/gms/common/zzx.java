package com.google.android.gms.common;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.common.zzag;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/zzx.class */
final class zzx {
    private String zza = null;
    private long zzb = -1;
    private zzag<byte[]> zzc = zzag.zzl();
    private zzag<byte[]> zzd = zzag.zzl();

    public final zzx zza(long j) {
        this.zzb = j;
        return this;
    }

    public final zzx zzb(List<byte[]> list) {
        Preconditions.checkNotNull(list);
        this.zzd = zzag.zzk(list);
        return this;
    }

    public final zzx zzc(List<byte[]> list) {
        Preconditions.checkNotNull(list);
        this.zzc = zzag.zzk(list);
        return this;
    }

    public final zzx zzd(String str) {
        this.zza = str;
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
