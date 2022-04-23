package com.googlecode.mp4parser.h264.b;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/b/b.class */
public final class b extends a {
    public b(OutputStream outputStream) {
        super(outputStream);
    }

    private void b(int i) throws IOException {
        r8 = 0;
        int i2 = 0;
        int i3 = 0;
        while (i2 < 15) {
            int i4 = (1 << i2) + i3;
            if (i < i4) {
                break;
            }
            i2++;
            i3 = i4;
        }
        a(0L, i2);
        a(1);
        a(i - i3, i2);
    }

    public final void a(int i, String str) throws IOException {
        new StringBuilder(String.valueOf(str)).append("\t");
        b(i);
        "\t".concat(String.valueOf(i));
    }

    public final void a(long j, int i, String str) throws IOException {
        new StringBuilder(String.valueOf(str)).append("\t");
        for (int i2 = 0; i2 < i; i2++) {
            a(((int) (j >> ((i - i2) - 1))) & 1);
        }
        "\t".concat(String.valueOf(j));
    }

    public final void a(boolean z, String str) throws IOException {
        new StringBuilder(String.valueOf(str)).append("\t");
        a(z ? 1 : 0);
        "\t".concat(String.valueOf(z));
    }

    public final void b(int i, String str) throws IOException {
        new StringBuilder(String.valueOf(str)).append("\t");
        int i2 = 1;
        int i3 = i < 0 ? -1 : 1;
        if (i <= 0) {
            i2 = 0;
        }
        b(((i << 1) * i3) + i2);
        "\t".concat(String.valueOf(i));
    }

    public final void c() throws IOException {
        a(1);
        b();
        a();
    }
}
