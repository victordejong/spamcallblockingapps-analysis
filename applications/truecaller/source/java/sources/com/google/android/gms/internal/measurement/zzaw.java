package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzaw.class */
public abstract class zzaw {
    public final List zza = new ArrayList();

    public abstract zzap zza(String str, zzg zzgVar, List list);

    public final zzap zzb(String str) {
        if (this.zza.contains(zzh.zze(str))) {
            String valueOf = String.valueOf(str);
            throw new UnsupportedOperationException(valueOf.length() != 0 ? "Command not implemented: ".concat(valueOf) : new String("Command not implemented: "));
        }
        throw new IllegalArgumentException("Command not supported");
    }
}
