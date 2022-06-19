package com.googlecode.mp4parser.h264.p427b;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.googlecode.mp4parser.h264.b.b */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/b/b.class */
public final class C16302b extends C16301a {
    public C16302b(OutputStream outputStream) {
        super(outputStream);
    }

    /* renamed from: b */
    private void m7462b(int i) throws IOException {
        int i2;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i2 = i4;
            if (i3 >= 15) {
                i3 = 0;
                break;
            }
            int i5 = (1 << i3) + i2;
            if (i < i5) {
                break;
            }
            i3++;
            i4 = i5;
        }
        m7468a(0L, i3);
        m7469a(1);
        m7468a(i - i2, i3);
    }

    /* renamed from: a */
    public final void m7465a(int i, String str) throws IOException {
        new StringBuilder(String.valueOf(str)).append("\t");
        m7462b(i);
        "\t".concat(String.valueOf(i));
    }

    /* renamed from: a */
    public final void m7464a(long j, int i, String str) throws IOException {
        new StringBuilder(String.valueOf(str)).append("\t");
        for (int i2 = 0; i2 < i; i2++) {
            m7469a(((int) (j >> ((i - i2) - 1))) & 1);
        }
        "\t".concat(String.valueOf(j));
    }

    /* renamed from: a */
    public final void m7463a(boolean z, String str) throws IOException {
        new StringBuilder(String.valueOf(str)).append("\t");
        m7469a(z ? 1 : 0);
        "\t".concat(String.valueOf(z));
    }

    /* renamed from: b */
    public final void m7461b(int i, String str) throws IOException {
        new StringBuilder(String.valueOf(str)).append("\t");
        int i2 = 1;
        int i3 = i < 0 ? -1 : 1;
        if (i <= 0) {
            i2 = 0;
        }
        m7462b(((i << 1) * i3) + i2);
        "\t".concat(String.valueOf(i));
    }

    /* renamed from: c */
    public final void m7460c() throws IOException {
        m7469a(1);
        m7467b();
        m7470a();
    }
}
