package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdyi.class */
public final class zzdyi<V, X extends Throwable> extends zzdyg<V, X, zzdvz<? super X, ? extends V>, V> {
    public zzdyi(zzdzw<? extends V> zzdzwVar, Class<X> cls, zzdvz<? super X, ? extends V> zzdvzVar) {
        super(zzdzwVar, cls, zzdvzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdyg
    final void setResult(@NullableDecl V v) {
        set(v);
    }

    @Override // com.google.android.gms.internal.ads.zzdyg
    @NullableDecl
    final /* synthetic */ Object zza(Object obj, Throwable th) throws Exception {
        return ((zzdvz) obj).apply(th);
    }
}
