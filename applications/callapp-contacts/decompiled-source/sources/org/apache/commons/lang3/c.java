package org.apache.commons.lang3;

import java.nio.charset.Charset;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c.class */
final class c {
    c() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Charset a(Charset charset) {
        Charset charset2 = charset;
        if (charset == null) {
            charset2 = Charset.defaultCharset();
        }
        return charset2;
    }
}
