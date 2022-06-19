package com.bytedance.sdk.p127a.p129b;

import java.io.IOException;
/* renamed from: com.bytedance.sdk.a.b.w */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/w.class */
public enum EnumC4143w {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2");
    

    /* renamed from: e */
    private final String f15205e;

    EnumC4143w(String str) {
        this.f15205e = str;
    }

    /* renamed from: a */
    public static EnumC4143w m36353a(String str) throws IOException {
        EnumC4143w enumC4143w = HTTP_1_0;
        if (str.equals(enumC4143w.f15205e)) {
            return enumC4143w;
        }
        EnumC4143w enumC4143w2 = HTTP_1_1;
        if (str.equals(enumC4143w2.f15205e)) {
            return enumC4143w2;
        }
        EnumC4143w enumC4143w3 = HTTP_2;
        if (str.equals(enumC4143w3.f15205e)) {
            return enumC4143w3;
        }
        EnumC4143w enumC4143w4 = SPDY_3;
        if (!str.equals(enumC4143w4.f15205e)) {
            throw new IOException("Unexpected protocol: ".concat(String.valueOf(str)));
        }
        return enumC4143w4;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f15205e;
    }
}
