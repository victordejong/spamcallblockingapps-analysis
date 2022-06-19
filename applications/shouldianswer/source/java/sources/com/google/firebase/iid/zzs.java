package com.google.firebase.iid;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzs.class */
public final class zzs {
    private final String zza;
    private final long zzb;

    public zzs(String str, long j) {
        this.zza = (String) Preconditions.checkNotNull(str);
        this.zzb = j;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzs)) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        return this.zzb == zzsVar.zzb && this.zza.equals(zzsVar.zza);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, Long.valueOf(this.zzb));
    }

    public final String zza() {
        return this.zza;
    }

    public final long zzb() {
        return this.zzb;
    }
}
