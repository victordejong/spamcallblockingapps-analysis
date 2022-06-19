package org.apache.commons.lang3.p585c.p586a;

import java.io.IOException;
import java.io.Writer;
@Deprecated
/* renamed from: org.apache.commons.lang3.c.a.j */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/j.class */
public class C20749j extends AbstractC20741c {

    /* renamed from: b */
    private final int f67239b;

    /* renamed from: c */
    private final int f67240c;

    /* renamed from: d */
    private final boolean f67241d;

    public C20749j() {
        this(0, Integer.MAX_VALUE, true);
    }

    public C20749j(int i, int i2, boolean z) {
        this.f67239b = i;
        this.f67240c = i2;
        this.f67241d = z;
    }

    @Override // org.apache.commons.lang3.p585c.p586a.AbstractC20741c
    /* renamed from: a */
    public final boolean mo533a(int i, Writer writer) throws IOException {
        if (this.f67241d) {
            if (i < this.f67239b || i > this.f67240c) {
                return false;
            }
        } else if (i >= this.f67239b && i <= this.f67240c) {
            return false;
        }
        if (i > 65535) {
            writer.write(mo534b(i));
            return true;
        }
        writer.write("\\u");
        writer.write(f67220a[(i >> 12) & 15]);
        writer.write(f67220a[(i >> 8) & 15]);
        writer.write(f67220a[(i >> 4) & 15]);
        writer.write(f67220a[i & 15]);
        return true;
    }

    /* renamed from: b */
    protected String mo534b(int i) {
        return "\\u" + m553a(i);
    }
}
