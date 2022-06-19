package com.android.billingclient.api;

import android.text.TextUtils;
/* renamed from: com.android.billingclient.api.e0 */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/e0.class */
public final class C3901e0 {

    /* renamed from: a */
    private String f12301a;

    public /* synthetic */ C3901e0(C3899d0 c3899d0) {
    }

    /* renamed from: a */
    public final C3901e0 m23802a(String str) {
        this.f12301a = str;
        return this;
    }

    /* renamed from: b */
    public final C3904f0 m23801b() {
        if (!TextUtils.isEmpty(this.f12301a)) {
            return new C3904f0(this.f12301a, null, null);
        }
        throw new IllegalArgumentException("SKU must be set.");
    }
}
