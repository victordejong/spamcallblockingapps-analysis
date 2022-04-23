package com.android.billingclient.api;

import android.text.TextUtils;
/* renamed from: com.android.billingclient.api.e0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/e0.class */
public final class C0629e0 {

    /* renamed from: a */
    private String f3183a;

    /* synthetic */ C0629e0(C0627d0 d0Var) {
    }

    /* renamed from: a */
    public final C0629e0 m11511a(String str) {
        this.f3183a = str;
        return this;
    }

    /* renamed from: b */
    public final C0632f0 m11510b() {
        if (!TextUtils.isEmpty(this.f3183a)) {
            return new C0632f0(this.f3183a, null, null);
        }
        throw new IllegalArgumentException("SKU must be set.");
    }
}
