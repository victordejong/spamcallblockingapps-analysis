package com.googlecode.mp4parser.h264.p427b;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.googlecode.mp4parser.h264.b.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/b/a.class */
public class C16301a {

    /* renamed from: a */
    private final OutputStream f57576a;

    /* renamed from: b */
    private int[] f57577b = new int[8];

    /* renamed from: c */
    private int f57578c;

    public C16301a(OutputStream outputStream) {
        this.f57576a = outputStream;
    }

    /* renamed from: c */
    private void m7466c() throws IOException {
        int[] iArr = this.f57577b;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        this.f57576a.write(iArr[7] | (i << 7) | (i2 << 6) | (i3 << 5) | (i4 << 4) | (i5 << 3) | (i6 << 2) | (i7 << 1));
    }

    /* renamed from: a */
    public final void m7470a() throws IOException {
        for (int i = this.f57578c; i < 8; i++) {
            this.f57577b[i] = 0;
        }
        this.f57578c = 0;
        m7466c();
    }

    /* renamed from: a */
    public final void m7469a(int i) throws IOException {
        if (this.f57578c == 8) {
            this.f57578c = 0;
            m7466c();
        }
        int[] iArr = this.f57577b;
        int i2 = this.f57578c;
        this.f57578c = i2 + 1;
        iArr[i2] = i;
    }

    /* renamed from: a */
    public final void m7468a(long j, int i) throws IOException {
        for (int i2 = 0; i2 < i; i2++) {
            m7469a(((int) (j >> ((i - i2) - 1))) & 1);
        }
    }

    /* renamed from: b */
    public final void m7467b() throws IOException {
        m7468a(0L, 8 - this.f57578c);
    }
}
