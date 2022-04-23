package com.b.a.a.c;

import com.b.a.a.e;
import com.b.a.b;
import com.b.a.f;
import com.b.a.h;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes-dex2jar.jar:com/b/a/a/c/d.class */
public final class d extends a implements e {
    static final /* synthetic */ boolean i = true;

    /* renamed from: b  reason: collision with root package name */
    public int f7102b;

    /* renamed from: c  reason: collision with root package name */
    public int f7103c;

    /* renamed from: d  reason: collision with root package name */
    public double f7104d;
    public double e;
    public int f;
    public String g;
    public int h;
    private long[] j;

    public d() {
        super("avc1");
        this.f7104d = 72.0d;
        this.e = 72.0d;
        this.f = 1;
        this.g = "";
        this.h = 24;
        this.j = new long[3];
    }

    public d(String str) {
        super(str);
        this.f7104d = 72.0d;
        this.e = 72.0d;
        this.f = 1;
        this.g = "";
        this.h = 24;
        this.j = new long[3];
    }

    @Override // com.googlecode.mp4parser.b, com.b.a.a.b
    public final void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(j());
        ByteBuffer allocate = ByteBuffer.allocate(78);
        allocate.position(6);
        f.b(allocate, this.f7095a);
        f.b(allocate, 0);
        f.b(allocate, 0);
        f.b(allocate, this.j[0]);
        f.b(allocate, this.j[1]);
        f.b(allocate, this.j[2]);
        f.b(allocate, this.f7102b);
        f.b(allocate, this.f7103c);
        f.a(allocate, this.f7104d);
        f.a(allocate, this.e);
        f.b(allocate, 0L);
        f.b(allocate, this.f);
        f.c(allocate, h.b(this.g));
        allocate.put(h.a(this.g));
        int b2 = h.b(this.g);
        while (b2 < 31) {
            b2++;
            allocate.put((byte) 0);
        }
        f.b(allocate, this.h);
        f.b(allocate, (int) Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.b.a.a.b
    public final long getSize() {
        long k = k() + 78;
        return k + ((this.p || 8 + k >= 4294967296L) ? 16 : 8);
    }

    @Override // com.googlecode.mp4parser.b, com.b.a.a.b
    public final void parse(final com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j, b bVar) throws IOException {
        long b2 = eVar.b();
        ByteBuffer allocate = ByteBuffer.allocate(78);
        eVar.a(allocate);
        allocate.position(6);
        this.f7095a = com.b.a.e.c(allocate);
        long c2 = com.b.a.e.c(allocate);
        boolean z = i;
        if (z || 0 == c2) {
            long c3 = com.b.a.e.c(allocate);
            if (z || 0 == c3) {
                this.j[0] = com.b.a.e.a(allocate);
                this.j[1] = com.b.a.e.a(allocate);
                this.j[2] = com.b.a.e.a(allocate);
                this.f7102b = com.b.a.e.c(allocate);
                this.f7103c = com.b.a.e.c(allocate);
                this.f7104d = com.b.a.e.e(allocate);
                this.e = com.b.a.e.e(allocate);
                long a2 = com.b.a.e.a(allocate);
                if (z || 0 == a2) {
                    this.f = com.b.a.e.c(allocate);
                    int a3 = com.b.a.e.a(allocate.get());
                    int i2 = a3;
                    if (a3 > 31) {
                        i2 = 31;
                    }
                    byte[] bArr = new byte[i2];
                    allocate.get(bArr);
                    this.g = h.a(bArr);
                    if (i2 < 31) {
                        allocate.get(new byte[31 - i2]);
                    }
                    this.h = com.b.a.e.c(allocate);
                    long c4 = com.b.a.e.c(allocate);
                    if (z || WebSocketProtocol.PAYLOAD_SHORT_MAX == c4) {
                        final long j2 = b2 + j;
                        a(new com.googlecode.mp4parser.e() { // from class: com.b.a.a.c.d.1
                            @Override // com.googlecode.mp4parser.e
                            public final int a(ByteBuffer byteBuffer2) throws IOException {
                                if (j2 == eVar.b()) {
                                    return -1;
                                }
                                if (byteBuffer2.remaining() <= j2 - eVar.b()) {
                                    return eVar.a(byteBuffer2);
                                }
                                ByteBuffer allocate2 = ByteBuffer.allocate(com.googlecode.mp4parser.c.b.a(j2 - eVar.b()));
                                eVar.a(allocate2);
                                byteBuffer2.put((ByteBuffer) allocate2.rewind());
                                return allocate2.capacity();
                            }

                            @Override // com.googlecode.mp4parser.e
                            public final long a() throws IOException {
                                return j2;
                            }

                            @Override // com.googlecode.mp4parser.e
                            public final ByteBuffer a(long j3, long j4) throws IOException {
                                return eVar.a(j3, j4);
                            }

                            @Override // com.googlecode.mp4parser.e
                            public final void a(long j3) throws IOException {
                                eVar.a(j3);
                            }

                            @Override // com.googlecode.mp4parser.e
                            public final long b() throws IOException {
                                return eVar.b();
                            }

                            @Override // com.googlecode.mp4parser.e, java.io.Closeable, java.lang.AutoCloseable
                            public final void close() throws IOException {
                                eVar.close();
                            }
                        }, j - 78, bVar);
                        return;
                    }
                    throw new AssertionError();
                }
                throw new AssertionError("reserved byte not 0");
            }
            throw new AssertionError("reserved byte not 0");
        }
        throw new AssertionError("reserved byte not 0");
    }
}
