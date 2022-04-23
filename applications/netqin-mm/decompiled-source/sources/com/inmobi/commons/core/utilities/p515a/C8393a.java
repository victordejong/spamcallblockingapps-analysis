package com.inmobi.commons.core.utilities.p515a;

import com.inmobi.commons.core.p512d.C8364c;
/* renamed from: com.inmobi.commons.core.utilities.a.a */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/a/a.class */
public final class C8393a {

    /* renamed from: a */
    public C8364c f32643a = C8364c.m5799b("aes_key_store");

    /* renamed from: a */
    public final void m5713a(String str) {
        this.f32643a.m5801a("aes_public_key", str);
        this.f32643a.m5802a("last_generated_ts", System.currentTimeMillis() / 1000);
    }
}
