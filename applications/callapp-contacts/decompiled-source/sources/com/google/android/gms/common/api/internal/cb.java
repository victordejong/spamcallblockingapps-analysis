package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/cb.class */
final class cb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f22722a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f22723b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ zzb f22724c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f22724c = zzbVar;
        this.f22722a = lifecycleCallback;
        this.f22723b = str;
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
        i = this.f22724c.f22780c;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f22722a;
            bundle = this.f22724c.f22781d;
            if (bundle != null) {
                bundle3 = this.f22724c.f22781d;
                bundle2 = bundle3.getBundle(this.f22723b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.a(bundle2);
        }
        i2 = this.f22724c.f22780c;
        if (i2 >= 2) {
            this.f22722a.b();
        }
        i3 = this.f22724c.f22780c;
        if (i3 >= 3) {
            this.f22722a.c();
        }
        i4 = this.f22724c.f22780c;
        if (i4 >= 4) {
            this.f22722a.d();
        }
        i5 = this.f22724c.f22780c;
        if (i5 >= 5) {
        }
    }
}
