package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfwa.class */
abstract class zzfwa<V, C> extends zzfvp<V, C> {
    @CheckForNull
    private List<zzfvz<V>> zza;

    public zzfwa(zzfsn<? extends zzfxa<? extends V>> zzfsnVar, boolean z) {
        super(zzfsnVar, true, true);
        ArrayList emptyList = zzfsnVar.isEmpty() ? Collections.emptyList() : zzftk.zza(zzfsnVar.size());
        for (int i = 0; i < zzfsnVar.size(); i++) {
            emptyList.add(null);
        }
        this.zza = emptyList;
    }

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final void zzA(int i) {
        super.zzA(i);
        this.zza = null;
    }

    public abstract C zzI(List<zzfvz<V>> list);

    @Override // com.google.android.gms.internal.ads.zzfvp
    public final void zzb(int i, V v) {
        List<zzfvz<V>> list = this.zza;
        if (list != null) {
            list.set(i, new zzfvz<>(v));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfvp
    public final void zzw() {
        List<zzfvz<V>> list = this.zza;
        if (list != null) {
            zzs(zzI(list));
        }
    }
}
