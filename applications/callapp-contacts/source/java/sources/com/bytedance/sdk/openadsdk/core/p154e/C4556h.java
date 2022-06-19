package com.bytedance.sdk.openadsdk.core.p154e;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTImage;
/* renamed from: com.bytedance.sdk.openadsdk.core.e.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/e/h.class */
public class C4556h {

    /* renamed from: a */
    private String f16527a;

    /* renamed from: b */
    private int f16528b;

    /* renamed from: c */
    private int f16529c;

    /* renamed from: a */
    public static TTImage m35252a(C4556h c4556h) {
        if (c4556h == null || !c4556h.m35247d()) {
            return null;
        }
        return new TTImage(c4556h.m35248c(), c4556h.m35250b(), c4556h.m35254a());
    }

    /* renamed from: a */
    public String m35254a() {
        return this.f16527a;
    }

    /* renamed from: a */
    public void m35253a(int i) {
        this.f16528b = i;
    }

    /* renamed from: a */
    public void m35251a(String str) {
        this.f16527a = str;
    }

    /* renamed from: b */
    public int m35250b() {
        return this.f16528b;
    }

    /* renamed from: b */
    public void m35249b(int i) {
        this.f16529c = i;
    }

    /* renamed from: c */
    public int m35248c() {
        return this.f16529c;
    }

    /* renamed from: d */
    public boolean m35247d() {
        return !TextUtils.isEmpty(this.f16527a) && this.f16528b > 0 && this.f16529c > 0;
    }
}
