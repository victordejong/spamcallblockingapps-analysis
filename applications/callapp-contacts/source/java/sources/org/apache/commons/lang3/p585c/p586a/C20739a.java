package org.apache.commons.lang3.p585c.p586a;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang3.ArrayUtils;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.a */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/a.class */
public final class C20739a extends AbstractC20740b {

    /* renamed from: b */
    private final AbstractC20740b[] f67219b;

    public C20739a(AbstractC20740b... abstractC20740bArr) {
        this.f67219b = (AbstractC20740b[]) ArrayUtils.clone(abstractC20740bArr);
    }

    @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20740b
    /* renamed from: a */
    public final int mo515a(CharSequence charSequence, int i, Writer writer) throws IOException {
        for (AbstractC20740b abstractC20740b : this.f67219b) {
            int mo515a = abstractC20740b.mo515a(charSequence, i, writer);
            if (mo515a != 0) {
                return mo515a;
            }
        }
        return 0;
    }
}
