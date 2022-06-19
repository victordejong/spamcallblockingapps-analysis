package androidx.media2.exoplayer.external.extractor.p065b;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.AbstractC1600h;
import androidx.media2.exoplayer.external.util.C1993a;
import java.io.IOException;
import java.util.ArrayDeque;
/* renamed from: androidx.media2.exoplayer.external.extractor.b.a */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/a.class */
final class C1490a implements AbstractC1494c {

    /* renamed from: a */
    private final byte[] f5650a = new byte[8];

    /* renamed from: b */
    private final ArrayDeque<C1492a> f5651b = new ArrayDeque<>();

    /* renamed from: c */
    private final C1502g f5652c = new C1502g();

    /* renamed from: d */
    private AbstractC1493b f5653d;

    /* renamed from: e */
    private int f5654e;

    /* renamed from: f */
    private int f5655f;

    /* renamed from: g */
    private long f5656g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.extractor.b.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/a$a.class */
    public static final class C1492a {

        /* renamed from: a */
        final int f5657a;

        /* renamed from: b */
        final long f5658b;

        private C1492a(int i, long j) {
            this.f5657a = i;
            this.f5658b = j;
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* renamed from: a */
    private long m42822a(AbstractC1600h abstractC1600h, int i) throws IOException, InterruptedException {
        abstractC1600h.mo42605b(this.f5650a, 0, i);
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            c = (c << '\b') | (this.f5650a[i2] & 255);
        }
        return c;
    }

    /* renamed from: b */
    private static String m42821b(AbstractC1600h abstractC1600h, int i) throws IOException, InterruptedException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        abstractC1600h.mo42605b(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1494c
    /* renamed from: a */
    public final void mo42820a() {
        this.f5654e = 0;
        this.f5651b.clear();
        this.f5652c.m42790a();
    }

    @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1494c
    /* renamed from: a */
    public final void mo42819a(AbstractC1493b abstractC1493b) {
        this.f5653d = abstractC1493b;
    }

    /* JADX WARN: Type inference failed for: r0v109, types: [long] */
    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [double] */
    /* JADX WARN: Type inference failed for: r0v92, types: [double] */
    @Override // androidx.media2.exoplayer.external.extractor.p065b.AbstractC1494c
    /* renamed from: a */
    public final boolean mo42818a(AbstractC1600h abstractC1600h) throws IOException, InterruptedException {
        long m42822a;
        int m42789a;
        int m42787a;
        C1993a.m41690a(this.f5653d);
        while (true) {
            if (!this.f5651b.isEmpty() && abstractC1600h.mo42603c() >= this.f5651b.peek().f5658b) {
                this.f5653d.mo42796c(this.f5651b.pop().f5657a);
                return true;
            }
            if (this.f5654e == 0) {
                ?? m42788a = this.f5652c.m42788a(abstractC1600h, true, false, 4);
                char c = m42788a;
                if (m42788a == -2) {
                    abstractC1600h.mo42612a();
                    while (true) {
                        abstractC1600h.mo42601c(this.f5650a, 0, 4);
                        m42789a = C1502g.m42789a(this.f5650a[0]);
                        if (m42789a != -1 && m42789a <= 4) {
                            m42787a = (int) C1502g.m42787a(this.f5650a, m42789a, false);
                            if (this.f5653d.mo42797b(m42787a)) {
                                break;
                            }
                        }
                        abstractC1600h.mo42606b(1);
                    }
                    abstractC1600h.mo42606b(m42789a);
                    c = m42787a;
                }
                if (c == -1) {
                    return false;
                }
                this.f5655f = c;
                this.f5654e = 1;
            }
            if (this.f5654e == 1) {
                this.f5656g = this.f5652c.m42788a(abstractC1600h, false, true, 8);
                this.f5654e = 2;
            }
            int mo42803a = this.f5653d.mo42803a(this.f5655f);
            if (mo42803a != 0) {
                if (mo42803a == 1) {
                    long mo42603c = abstractC1600h.mo42603c();
                    this.f5651b.push(new C1492a(this.f5655f, this.f5656g + mo42603c));
                    this.f5653d.mo42799a(this.f5655f, mo42603c, this.f5656g);
                    this.f5654e = 0;
                    return true;
                } else if (mo42803a == 2) {
                    long j = this.f5656g;
                    if (j <= 8) {
                        this.f5653d.mo42800a(this.f5655f, m42822a(abstractC1600h, (int) j));
                        this.f5654e = 0;
                        return true;
                    }
                    long j2 = this.f5656g;
                    StringBuilder sb = new StringBuilder(42);
                    sb.append("Invalid integer size: ");
                    sb.append(j2);
                    throw new ParserException(sb.toString());
                } else if (mo42803a == 3) {
                    long j3 = this.f5656g;
                    if (j3 <= 2147483647L) {
                        this.f5653d.mo42798a(this.f5655f, m42821b(abstractC1600h, (int) j3));
                        this.f5654e = 0;
                        return true;
                    }
                    long j4 = this.f5656g;
                    StringBuilder sb2 = new StringBuilder(41);
                    sb2.append("String element size: ");
                    sb2.append(j4);
                    throw new ParserException(sb2.toString());
                } else if (mo42803a == 4) {
                    this.f5653d.mo42801a(this.f5655f, (int) this.f5656g, abstractC1600h);
                    this.f5654e = 0;
                    return true;
                } else if (mo42803a != 5) {
                    StringBuilder sb3 = new StringBuilder(32);
                    sb3.append("Invalid element type ");
                    sb3.append(mo42803a);
                    throw new ParserException(sb3.toString());
                } else {
                    long j5 = this.f5656g;
                    if (j5 != 4 && j5 != 8) {
                        long j6 = this.f5656g;
                        StringBuilder sb4 = new StringBuilder(40);
                        sb4.append("Invalid float size: ");
                        sb4.append(j6);
                        throw new ParserException(sb4.toString());
                    }
                    int i = (int) j5;
                    this.f5653d.mo42802a(this.f5655f, (double) (i == 4 ? Float.intBitsToFloat((int) m42822a) : Double.longBitsToDouble(m42822a(abstractC1600h, i))));
                    this.f5654e = 0;
                    return true;
                }
            }
            abstractC1600h.mo42606b((int) this.f5656g);
            this.f5654e = 0;
        }
    }
}
