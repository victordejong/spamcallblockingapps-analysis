package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanq.class */
public final class zzanq extends zzaoa {
    private List<Long> zzi = null;

    public zzanq(zzams zzamsVar, String str, String str2, zzaiz zzaizVar, int i, int i2) {
        super(zzamsVar, "Zsy6wzxKzkvuI5Zg91hlK7lftgUdlMXbkLzI72tnQVNXNUFbyYhuDjwGRJi5QzOf", "/h10yfi8gz82TQ6rp82eUm/z42AeNO79/O3Nlfr8yws=", zzaizVar, i, 31);
    }

    @Override // com.google.android.gms.internal.ads.zzaoa
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        this.zze.zzR(-1L);
        this.zze.zzN(-1L);
        if (this.zzi == null) {
            this.zzi = (List) this.zzf.invoke(null, this.zzb.zzb());
        }
        List<Long> list = this.zzi;
        if (list == null || list.size() != 2) {
            return;
        }
        synchronized (this.zze) {
            this.zze.zzR(this.zzi.get(0).longValue());
            this.zze.zzN(this.zzi.get(1).longValue());
        }
    }
}
