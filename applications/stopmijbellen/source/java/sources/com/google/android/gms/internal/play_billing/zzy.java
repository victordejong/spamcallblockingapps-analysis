package com.google.android.gms.internal.play_billing;

import java.util.Set;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/play_billing/zzy.class */
public abstract class zzy extends zzr implements Set {
    @CheckForNull
    private transient zzu zza;

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        boolean z = true;
        if (obj != this) {
            if (obj == this) {
                z = true;
            } else {
                if (obj instanceof Set) {
                    Set set = (Set) obj;
                    try {
                        if (size() == set.size()) {
                            if (containsAll(set)) {
                                return true;
                            }
                        }
                    } catch (ClassCastException | NullPointerException e) {
                    }
                }
                z = false;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzag.zza(this);
    }

    @Override // com.google.android.gms.internal.play_billing.zzr
    /* renamed from: zzd */
    public abstract zzah iterator();

    public final zzu zzf() {
        zzu zzuVar = this.zza;
        zzu zzuVar2 = zzuVar;
        if (zzuVar == null) {
            zzuVar2 = zzg();
            this.zza = zzuVar2;
        }
        return zzuVar2;
    }

    public zzu zzg() {
        return zzu.zzg(toArray());
    }
}
