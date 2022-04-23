package org.apache.commons.lang3.c.a;

import java.io.IOException;
import java.io.Writer;
@Deprecated
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/c/a/j.class */
public class j extends c {

    /* renamed from: b  reason: collision with root package name */
    private final int f39165b;

    /* renamed from: c  reason: collision with root package name */
    private final int f39166c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f39167d;

    public j() {
        this(0, Integer.MAX_VALUE, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public j(int i, int i2, boolean z) {
        this.f39165b = i;
        this.f39166c = i2;
        this.f39167d = z;
    }

    @Override // org.apache.commons.lang3.c.a.c
    public final boolean a(int i, Writer writer) throws IOException {
        if (this.f39167d) {
            if (i < this.f39165b || i > this.f39166c) {
                return false;
            }
        } else if (i >= this.f39165b && i <= this.f39166c) {
            return false;
        }
        if (i > 65535) {
            writer.write(b(i));
            return true;
        }
        writer.write("\\u");
        writer.write(f39153a[(i >> 12) & 15]);
        writer.write(f39153a[(i >> 8) & 15]);
        writer.write(f39153a[(i >> 4) & 15]);
        writer.write(f39153a[i & 15]);
        return true;
    }

    protected String b(int i) {
        return "\\u" + a(i);
    }
}
