package com.googlecode.mp4parser.h264.a;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/h264/a/a.class */
public class a {

    /* renamed from: d  reason: collision with root package name */
    protected static int f33192d;

    /* renamed from: a  reason: collision with root package name */
    public int f33193a;

    /* renamed from: b  reason: collision with root package name */
    public int f33194b;

    /* renamed from: c  reason: collision with root package name */
    public int f33195c;
    protected com.googlecode.mp4parser.h264.a e = new com.googlecode.mp4parser.h264.a(50);
    private InputStream f;

    public a(InputStream inputStream) throws IOException {
        this.f = inputStream;
        this.f33193a = inputStream.read();
        this.f33194b = inputStream.read();
    }

    public final int a() throws IOException {
        if (this.f33195c == 8) {
            b();
            if (this.f33193a == -1) {
                return -1;
            }
        }
        int i = this.f33193a;
        int i2 = this.f33195c;
        int i3 = (i >> (7 - i2)) & 1;
        this.f33195c = i2 + 1;
        com.googlecode.mp4parser.h264.a aVar = this.e;
        int i4 = i3 == 0 ? 48 : 49;
        if (aVar.f33191b < aVar.f33190a.length - 1) {
            aVar.f33190a[aVar.f33191b] = (char) i4;
            aVar.f33191b++;
        }
        f33192d++;
        return i3;
    }

    public final long a(int i) throws IOException {
        if (i <= 64) {
            long j = 0;
            for (int i2 = 0; i2 < i; i2++) {
                j = (j << 1) | a();
            }
            return j;
        }
        throw new IllegalArgumentException("Can not readByte more then 64 bit");
    }

    public final void b() throws IOException {
        this.f33193a = this.f33194b;
        this.f33194b = this.f.read();
        this.f33195c = 0;
    }

    public final long c() throws IOException {
        return a(8 - this.f33195c);
    }
}
