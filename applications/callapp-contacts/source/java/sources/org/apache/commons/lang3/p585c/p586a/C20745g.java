package org.apache.commons.lang3.p585c.p586a;

import java.io.IOException;
import java.io.Writer;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.g */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/g.class */
public final class C20745g extends AbstractC20741c {

    /* renamed from: b */
    private final int f67235b;

    /* renamed from: c */
    private final int f67236c;

    /* renamed from: d */
    private final boolean f67237d;

    public C20745g() {
        this(0, Integer.MAX_VALUE, true);
    }

    private C20745g(int i, int i2, boolean z) {
        this.f67235b = i;
        this.f67236c = i2;
        this.f67237d = z;
    }

    /* renamed from: a */
    public static C20745g m537a(int i, int i2) {
        return new C20745g(i, i2, true);
    }

    @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20741c
    /* renamed from: a */
    public final boolean mo533a(int i, Writer writer) throws IOException {
        if (this.f67237d) {
            if (i < this.f67235b || i > this.f67236c) {
                return false;
            }
        } else if (i >= this.f67235b && i <= this.f67236c) {
            return false;
        }
        writer.write("&#");
        writer.write(Integer.toString(i, 10));
        writer.write(59);
        return true;
    }
}
