package com.flurry.sdk;

import android.text.TextUtils;
/* renamed from: com.flurry.sdk.jk */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jk.class */
public abstract class AbstractC3343jk {

    /* renamed from: e */
    public String f5720e;

    public AbstractC3343jk(String str) {
        this.f5720e = "com.flurry.android.sdk.ReplaceMeWithAProperEventName";
        if (!TextUtils.isEmpty(str)) {
            this.f5720e = str;
            return;
        }
        throw new IllegalArgumentException("Event must have a name!");
    }

    /* renamed from: a */
    public final String m32638a() {
        return this.f5720e;
    }

    /* renamed from: b */
    public final void m32637b() {
        C3345jm.m32636a().m32635a(this);
    }
}
