package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import java.util.Objects;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgx.class */
public final class zzgx extends zzhs {
    private final Context zza;
    private final zzib<zzhz<zzhi>> zzb;

    public zzgx(Context context, @Nullable zzib<zzhz<zzhi>> zzibVar) {
        Objects.requireNonNull(context, "Null context");
        this.zza = context;
        this.zzb = zzibVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzhs)) {
            return false;
        }
        zzhs zzhsVar = (zzhs) obj;
        if (!this.zza.equals(zzhsVar.zza())) {
            return false;
        }
        zzib<zzhz<zzhi>> zzibVar = this.zzb;
        return zzibVar == null ? zzhsVar.zzb() == null : zzibVar.equals(zzhsVar.zzb());
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode();
        zzib<zzhz<zzhi>> zzibVar = this.zzb;
        return ((hashCode ^ 1000003) * 1000003) ^ (zzibVar == null ? 0 : zzibVar.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(valueOf.length() + 46 + valueOf2.length());
        C0082b.m8749m(sb, "FlagsContext{context=", valueOf, ", hermeticFileOverrides=", valueOf2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    @Nullable
    public final zzib<zzhz<zzhi>> zzb() {
        return this.zzb;
    }
}
