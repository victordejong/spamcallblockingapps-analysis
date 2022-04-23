package com.b.a.a.c;

import com.b.a.f;
import com.googlecode.mp4parser.e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes-dex2jar.jar:com/b/a/a/c/b.class */
public final class b extends a {
    static final /* synthetic */ boolean m = true;

    /* renamed from: b  reason: collision with root package name */
    public int f7096b;

    /* renamed from: c  reason: collision with root package name */
    public int f7097c;

    /* renamed from: d  reason: collision with root package name */
    public long f7098d;
    public int e;
    public int f;
    public int g;
    public long h;
    public long i;
    public long j;
    public long k;
    public byte[] l;
    private int w;
    private long x;

    public b(String str) {
        super(str);
    }

    @Override // com.googlecode.mp4parser.b, com.b.a.a.b
    public final void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(j());
        int i = this.e;
        int i2 = 0;
        int i3 = i == 1 ? 16 : 0;
        if (i == 2) {
            i2 = 36;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i3 + 28 + i2);
        allocate.position(6);
        f.b(allocate, this.f7095a);
        f.b(allocate, this.e);
        f.b(allocate, this.w);
        f.b(allocate, this.x);
        f.b(allocate, this.f7096b);
        f.b(allocate, this.f7097c);
        f.b(allocate, this.f);
        f.b(allocate, this.g);
        if (this.o.equals("mlpa")) {
            f.b(allocate, this.f7098d);
        } else {
            f.b(allocate, this.f7098d << 16);
        }
        if (this.e == 1) {
            f.b(allocate, this.h);
            f.b(allocate, this.i);
            f.b(allocate, this.j);
            f.b(allocate, this.k);
        }
        if (this.e == 2) {
            f.b(allocate, this.h);
            f.b(allocate, this.i);
            f.b(allocate, this.j);
            f.b(allocate, this.k);
            allocate.put(this.l);
        }
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.b.a.a.b
    public final long getSize() {
        int i = this.e;
        int i2 = 0;
        int i3 = i == 1 ? 16 : 0;
        if (i == 2) {
            i2 = 36;
        }
        long k = i3 + 28 + i2 + k();
        int i4 = 16;
        if (!this.p) {
            i4 = 8 + k >= 4294967296L ? 16 : 8;
        }
        return k + i4;
    }

    @Override // com.googlecode.mp4parser.b, com.b.a.a.b
    public final void parse(e eVar, ByteBuffer byteBuffer, long j, com.b.a.b bVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(28);
        eVar.a(allocate);
        allocate.position(6);
        this.f7095a = com.b.a.e.c(allocate);
        this.e = com.b.a.e.c(allocate);
        this.w = com.b.a.e.c(allocate);
        this.x = com.b.a.e.a(allocate);
        this.f7096b = com.b.a.e.c(allocate);
        this.f7097c = com.b.a.e.c(allocate);
        this.f = com.b.a.e.c(allocate);
        this.g = com.b.a.e.c(allocate);
        this.f7098d = com.b.a.e.a(allocate);
        int i = 16;
        if (!this.o.equals("mlpa")) {
            this.f7098d >>>= 16;
        }
        if (this.e == 1) {
            ByteBuffer allocate2 = ByteBuffer.allocate(16);
            eVar.a(allocate2);
            allocate2.rewind();
            this.h = com.b.a.e.a(allocate2);
            this.i = com.b.a.e.a(allocate2);
            this.j = com.b.a.e.a(allocate2);
            this.k = com.b.a.e.a(allocate2);
        }
        int i2 = 36;
        if (this.e == 2) {
            ByteBuffer allocate3 = ByteBuffer.allocate(36);
            eVar.a(allocate3);
            allocate3.rewind();
            this.h = com.b.a.e.a(allocate3);
            this.i = com.b.a.e.a(allocate3);
            this.j = com.b.a.e.a(allocate3);
            this.k = com.b.a.e.a(allocate3);
            byte[] bArr = new byte[20];
            this.l = bArr;
            allocate3.get(bArr);
        }
        if ("owma".equals(this.o)) {
            System.err.println("owma");
            int i3 = this.e;
            if (i3 != 1) {
                i = 0;
            }
            long j2 = i;
            if (i3 != 2) {
                i2 = 0;
            }
            final long j3 = ((j - 28) - j2) - i2;
            final ByteBuffer allocate4 = ByteBuffer.allocate(com.googlecode.mp4parser.c.b.a(j3));
            eVar.a(allocate4);
            a(new com.b.a.a.b() { // from class: com.b.a.a.c.b.1
                @Override // com.b.a.a.b
                public final void getBox(WritableByteChannel writableByteChannel) throws IOException {
                    allocate4.rewind();
                    writableByteChannel.write(allocate4);
                }

                @Override // com.b.a.a.b
                public final com.b.a.a.e getParent() {
                    return b.this;
                }

                @Override // com.b.a.a.b
                public final long getSize() {
                    return j3;
                }

                @Override // com.b.a.a.b
                public final String getType() {
                    return "----";
                }

                @Override // com.b.a.a.b
                public final void parse(e eVar2, ByteBuffer byteBuffer2, long j4, com.b.a.b bVar2) throws IOException {
                    throw new RuntimeException("NotImplemented");
                }

                @Override // com.b.a.a.b
                public final void setParent(com.b.a.a.e eVar2) {
                    if (!b.m && eVar2 != b.this) {
                        throw new AssertionError("you cannot diswown this special box");
                    }
                }
            });
            return;
        }
        int i4 = this.e;
        if (i4 != 1) {
            i = 0;
        }
        long j4 = i;
        if (i4 != 2) {
            i2 = 0;
        }
        a(eVar, ((j - 28) - j4) - i2, bVar);
    }

    @Override // com.googlecode.mp4parser.d
    public final String toString() {
        return "AudioSampleEntry{bytesPerSample=" + this.k + ", bytesPerFrame=" + this.j + ", bytesPerPacket=" + this.i + ", samplesPerPacket=" + this.h + ", packetSize=" + this.g + ", compressionId=" + this.f + ", soundVersion=" + this.e + ", sampleRate=" + this.f7098d + ", sampleSize=" + this.f7097c + ", channelCount=" + this.f7096b + ", boxes=" + b() + '}';
    }
}
