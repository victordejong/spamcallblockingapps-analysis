package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.Objects;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzek.class */
public final class zzek extends zzff {
    private final Context zza;
    private final zzfo<zzfm<zzev>> zzb;

    public zzek(Context context, @Nullable zzfo<zzfm<zzev>> zzfoVar) {
        Objects.requireNonNull(context, "Null context");
        this.zza = context;
        this.zzb = zzfoVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzff)) {
            return false;
        }
        zzff zzffVar = (zzff) obj;
        if (!this.zza.equals(zzffVar.zza())) {
            return false;
        }
        zzfo<zzfm<zzev>> zzfoVar = this.zzb;
        return zzfoVar == null ? zzffVar.zzb() == null : zzfoVar.equals(zzffVar.zzb());
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode();
        zzfo<zzfm<zzev>> zzfoVar = this.zzb;
        return ((hashCode ^ 1000003) * 1000003) ^ (zzfoVar == null ? 0 : zzfoVar.hashCode());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zza);
        String valueOf2 = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46 + String.valueOf(valueOf2).length());
        sb.append("FlagsContext{context=");
        sb.append(valueOf);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzff
    public final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzff
    @Nullable
    public final zzfo<zzfm<zzev>> zzb() {
        return this.zzb;
    }
}
