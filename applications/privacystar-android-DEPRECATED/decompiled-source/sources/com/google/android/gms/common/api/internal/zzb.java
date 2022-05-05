package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zzb.class */
final class zzb implements Runnable {
    private final /* synthetic */ LifecycleCallback zzbh;
    private final /* synthetic */ String zzbi;
    private final /* synthetic */ zza zzbj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(zza zzaVar, LifecycleCallback lifecycleCallback, String str) {
        this.zzbj = zzaVar;
        this.zzbh = lifecycleCallback;
        this.zzbi = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        i = this.zzbj.zzbf;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.zzbh;
            bundle = this.zzbj.zzbg;
            if (bundle != null) {
                bundle3 = this.zzbj.zzbg;
                bundle2 = bundle3.getBundle(this.zzbi);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.onCreate(bundle2);
        }
        i2 = this.zzbj.zzbf;
        if (i2 >= 2) {
            this.zzbh.onStart();
        }
        i3 = this.zzbj.zzbf;
        if (i3 >= 3) {
            this.zzbh.onResume();
        }
        i4 = this.zzbj.zzbf;
        if (i4 >= 4) {
            this.zzbh.onStop();
        }
        i5 = this.zzbj.zzbf;
        if (i5 >= 5) {
            this.zzbh.onDestroy();
        }
    }
}
