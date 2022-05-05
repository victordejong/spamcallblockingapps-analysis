package p060e.p061a.p064c;

import java.io.IOException;
/* renamed from: e.a.c.a */
/* loaded from: classes-dex2jar.jar:e/a/c/a.class */
public class C4230a {

    /* renamed from: a */
    public short[] f10279a;

    /* renamed from: b */
    public int f10280b;

    public C4230a(int i) {
        this.f10280b = i;
        this.f10279a = new short[1 << i];
    }

    /* renamed from: a */
    public static int m29252a(short[] sArr, int i, C4231b bVar, int i2) throws IOException {
        int i3 = 1;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int a = bVar.m29246a(sArr, i + i3);
            i3 = (i3 << 1) + a;
            i4 |= a << i5;
        }
        return i4;
    }

    /* renamed from: a */
    public int m29253a(C4231b bVar) throws IOException {
        int i = 1;
        for (int i2 = this.f10280b; i2 != 0; i2--) {
            i = bVar.m29246a(this.f10279a, i) + (i << 1);
        }
        return i - (1 << this.f10280b);
    }

    /* renamed from: a */
    public void m29254a() {
        C4231b.m29247a(this.f10279a);
    }

    /* renamed from: b */
    public int m29251b(C4231b bVar) throws IOException {
        int i = 1;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f10280b; i3++) {
            int a = bVar.m29246a(this.f10279a, i);
            i = (i << 1) + a;
            i2 |= a << i3;
        }
        return i2;
    }
}
