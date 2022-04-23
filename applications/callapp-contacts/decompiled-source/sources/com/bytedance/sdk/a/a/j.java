package com.bytedance.sdk.a.a;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/j.class */
public final class j implements s {

    /* renamed from: b  reason: collision with root package name */
    private final e f7795b;

    /* renamed from: c  reason: collision with root package name */
    private final Inflater f7796c;

    /* renamed from: d  reason: collision with root package name */
    private final k f7797d;

    /* renamed from: a  reason: collision with root package name */
    private int f7794a = 0;
    private final CRC32 e = new CRC32();

    public j(s sVar) {
        if (sVar != null) {
            Inflater inflater = new Inflater(true);
            this.f7796c = inflater;
            e a2 = l.a(sVar);
            this.f7795b = a2;
            this.f7797d = new k(a2, inflater);
            return;
        }
        throw new IllegalArgumentException("source == null");
    }

    private void a(c cVar, long j, long j2) {
        o oVar = cVar.f7784a;
        while (j >= oVar.f7817c - oVar.f7816b) {
            j -= oVar.f7817c - oVar.f7816b;
            oVar = oVar.f;
        }
        while (j2 > 0) {
            int i = (int) (oVar.f7816b + j);
            int min = (int) Math.min(oVar.f7817c - i, j2);
            this.e.update(oVar.f7815a, i, min);
            j2 -= min;
            oVar = oVar.f;
            j = 0;
        }
    }

    private void a(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private void b() throws IOException {
        this.f7795b.a(10L);
        byte b2 = this.f7795b.c().b(3L);
        boolean z = ((b2 >> 1) & 1) == 1;
        if (z) {
            a(this.f7795b.c(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f7795b.i());
        this.f7795b.h(8L);
        if (((b2 >> 2) & 1) == 1) {
            this.f7795b.a(2L);
            if (z) {
                a(this.f7795b.c(), 0L, 2L);
            }
            long k = this.f7795b.c().k();
            this.f7795b.a(k);
            if (z) {
                a(this.f7795b.c(), 0L, k);
            }
            this.f7795b.h(k);
        }
        if (((b2 >> 3) & 1) == 1) {
            long a2 = this.f7795b.a((byte) 0);
            if (a2 != -1) {
                if (z) {
                    a(this.f7795b.c(), 0L, a2 + 1);
                }
                this.f7795b.h(a2 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((b2 >> 4) & 1) == 1) {
            long a3 = this.f7795b.a((byte) 0);
            if (a3 != -1) {
                if (z) {
                    a(this.f7795b.c(), 0L, a3 + 1);
                }
                this.f7795b.h(a3 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z) {
            a("FHCRC", this.f7795b.k(), (short) this.e.getValue());
            this.e.reset();
        }
    }

    private void c() throws IOException {
        a("CRC", this.f7795b.l(), (int) this.e.getValue());
        a("ISIZE", this.f7795b.l(), (int) this.f7796c.getBytesWritten());
    }

    @Override // com.bytedance.sdk.a.a.s
    public final long a(c cVar, long j) throws IOException {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        } else if (i == 0) {
            return 0L;
        } else {
            if (this.f7794a == 0) {
                b();
                this.f7794a = 1;
            }
            if (this.f7794a == 1) {
                long j2 = cVar.f7785b;
                long a2 = this.f7797d.a(cVar, j);
                if (a2 != -1) {
                    a(cVar, j2, a2);
                    return a2;
                }
                this.f7794a = 2;
            }
            if (this.f7794a != 2) {
                return -1L;
            }
            c();
            this.f7794a = 3;
            if (this.f7795b.e()) {
                return -1L;
            }
            throw new IOException("gzip finished without exhausting source");
        }
    }

    @Override // com.bytedance.sdk.a.a.s
    public final t a() {
        return this.f7795b.a();
    }

    @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f7797d.close();
    }
}
