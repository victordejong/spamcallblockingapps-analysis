package com.google.android.gms.tagmanager;

import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dm.class */
public final class dm implements ao {

    /* renamed from: a  reason: collision with root package name */
    private int f4399a = 5;

    @Override // com.google.android.gms.tagmanager.ao
    public final void a(String str) {
        if (this.f4399a <= 6) {
            Log.e("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.ao
    public final void a(String str, Throwable th) {
        if (this.f4399a <= 6) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.ao
    public final void b(String str) {
        if (this.f4399a <= 5) {
            Log.w("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.ao
    public final void b(String str, Throwable th) {
        if (this.f4399a <= 5) {
            Log.w("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.ao
    public final void c(String str) {
        if (this.f4399a <= 4) {
            Log.i("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.ao
    public final void d(String str) {
        if (this.f4399a <= 3) {
            Log.d("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.ao
    public final void e(String str) {
        if (this.f4399a <= 2) {
            Log.v("GoogleTagManager", str);
        }
    }
}
