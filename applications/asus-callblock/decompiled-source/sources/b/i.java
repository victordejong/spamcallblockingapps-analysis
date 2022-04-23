package b;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* loaded from: classes-dex2jar.jar:b/i.class */
public final class i implements q {

    /* renamed from: b  reason: collision with root package name */
    private final e f326b;
    private final Inflater c;
    private final j d;

    /* renamed from: a  reason: collision with root package name */
    private int f325a = 0;
    private final CRC32 e = new CRC32();

    public i(q qVar) {
        if (qVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.c = new Inflater(true);
        this.f326b = k.a(qVar);
        this.d = new j(this.f326b, this.c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r9v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(b.c r6, long r7, long r9) {
        /*
            r5 = this;
            r0 = r6
            b.n r0 = r0.f317a
            r6 = r0
        L_0x0005:
            r0 = r6
            r11 = r0
            r0 = r7
            r12 = r0
            r0 = r9
            r14 = r0
            r0 = r7
            r1 = r6
            int r1 = r1.c
            r2 = r6
            int r2 = r2.f340b
            int r1 = r1 - r2
            long r1 = (long) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0033
            r0 = r7
            r1 = r6
            int r1 = r1.c
            r2 = r6
            int r2 = r2.f340b
            int r1 = r1 - r2
            long r1 = (long) r1
            long r0 = r0 - r1
            r7 = r0
            r0 = r6
            b.n r0 = r0.f
            r6 = r0
            goto L_0x0005
        L_0x0033:
            r0 = r14
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x007c
            r0 = r11
            int r0 = r0.f340b
            long r0 = (long) r0
            r1 = r12
            long r0 = r0 + r1
            int r0 = (int) r0
            r16 = r0
            r0 = r11
            int r0 = r0.c
            r1 = r16
            int r0 = r0 - r1
            long r0 = (long) r0
            r1 = r14
            long r0 = java.lang.Math.min(r0, r1)
            int r0 = (int) r0
            r17 = r0
            r0 = r5
            java.util.zip.CRC32 r0 = r0.e
            r1 = r11
            byte[] r1 = r1.f339a
            r2 = r16
            r3 = r17
            r0.update(r1, r2, r3)
            r0 = r14
            r1 = r17
            long r1 = (long) r1
            long r0 = r0 - r1
            r14 = r0
            r0 = r11
            b.n r0 = r0.f
            r11 = r0
            r0 = 0
            r12 = r0
            goto L_0x0033
        L_0x007c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.a(b.c, long, long):void");
    }

    private static void a(String str, int i, int i2) {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    @Override // b.q
    public final long a(c cVar, long j) {
        long j2;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            j2 = 0;
        } else {
            if (this.f325a == 0) {
                this.f326b.a(10L);
                byte c = this.f326b.b().c(3L);
                boolean z = ((c >> 1) & 1) == 1;
                if (z) {
                    a(this.f326b.b(), 0L, 10L);
                }
                a("ID1ID2", 8075, this.f326b.f());
                this.f326b.g(8L);
                if (((c >> 2) & 1) == 1) {
                    this.f326b.a(2L);
                    if (z) {
                        a(this.f326b.b(), 0L, 2L);
                    }
                    short h = this.f326b.b().h();
                    this.f326b.a(h);
                    if (z) {
                        a(this.f326b.b(), 0L, h);
                    }
                    this.f326b.g(h);
                }
                if (((c >> 3) & 1) == 1) {
                    long a2 = this.f326b.a((byte) 0);
                    if (a2 == -1) {
                        throw new EOFException();
                    }
                    if (z) {
                        a(this.f326b.b(), 0L, 1 + a2);
                    }
                    this.f326b.g(1 + a2);
                }
                if (((c >> 4) & 1) == 1) {
                    long a3 = this.f326b.a((byte) 0);
                    if (a3 == -1) {
                        throw new EOFException();
                    }
                    if (z) {
                        a(this.f326b.b(), 0L, 1 + a3);
                    }
                    this.f326b.g(1 + a3);
                }
                if (z) {
                    a("FHCRC", this.f326b.h(), (short) this.e.getValue());
                    this.e.reset();
                }
                this.f325a = 1;
            }
            if (this.f325a == 1) {
                long j3 = cVar.f318b;
                j2 = this.d.a(cVar, j);
                if (j2 != -1) {
                    a(cVar, j3, j2);
                } else {
                    this.f325a = 2;
                }
            }
            if (this.f325a == 2) {
                a("CRC", this.f326b.i(), (int) this.e.getValue());
                a("ISIZE", this.f326b.i(), this.c.getTotalOut());
                this.f325a = 3;
                if (!this.f326b.d()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            j2 = -1;
        }
        return j2;
    }

    @Override // b.q
    public final r a() {
        return this.f326b.a();
    }

    @Override // b.q, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.d.close();
    }
}
