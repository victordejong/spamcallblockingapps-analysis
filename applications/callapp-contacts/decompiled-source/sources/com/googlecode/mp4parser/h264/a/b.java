package com.googlecode.mp4parser.h264.a;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/a/b.class */
public final class b extends a {
    public b(InputStream inputStream) throws IOException {
        super(inputStream);
    }

    private void a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        String valueOf = String.valueOf(a.f33192d - this.e.f33191b);
        int length = valueOf.length();
        sb.append("@".concat(String.valueOf(valueOf)));
        for (int i = 0; i < 8 - length; i++) {
            sb.append(' ');
        }
        sb.append(str);
        int length2 = sb.length();
        int i2 = this.e.f33191b;
        for (int i3 = 0; i3 < (100 - length2) - i2; i3++) {
            sb.append(' ');
        }
        sb.append(this.e);
        sb.append(" (" + str2 + ")");
        this.e.f33191b = 0;
    }

    private int e() throws IOException {
        int i = 0;
        int i2 = 0;
        while (a() == 0) {
            i2++;
        }
        if (i2 > 0) {
            i = (int) (((1 << i2) - 1) + a(i2));
        }
        return i;
    }

    public final int a(String str) throws IOException {
        int e = e();
        a(str, String.valueOf(e));
        return e;
    }

    public final long a(int i, String str) throws IOException {
        long a2 = a(i);
        a(str, String.valueOf(a2));
        return a2;
    }

    public final int b(String str) throws IOException {
        int e = e();
        int i = e & 1;
        int i2 = ((e >> 1) + i) * ((i << 1) - 1);
        a(str, String.valueOf(i2));
        return i2;
    }

    public final boolean c(String str) throws IOException {
        boolean z = a() != 0;
        a(str, z ? "1" : "0");
        return z;
    }

    public final void d() throws IOException {
        a();
        c();
    }
}
