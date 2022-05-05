package com.google.firebase.components;

import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/zzg.class */
final class zzg {
    private final Component<?> zza;
    private final Set<zzg> zzb = new HashSet();
    private final Set<zzg> zzc = new HashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(Component<?> component) {
        this.zza = component;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set<zzg> zza() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzg zzgVar) {
        this.zzb.add(zzgVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Component<?> zzb() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzg zzgVar) {
        this.zzc.add(zzgVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc(zzg zzgVar) {
        this.zzc.remove(zzgVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzc() {
        return this.zzc.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzd() {
        return this.zzb.isEmpty();
    }
}
