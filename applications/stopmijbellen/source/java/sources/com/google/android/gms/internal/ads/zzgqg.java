package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import java.lang.ref.WeakReference;
import p195p.AbstractServiceConnectionC3978d;
import p195p.C3976b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgqg.class */
public final class zzgqg extends AbstractServiceConnectionC3978d {
    private final WeakReference<zzbmh> zza;

    public zzgqg(zzbmh zzbmhVar, byte[] bArr) {
        this.zza = new WeakReference<>(zzbmhVar);
    }

    @Override // p195p.AbstractServiceConnectionC3978d
    public final void onCustomTabsServiceConnected(ComponentName componentName, C3976b c3976b) {
        zzbmh zzbmhVar = this.zza.get();
        if (zzbmhVar != null) {
            zzbmhVar.zzc(c3976b);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbmh zzbmhVar = this.zza.get();
        if (zzbmhVar != null) {
            zzbmhVar.zzd();
        }
    }
}
