package com.googlecode.mp4parser.h264.p426a;

import com.googlecode.mp4parser.h264.C16298a;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.googlecode.mp4parser.h264.a.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/a/a.class */
public class C16299a {

    /* renamed from: d */
    protected static int f57570d;

    /* renamed from: a */
    public int f57571a;

    /* renamed from: b */
    public int f57572b;

    /* renamed from: c */
    public int f57573c;

    /* renamed from: e */
    protected C16298a f57574e = new C16298a(50);

    /* renamed from: f */
    private InputStream f57575f;

    public C16299a(InputStream inputStream) throws IOException {
        this.f57575f = inputStream;
        this.f57571a = inputStream.read();
        this.f57572b = inputStream.read();
    }

    /* renamed from: a */
    public final int m7481a() throws IOException {
        if (this.f57573c == 8) {
            m7479b();
            if (this.f57571a == -1) {
                return -1;
            }
        }
        int i = this.f57571a;
        int i2 = this.f57573c;
        int i3 = (i >> (7 - i2)) & 1;
        this.f57573c = i2 + 1;
        C16298a c16298a = this.f57574e;
        int i4 = i3 == 0 ? 48 : 49;
        if (c16298a.f57569b < c16298a.f57568a.length - 1) {
            c16298a.f57568a[c16298a.f57569b] = (char) i4;
            c16298a.f57569b++;
        }
        f57570d++;
        return i3;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    public final long m7480a(int i) throws IOException {
        if (i <= 64) {
            char c = 0;
            for (int i2 = 0; i2 < i; i2++) {
                c = (c << 1) | m7481a();
            }
            return c;
        }
        throw new IllegalArgumentException("Can not readByte more then 64 bit");
    }

    /* renamed from: b */
    public final void m7479b() throws IOException {
        this.f57571a = this.f57572b;
        this.f57572b = this.f57575f.read();
        this.f57573c = 0;
    }

    /* renamed from: c */
    public final long m7478c() throws IOException {
        return m7480a(8 - this.f57573c);
    }
}
