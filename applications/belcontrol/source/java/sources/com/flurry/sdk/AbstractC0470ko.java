package com.flurry.sdk;

import android.text.TextUtils;
/* renamed from: com.flurry.sdk.ko */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ko.class */
public abstract class AbstractC0470ko {

    /* renamed from: f */
    public String f3488f;

    public AbstractC0470ko(String str) {
        this.f3488f = "com.flurry.android.sdk.ReplaceMeWithAProperEventName";
        if (!TextUtils.isEmpty(str)) {
            this.f3488f = str;
            return;
        }
        throw new IllegalArgumentException("Event must have a name!");
    }

    /* renamed from: a */
    public final String m4620a() {
        return this.f3488f;
    }

    /* renamed from: b */
    public final void m4619b() {
        C0472kq.m4617a().m4616a(this);
    }
}
