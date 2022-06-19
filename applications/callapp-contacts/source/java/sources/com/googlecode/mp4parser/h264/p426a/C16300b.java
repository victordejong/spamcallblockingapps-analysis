package com.googlecode.mp4parser.h264.p426a;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.googlecode.mp4parser.h264.a.b */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/a/b.class */
public final class C16300b extends C16299a {
    public C16300b(InputStream inputStream) throws IOException {
        super(inputStream);
    }

    /* renamed from: a */
    private void m7475a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        String valueOf = String.valueOf(C16299a.f57570d - this.f57574e.f57569b);
        int length = valueOf.length();
        sb.append("@".concat(String.valueOf(valueOf)));
        for (int i = 0; i < 8 - length; i++) {
            sb.append(' ');
        }
        sb.append(str);
        int length2 = sb.length();
        int i2 = this.f57574e.f57569b;
        for (int i3 = 0; i3 < (100 - length2) - i2; i3++) {
            sb.append(' ');
        }
        sb.append(this.f57574e);
        sb.append(" (" + str2 + ")");
        this.f57574e.f57569b = 0;
    }

    /* renamed from: e */
    private int m7471e() throws IOException {
        int i = 0;
        int i2 = 0;
        while (m7481a() == 0) {
            i2++;
        }
        if (i2 > 0) {
            i = (int) (((1 << i2) - 1) + m7480a(i2));
        }
        return i;
    }

    /* renamed from: a */
    public final int m7476a(String str) throws IOException {
        int m7471e = m7471e();
        m7475a(str, String.valueOf(m7471e));
        return m7471e;
    }

    /* renamed from: a */
    public final long m7477a(int i, String str) throws IOException {
        long a = m7480a(i);
        m7475a(str, String.valueOf(a));
        return a;
    }

    /* renamed from: b */
    public final int m7474b(String str) throws IOException {
        int m7471e = m7471e();
        int i = m7471e & 1;
        int i2 = ((m7471e >> 1) + i) * ((i << 1) - 1);
        m7475a(str, String.valueOf(i2));
        return i2;
    }

    /* renamed from: c */
    public final boolean m7473c(String str) throws IOException {
        boolean z = m7481a() != 0;
        m7475a(str, z ? "1" : "0");
        return z;
    }

    /* renamed from: d */
    public final void m7472d() throws IOException {
        m7481a();
        m7478c();
    }
}
