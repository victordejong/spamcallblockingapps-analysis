package org.apache.commons.lang3.c.a;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang3.ArrayUtils;
@Deprecated
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/a.class */
public final class a extends b {

    /* renamed from: b  reason: collision with root package name */
    private final b[] f39152b;

    public a(b... bVarArr) {
        this.f39152b = (b[]) ArrayUtils.clone(bVarArr);
    }

    @Override // org.apache.commons.lang3.c.a.b
    public final int a(CharSequence charSequence, int i, Writer writer) throws IOException {
        for (b bVar : this.f39152b) {
            int a2 = bVar.a(charSequence, i, writer);
            if (a2 != 0) {
                return a2;
            }
        }
        return 0;
    }
}
