package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.common.api.internal.bi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bi.class */
final class RunnableC2540bi implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ LifecycleCallback f7152a;

    /* renamed from: b */
    private final /* synthetic */ String f7153b;

    /* renamed from: c */
    private final /* synthetic */ FragmentC2539bh f7154c;

    public RunnableC2540bi(FragmentC2539bh fragmentC2539bh, LifecycleCallback lifecycleCallback, String str) {
        this.f7154c = fragmentC2539bh;
        this.f7152a = lifecycleCallback;
        this.f7153b = str;
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
        i = this.f7154c.f7150c;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f7152a;
            bundle = this.f7154c.f7151d;
            if (bundle != null) {
                bundle3 = this.f7154c.f7151d;
                bundle2 = bundle3.getBundle(this.f7153b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo14354a(bundle2);
        }
        i2 = this.f7154c.f7150c;
        if (i2 >= 2) {
            this.f7152a.mo14225b();
        }
        i3 = this.f7154c.f7150c;
        if (i3 >= 3) {
            this.f7152a.mo14224c();
        }
        i4 = this.f7154c.f7150c;
        if (i4 >= 4) {
            this.f7152a.mo3906d();
        }
        i5 = this.f7154c.f7150c;
        if (i5 >= 5) {
            this.f7152a.m14400e();
        }
    }
}
