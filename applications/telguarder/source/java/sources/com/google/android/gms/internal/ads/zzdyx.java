package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyo;
import java.util.List;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyx.class */
abstract class zzdyx<V, C> extends zzdyo<V, C> {
    private List<zzdyz<V>> zziae;

    public zzdyx(zzdwy<? extends zzdzw<? extends V>> zzdwyVar, boolean z) {
        super(zzdwyVar, true, true);
        zzdxd zzazm = zzdwyVar.isEmpty() ? zzdxd.zzazm() : zzdxl.zzet(zzdwyVar.size());
        for (int i = 0; i < zzdwyVar.size(); i++) {
            zzazm.add(null);
        }
        this.zziae = zzazm;
    }

    @Override // com.google.android.gms.internal.ads.zzdyo
    public final void zza(zzdyo.zza zzaVar) {
        super.zza(zzaVar);
        this.zziae = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzdyo
    final void zzazx() {
        List<zzdyz<V>> list = this.zziae;
        if (list != null) {
            set(zzl(list));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyo
    final void zzb(int i, @NullableDecl V v) {
        List<zzdyz<V>> list = this.zziae;
        if (list != null) {
            list.set(i, new zzdyz<>(v));
        }
    }

    abstract C zzl(List<zzdyz<V>> list);
}
