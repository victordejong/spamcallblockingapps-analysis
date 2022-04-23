package com.google.android.gms.common.api.internal;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/cc.class */
final class cc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LifecycleCallback f22725a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f22726b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ cd f22727c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cc(cd cdVar, LifecycleCallback lifecycleCallback, String str) {
        this.f22727c = cdVar;
        this.f22725a = lifecycleCallback;
        this.f22726b = str;
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
        i = this.f22727c.f22730c;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.f22725a;
            bundle = this.f22727c.f22731d;
            if (bundle != null) {
                bundle3 = this.f22727c.f22731d;
                bundle2 = bundle3.getBundle(this.f22726b);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.a(bundle2);
        }
        i2 = this.f22727c.f22730c;
        if (i2 >= 2) {
            this.f22725a.b();
        }
        i3 = this.f22727c.f22730c;
        if (i3 >= 3) {
            this.f22725a.c();
        }
        i4 = this.f22727c.f22730c;
        if (i4 >= 4) {
            this.f22725a.d();
        }
        i5 = this.f22727c.f22730c;
        if (i5 >= 5) {
        }
    }
}
