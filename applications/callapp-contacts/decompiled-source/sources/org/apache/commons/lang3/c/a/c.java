package org.apache.commons.lang3.c.a;

import java.io.IOException;
import java.io.Writer;
@Deprecated
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/c.class */
public abstract class c extends b {
    @Override // org.apache.commons.lang3.c.a.b
    public final int a(CharSequence charSequence, int i, Writer writer) throws IOException {
        return a(Character.codePointAt(charSequence, i), writer) ? 1 : 0;
    }

    public abstract boolean a(int i, Writer writer) throws IOException;
}
