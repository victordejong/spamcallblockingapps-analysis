package com.bytedance.sdk.openadsdk.core.e;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTImage;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private String f8894a;

    /* renamed from: b  reason: collision with root package name */
    private int f8895b;

    /* renamed from: c  reason: collision with root package name */
    private int f8896c;

    public static TTImage a(h hVar) {
        if (hVar == null || !hVar.d()) {
            return null;
        }
        return new TTImage(hVar.c(), hVar.b(), hVar.a());
    }

    public String a() {
        return this.f8894a;
    }

    public void a(int i) {
        this.f8895b = i;
    }

    public void a(String str) {
        this.f8894a = str;
    }

    public int b() {
        return this.f8895b;
    }

    public void b(int i) {
        this.f8896c = i;
    }

    public int c() {
        return this.f8896c;
    }

    public boolean d() {
        return !TextUtils.isEmpty(this.f8894a) && this.f8895b > 0 && this.f8896c > 0;
    }
}
