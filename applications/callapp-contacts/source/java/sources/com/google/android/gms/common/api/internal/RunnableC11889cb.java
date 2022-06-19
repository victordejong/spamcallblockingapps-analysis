package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.common.api.internal.cb */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/cb.class */
final class RunnableC11889cb implements Runnable {

    /* renamed from: a */
    final /* synthetic */ LifecycleCallback f39331a;

    /* renamed from: b */
    final /* synthetic */ String f39332b;

    /* renamed from: c */
    final /* synthetic */ zzb f39333c;

    public RunnableC11889cb(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f39333c = zzbVar;
        this.f39331a = lifecycleCallback;
        this.f39332b = str;
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
        i = this.f39333c.f39418c;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f39331a;
            bundle = this.f39333c.f39419d;
            if (bundle != null) {
                bundle3 = this.f39333c.f39419d;
                bundle2 = bundle3.getBundle(this.f39332b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo19375a(bundle2);
        }
        i2 = this.f39333c.f39418c;
        if (i2 >= 2) {
            this.f39331a.mo19306b();
        }
        i3 = this.f39333c.f39418c;
        if (i3 >= 3) {
            this.f39331a.mo19305c();
        }
        i4 = this.f39333c.f39418c;
        if (i4 >= 4) {
            this.f39331a.mo19304d();
        }
        i5 = this.f39333c.f39418c;
        if (i5 >= 5) {
        }
    }
}
