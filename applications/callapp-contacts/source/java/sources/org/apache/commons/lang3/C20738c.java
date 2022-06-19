package org.apache.commons.lang3;

import java.nio.charset.Charset;
/* renamed from: org.apache.commons.lang3.c */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c.class */
final class C20738c {
    C20738c() {
    }

    /* renamed from: a */
    public static Charset m554a(Charset charset) {
        Charset charset2 = charset;
        if (charset == null) {
            charset2 = Charset.defaultCharset();
        }
        return charset2;
    }
}
