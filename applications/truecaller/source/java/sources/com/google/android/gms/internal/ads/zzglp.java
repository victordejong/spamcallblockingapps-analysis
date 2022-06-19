package com.google.android.gms.internal.ads;

import android.content.ComponentName;
import java.lang.ref.WeakReference;
import p1727n3.p1755d.p1756a.AbstractServiceConnectionC25697g;
import p1727n3.p1755d.p1756a.C25695e;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzglp.class */
public final class zzglp extends AbstractServiceConnectionC25697g {
    private final WeakReference<zzbkj> zza;

    public zzglp(zzbkj zzbkjVar, byte[] bArr) {
        this.zza = new WeakReference<>(zzbkjVar);
    }

    @Override // p1727n3.p1755d.p1756a.AbstractServiceConnectionC25697g
    public final void onCustomTabsServiceConnected(ComponentName componentName, C25695e c25695e) {
        zzbkj zzbkjVar = this.zza.get();
        if (zzbkjVar != null) {
            zzbkjVar.zzf(c25695e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbkj zzbkjVar = this.zza.get();
        if (zzbkjVar != null) {
            zzbkjVar.zzg();
        }
    }
}
