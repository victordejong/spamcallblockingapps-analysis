package com.p102b.p103a.p104a.p107c;

import com.googlecode.mp4parser.AbstractC16294e;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.AbstractC3512b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* renamed from: com.b.a.a.c.b */
/* loaded from: classes-dex2jar.jar:com/b/a/a/c/b.class */
public final class C3480b extends AbstractC3479a {

    /* renamed from: m */
    static final /* synthetic */ boolean f13205m = true;

    /* renamed from: b */
    public int f13206b;

    /* renamed from: c */
    public int f13207c;

    /* renamed from: d */
    public long f13208d;

    /* renamed from: e */
    public int f13209e;

    /* renamed from: f */
    public int f13210f;

    /* renamed from: g */
    public int f13211g;

    /* renamed from: h */
    public long f13212h;

    /* renamed from: i */
    public long f13213i;

    /* renamed from: j */
    public long f13214j;

    /* renamed from: k */
    public long f13215k;

    /* renamed from: l */
    public byte[] f13216l;

    /* renamed from: w */
    private int f13217w;

    /* renamed from: x */
    private long f13218x;

    public C3480b(String str) {
        super(str);
    }

    @Override // com.googlecode.mp4parser.C16246b, com.p102b.p103a.p104a.AbstractC3476b
    public final void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(m7561j());
        int i = this.f13209e;
        int i2 = 0;
        int i3 = i == 1 ? 16 : 0;
        if (i == 2) {
            i2 = 36;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i3 + 28 + i2);
        allocate.position(6);
        C3516f.m37836b(allocate, this.f13204a);
        C3516f.m37836b(allocate, this.f13209e);
        C3516f.m37836b(allocate, this.f13217w);
        C3516f.m37835b(allocate, this.f13218x);
        C3516f.m37836b(allocate, this.f13206b);
        C3516f.m37836b(allocate, this.f13207c);
        C3516f.m37836b(allocate, this.f13210f);
        C3516f.m37836b(allocate, this.f13211g);
        if (this.f57330o.equals("mlpa")) {
            C3516f.m37835b(allocate, this.f13208d);
        } else {
            C3516f.m37835b(allocate, this.f13208d << 16);
        }
        if (this.f13209e == 1) {
            C3516f.m37835b(allocate, this.f13212h);
            C3516f.m37835b(allocate, this.f13213i);
            C3516f.m37835b(allocate, this.f13214j);
            C3516f.m37835b(allocate, this.f13215k);
        }
        if (this.f13209e == 2) {
            C3516f.m37835b(allocate, this.f13212h);
            C3516f.m37835b(allocate, this.f13213i);
            C3516f.m37835b(allocate, this.f13214j);
            C3516f.m37835b(allocate, this.f13215k);
            allocate.put(this.f13216l);
        }
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        mo7493a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.C16246b, com.p102b.p103a.p104a.AbstractC3476b
    public final long getSize() {
        int i = this.f13209e;
        int i2 = 0;
        int i3 = i == 1 ? 16 : 0;
        if (i == 2) {
            i2 = 36;
        }
        long k = i3 + 28 + i2 + m7490k();
        int i4 = 16;
        if (!this.f57331p) {
            i4 = 8 + k >= 4294967296L ? 16 : 8;
        }
        return k + i4;
    }

    @Override // com.googlecode.mp4parser.C16246b, com.p102b.p103a.p104a.AbstractC3476b
    public final void parse(AbstractC16294e abstractC16294e, ByteBuffer byteBuffer, long j, AbstractC3512b abstractC3512b) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(28);
        abstractC16294e.mo7486a(allocate);
        allocate.position(6);
        this.f13204a = C3515e.m37848c(allocate);
        this.f13209e = C3515e.m37848c(allocate);
        this.f13217w = C3515e.m37848c(allocate);
        this.f13218x = C3515e.m37851a(allocate);
        this.f13206b = C3515e.m37848c(allocate);
        this.f13207c = C3515e.m37848c(allocate);
        this.f13210f = C3515e.m37848c(allocate);
        this.f13211g = C3515e.m37848c(allocate);
        this.f13208d = C3515e.m37851a(allocate);
        int i = 16;
        if (!this.f57330o.equals("mlpa")) {
            this.f13208d >>>= 16;
        }
        if (this.f13209e == 1) {
            ByteBuffer allocate2 = ByteBuffer.allocate(16);
            abstractC16294e.mo7486a(allocate2);
            allocate2.rewind();
            this.f13212h = C3515e.m37851a(allocate2);
            this.f13213i = C3515e.m37851a(allocate2);
            this.f13214j = C3515e.m37851a(allocate2);
            this.f13215k = C3515e.m37851a(allocate2);
        }
        int i2 = 36;
        if (this.f13209e == 2) {
            ByteBuffer allocate3 = ByteBuffer.allocate(36);
            abstractC16294e.mo7486a(allocate3);
            allocate3.rewind();
            this.f13212h = C3515e.m37851a(allocate3);
            this.f13213i = C3515e.m37851a(allocate3);
            this.f13214j = C3515e.m37851a(allocate3);
            this.f13215k = C3515e.m37851a(allocate3);
            byte[] bArr = new byte[20];
            this.f13216l = bArr;
            allocate3.get(bArr);
        }
        if (!"owma".equals(this.f57330o)) {
            int i3 = this.f13209e;
            if (i3 != 1) {
                i = 0;
            }
            long j2 = i;
            if (i3 != 2) {
                i2 = 0;
            }
            mo7495a(abstractC16294e, ((j - 28) - j2) - i2, abstractC3512b);
            return;
        }
        System.err.println("owma");
        int i4 = this.f13209e;
        if (i4 != 1) {
            i = 0;
        }
        long j3 = i;
        if (i4 != 2) {
            i2 = 0;
        }
        final long j4 = ((j - 28) - j3) - i2;
        final ByteBuffer allocate4 = ByteBuffer.allocate(C16282b.m7517a(j4));
        abstractC16294e.mo7486a(allocate4);
        m7496a(new AbstractC3476b() { // from class: com.b.a.a.c.b.1
            @Override // com.p102b.p103a.p104a.AbstractC3476b
            public final void getBox(WritableByteChannel writableByteChannel) throws IOException {
                allocate4.rewind();
                writableByteChannel.write(allocate4);
            }

            @Override // com.p102b.p103a.p104a.AbstractC3476b
            public final AbstractC3487e getParent() {
                return C3480b.this;
            }

            @Override // com.p102b.p103a.p104a.AbstractC3476b
            public final long getSize() {
                return j4;
            }

            @Override // com.p102b.p103a.p104a.AbstractC3476b
            public final String getType() {
                return "----";
            }

            @Override // com.p102b.p103a.p104a.AbstractC3476b
            public final void parse(AbstractC16294e abstractC16294e2, ByteBuffer byteBuffer2, long j5, AbstractC3512b abstractC3512b2) throws IOException {
                throw new RuntimeException("NotImplemented");
            }

            @Override // com.p102b.p103a.p104a.AbstractC3476b
            public final void setParent(AbstractC3487e abstractC3487e) {
                if (C3480b.f13205m || abstractC3487e == C3480b.this) {
                    return;
                }
                throw new AssertionError("you cannot diswown this special box");
            }
        });
    }

    @Override // com.googlecode.mp4parser.C16292d
    public final String toString() {
        return "AudioSampleEntry{bytesPerSample=" + this.f13215k + ", bytesPerFrame=" + this.f13214j + ", bytesPerPacket=" + this.f13213i + ", samplesPerPacket=" + this.f13212h + ", packetSize=" + this.f13211g + ", compressionId=" + this.f13210f + ", soundVersion=" + this.f13209e + ", sampleRate=" + this.f13208d + ", sampleSize=" + this.f13207c + ", channelCount=" + this.f13206b + ", boxes=" + mo7491b() + '}';
    }
}
