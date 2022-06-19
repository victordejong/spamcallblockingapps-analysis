package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.common.api.internal.m1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/m1.class */
final class RunnableC6048m1 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ LifecycleCallback f19326d;

    /* renamed from: e */
    final /* synthetic */ String f19327e;

    /* renamed from: f */
    final /* synthetic */ C6051n1 f19328f;

    public RunnableC6048m1(C6051n1 c6051n1, LifecycleCallback lifecycleCallback, String str) {
        this.f19328f = c6051n1;
        this.f19326d = lifecycleCallback;
        this.f19327e = str;
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
        i = this.f19328f.f19334g0;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f19326d;
            bundle = this.f19328f.f19335h0;
            if (bundle != null) {
                bundle3 = this.f19328f.f19335h0;
                bundle2 = bundle3.getBundle(this.f19327e);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo17331f(bundle2);
        }
        i2 = this.f19328f.f19334g0;
        if (i2 >= 2) {
            this.f19326d.mo17267j();
        }
        i3 = this.f19328f.f19334g0;
        if (i3 >= 3) {
            this.f19326d.mo17268h();
        }
        i4 = this.f19328f.f19334g0;
        if (i4 >= 4) {
            this.f19326d.mo17266k();
        }
        i5 = this.f19328f.f19334g0;
        if (i5 >= 5) {
            this.f19326d.m17437g();
        }
    }
}
