package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfrn.class */
public abstract class zzfrn<V, C> extends zzfrd<V, C> {
    private List<zzfrm<V>> zza;

    public zzfrn(zzfoe<? extends zzfsm<? extends V>> zzfoeVar, boolean z) {
        super(zzfoeVar, true, true);
        ArrayList emptyList = zzfoeVar.isEmpty() ? Collections.emptyList() : zzfpb.zza(zzfoeVar.size());
        for (int i = 0; i < zzfoeVar.size(); i++) {
            emptyList.add(null);
        }
        this.zza = emptyList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzfrd
    public final void zzA() {
        List<zzfrm<V>> list = this.zza;
        if (list != null) {
            zzp(zzJ(list));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfrd
    public final void zzB(int i) {
        super.zzB(i);
        this.zza = null;
    }

    public abstract C zzJ(List<zzfrm<V>> list);

    @Override // com.google.android.gms.internal.ads.zzfrd
    public final void zzz(int i, V v) {
        List<zzfrm<V>> list = this.zza;
        if (list != null) {
            list.set(i, new zzfrm<>(v));
        }
    }
}
