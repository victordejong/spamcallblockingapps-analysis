package org.apache.commons.lang3.p585c.p586a;

import java.io.IOException;
import java.io.Writer;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.c */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/c.class */
public abstract class AbstractC20741c extends AbstractC20740b {
    @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20740b
    /* renamed from: a */
    public final int mo515a(CharSequence charSequence, int i, Writer writer) throws IOException {
        return mo533a(Character.codePointAt(charSequence, i), writer) ? 1 : 0;
    }

    /* renamed from: a */
    public abstract boolean mo533a(int i, Writer writer) throws IOException;
}
