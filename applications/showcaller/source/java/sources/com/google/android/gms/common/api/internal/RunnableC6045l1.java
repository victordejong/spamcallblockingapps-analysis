package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.common.api.internal.l1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/l1.class */
final class RunnableC6045l1 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ LifecycleCallback f19322d;

    /* renamed from: e */
    final /* synthetic */ String f19323e;

    /* renamed from: f */
    final /* synthetic */ zzb f19324f;

    public RunnableC6045l1(zzb zzbVar, LifecycleCallback lifecycleCallback, String str) {
        this.f19324f = zzbVar;
        this.f19322d = lifecycleCallback;
        this.f19323e = str;
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
        i = this.f19324f.f19378f;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f19322d;
            bundle = this.f19324f.f19379g;
            if (bundle != null) {
                bundle3 = this.f19324f.f19379g;
                bundle2 = bundle3.getBundle(this.f19323e);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.mo17331f(bundle2);
        }
        i2 = this.f19324f.f19378f;
        if (i2 >= 2) {
            this.f19322d.mo17267j();
        }
        i3 = this.f19324f.f19378f;
        if (i3 >= 3) {
            this.f19322d.mo17268h();
        }
        i4 = this.f19324f.f19378f;
        if (i4 >= 4) {
            this.f19322d.mo17266k();
        }
        i5 = this.f19324f.f19378f;
        if (i5 >= 5) {
            this.f19322d.m17437g();
        }
    }
}
