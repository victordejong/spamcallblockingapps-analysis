package com.google.android.gms.internal.measurement;

import android.content.Context;
import com.appnext.core.AppnextError;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzgx.class */
public final class zzgx extends zzhs {
    private final Context zza;
    private final zzib zzb;

    public zzgx(Context context, zzib zzibVar) {
        Objects.requireNonNull(context, AppnextError.NULL_CONTEXT);
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
        zzib zzibVar = this.zzb;
        return zzibVar == null ? zzhsVar.zzb() == null : zzibVar.equals(zzhsVar.zzb());
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode();
        zzib zzibVar = this.zzb;
        return ((hashCode ^ 1000003) * 1000003) ^ (zzibVar == null ? 0 : zzibVar.hashCode());
    }

    public final String toString() {
        String obj = this.zza.toString();
        String valueOf = String.valueOf(this.zzb);
        StringBuilder sb = new StringBuilder(obj.length() + 46 + valueOf.length());
        C22128a.m8666T0(sb, "FlagsContext{context=", obj, ", hermeticFileOverrides=", valueOf);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzhs
    public final zzib zzb() {
        return this.zzb;
    }
}
