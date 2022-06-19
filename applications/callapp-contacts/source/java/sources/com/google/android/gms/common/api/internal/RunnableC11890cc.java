package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.common.api.internal.cc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/cc.class */
final class RunnableC11890cc implements Runnable {

    /* renamed from: a */
    final /* synthetic */ LifecycleCallback f39334a;

    /* renamed from: b */
    final /* synthetic */ String f39335b;

    /* renamed from: c */
    final /* synthetic */ C11891cd f39336c;

    public RunnableC11890cc(C11891cd c11891cd, LifecycleCallback lifecycleCallback, String str) {
        this.f39336c = c11891cd;
        this.f39334a = lifecycleCallback;
        this.f39335b = str;
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
        i = this.f39336c.f39339c;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f39334a;
            bundle = this.f39336c.f39340d;
            if (bundle != null) {
                bundle3 = this.f39336c.f39340d;
                bundle2 = bundle3.getBundle(this.f39335b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo19375a(bundle2);
        }
        i2 = this.f39336c.f39339c;
        if (i2 >= 2) {
            this.f39334a.mo19306b();
        }
        i3 = this.f39336c.f39339c;
        if (i3 >= 3) {
            this.f39334a.mo19305c();
        }
        i4 = this.f39336c.f39339c;
        if (i4 >= 4) {
            this.f39334a.mo19304d();
        }
        i5 = this.f39336c.f39339c;
        if (i5 >= 5) {
        }
    }
}
