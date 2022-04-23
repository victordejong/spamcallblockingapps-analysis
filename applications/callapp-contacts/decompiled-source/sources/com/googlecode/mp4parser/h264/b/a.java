package com.googlecode.mp4parser.h264.b;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/b/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f33196a;

    /* renamed from: b  reason: collision with root package name */
    private int[] f33197b = new int[8];

    /* renamed from: c  reason: collision with root package name */
    private int f33198c;

    public a(OutputStream outputStream) {
        this.f33196a = outputStream;
    }

    private void c() throws IOException {
        int[] iArr = this.f33197b;
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        this.f33196a.write(iArr[7] | (i << 7) | (i2 << 6) | (i3 << 5) | (i4 << 4) | (i5 << 3) | (i6 << 2) | (i7 << 1));
    }

    public final void a() throws IOException {
        for (int i = this.f33198c; i < 8; i++) {
            this.f33197b[i] = 0;
        }
        this.f33198c = 0;
        c();
    }

    public final void a(int i) throws IOException {
        if (this.f33198c == 8) {
            this.f33198c = 0;
            c();
        }
        int[] iArr = this.f33197b;
        int i2 = this.f33198c;
        this.f33198c = i2 + 1;
        iArr[i2] = i;
    }

    public final void a(long j, int i) throws IOException {
        for (int i2 = 0; i2 < i; i2++) {
            a(((int) (j >> ((i - i2) - 1))) & 1);
        }
    }

    public final void b() throws IOException {
        a(0L, 8 - this.f33198c);
    }
}
