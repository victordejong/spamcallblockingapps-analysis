package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.common.api.internal.bj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/bj.class */
final class RunnableC2541bj implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ LifecycleCallback f7155a;

    /* renamed from: b */
    private final /* synthetic */ String f7156b;

    /* renamed from: c */
    private final /* synthetic */ C2542bk f7157c;

    public RunnableC2541bj(C2542bk c2542bk, LifecycleCallback lifecycleCallback, String str) {
        this.f7157c = c2542bk;
        this.f7155a = lifecycleCallback;
        this.f7156b = str;
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
        i = this.f7157c.f7160c;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f7155a;
            bundle = this.f7157c.f7161d;
            if (bundle != null) {
                bundle3 = this.f7157c.f7161d;
                bundle2 = bundle3.getBundle(this.f7156b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo14354a(bundle2);
        }
        i2 = this.f7157c.f7160c;
        if (i2 >= 2) {
            this.f7155a.mo14225b();
        }
        i3 = this.f7157c.f7160c;
        if (i3 >= 3) {
            this.f7155a.mo14224c();
        }
        i4 = this.f7157c.f7160c;
        if (i4 >= 4) {
            this.f7155a.mo3906d();
        }
        i5 = this.f7157c.f7160c;
        if (i5 >= 5) {
            this.f7155a.m14400e();
        }
    }
}
