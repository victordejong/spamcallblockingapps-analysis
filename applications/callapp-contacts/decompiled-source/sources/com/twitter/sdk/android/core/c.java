package com.twitter.sdk.android.core;

import android.util.Log;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/c.class */
public final class c implements f {

    /* renamed from: a  reason: collision with root package name */
    private int f35090a;

    public c() {
        this.f35090a = 4;
    }

    public c(int i) {
        this.f35090a = i;
    }

    private boolean a(int i) {
        return this.f35090a <= i;
    }

    @Override // com.twitter.sdk.android.core.f
    public final void a(String str, String str2) {
        a(3);
    }

    @Override // com.twitter.sdk.android.core.f
    public final void a(String str, String str2, Throwable th) {
        if (a(6)) {
            Log.e(str, str2, th);
        }
    }

    @Override // com.twitter.sdk.android.core.f
    public final void b(String str, String str2) {
        if (a(5)) {
            Log.w(str, str2, null);
        }
    }

    @Override // com.twitter.sdk.android.core.f
    public final void c(String str, String str2) {
        a(str, str2, null);
    }
}
