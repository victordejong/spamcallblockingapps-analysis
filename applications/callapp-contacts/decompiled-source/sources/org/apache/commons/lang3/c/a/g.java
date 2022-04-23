package org.apache.commons.lang3.c.a;

import java.io.IOException;
import java.io.Writer;
@Deprecated
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/g.class */
public final class g extends c {

    /* renamed from: b  reason: collision with root package name */
    private final int f39161b;

    /* renamed from: c  reason: collision with root package name */
    private final int f39162c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f39163d;

    public g() {
        this(0, Integer.MAX_VALUE, true);
    }

    private g(int i, int i2, boolean z) {
        this.f39161b = i;
        this.f39162c = i2;
        this.f39163d = z;
    }

    public static g a(int i, int i2) {
        return new g(i, i2, true);
    }

    @Override // org.apache.commons.lang3.c.a.c
    public final boolean a(int i, Writer writer) throws IOException {
        if (this.f39163d) {
            if (i < this.f39161b || i > this.f39162c) {
                return false;
            }
        } else if (i >= this.f39161b && i <= this.f39162c) {
            return false;
        }
        writer.write("&#");
        writer.write(Integer.toString(i, 10));
        writer.write(59);
        return true;
    }
}
