package com.p102b.p103a.p104a.p107c;

import com.googlecode.mp4parser.AbstractC16294e;
import com.googlecode.mp4parser.p425c.C16282b;
import com.p102b.p103a.AbstractC3512b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import com.p102b.p103a.C3518h;
import com.p102b.p103a.p104a.AbstractC3487e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: com.b.a.a.c.d */
/* loaded from: classes-dex2jar.jar:com/b/a/a/c/d.class */
public final class C3483d extends AbstractC3479a implements AbstractC3487e {

    /* renamed from: i */
    static final /* synthetic */ boolean f13222i = true;

    /* renamed from: b */
    public int f13223b;

    /* renamed from: c */
    public int f13224c;

    /* renamed from: d */
    public double f13225d;

    /* renamed from: e */
    public double f13226e;

    /* renamed from: f */
    public int f13227f;

    /* renamed from: g */
    public String f13228g;

    /* renamed from: h */
    public int f13229h;

    /* renamed from: j */
    private long[] f13230j;

    public C3483d() {
        super("avc1");
        this.f13225d = 72.0d;
        this.f13226e = 72.0d;
        this.f13227f = 1;
        this.f13228g = "";
        this.f13229h = 24;
        this.f13230j = new long[3];
    }

    public C3483d(String str) {
        super(str);
        this.f13225d = 72.0d;
        this.f13226e = 72.0d;
        this.f13227f = 1;
        this.f13228g = "";
        this.f13229h = 24;
        this.f13230j = new long[3];
    }

    @Override // com.googlecode.mp4parser.C16246b, com.p102b.p103a.p104a.AbstractC3476b
    public final void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(m7561j());
        ByteBuffer allocate = ByteBuffer.allocate(78);
        allocate.position(6);
        C3516f.m37836b(allocate, this.f13204a);
        C3516f.m37836b(allocate, 0);
        C3516f.m37836b(allocate, 0);
        C3516f.m37835b(allocate, this.f13230j[0]);
        C3516f.m37835b(allocate, this.f13230j[1]);
        C3516f.m37835b(allocate, this.f13230j[2]);
        C3516f.m37836b(allocate, this.f13223b);
        C3516f.m37836b(allocate, this.f13224c);
        C3516f.m37841a(allocate, this.f13225d);
        C3516f.m37841a(allocate, this.f13226e);
        C3516f.m37835b(allocate, 0L);
        C3516f.m37836b(allocate, this.f13227f);
        C3516f.m37832c(allocate, C3518h.m37827b(this.f13228g));
        allocate.put(C3518h.m37829a(this.f13228g));
        int m37827b = C3518h.m37827b(this.f13228g);
        while (m37827b < 31) {
            m37827b++;
            allocate.put((byte) 0);
        }
        C3516f.m37836b(allocate, this.f13229h);
        C3516f.m37836b(allocate, (int) Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        mo7493a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.C16246b, com.p102b.p103a.p104a.AbstractC3476b
    public final long getSize() {
        long k = m7490k() + 78;
        return k + ((this.f57331p || 8 + k >= 4294967296L) ? 16 : 8);
    }

    @Override // com.googlecode.mp4parser.C16246b, com.p102b.p103a.p104a.AbstractC3476b
    public final void parse(final AbstractC16294e abstractC16294e, ByteBuffer byteBuffer, long j, AbstractC3512b abstractC3512b) throws IOException {
        long mo7485b = abstractC16294e.mo7485b();
        ByteBuffer allocate = ByteBuffer.allocate(78);
        abstractC16294e.mo7486a(allocate);
        allocate.position(6);
        this.f13204a = C3515e.m37848c(allocate);
        long m37848c = C3515e.m37848c(allocate);
        boolean z = f13222i;
        if (z || 0 == m37848c) {
            long m37848c2 = C3515e.m37848c(allocate);
            if (!z && 0 != m37848c2) {
                throw new AssertionError("reserved byte not 0");
            }
            this.f13230j[0] = C3515e.m37851a(allocate);
            this.f13230j[1] = C3515e.m37851a(allocate);
            this.f13230j[2] = C3515e.m37851a(allocate);
            this.f13223b = C3515e.m37848c(allocate);
            this.f13224c = C3515e.m37848c(allocate);
            this.f13225d = C3515e.m37846e(allocate);
            this.f13226e = C3515e.m37846e(allocate);
            long m37851a = C3515e.m37851a(allocate);
            if (!z && 0 != m37851a) {
                throw new AssertionError("reserved byte not 0");
            }
            this.f13227f = C3515e.m37848c(allocate);
            int m37852a = C3515e.m37852a(allocate.get());
            int i = m37852a;
            if (m37852a > 31) {
                i = 31;
            }
            byte[] bArr = new byte[i];
            allocate.get(bArr);
            this.f13228g = C3518h.m37828a(bArr);
            if (i < 31) {
                allocate.get(new byte[31 - i]);
            }
            this.f13229h = C3515e.m37848c(allocate);
            long m37848c3 = C3515e.m37848c(allocate);
            if (!z && WebSocketProtocol.PAYLOAD_SHORT_MAX != m37848c3) {
                throw new AssertionError();
            }
            final long j2 = mo7485b + j;
            mo7495a(new AbstractC16294e() { // from class: com.b.a.a.c.d.1
                @Override // com.googlecode.mp4parser.AbstractC16294e
                /* renamed from: a */
                public final int mo7486a(ByteBuffer byteBuffer2) throws IOException {
                    if (j2 == abstractC16294e.mo7485b()) {
                        return -1;
                    }
                    if (byteBuffer2.remaining() <= j2 - abstractC16294e.mo7485b()) {
                        return abstractC16294e.mo7486a(byteBuffer2);
                    }
                    ByteBuffer allocate2 = ByteBuffer.allocate(C16282b.m7517a(j2 - abstractC16294e.mo7485b()));
                    abstractC16294e.mo7486a(allocate2);
                    byteBuffer2.put((ByteBuffer) allocate2.rewind());
                    return allocate2.capacity();
                }

                @Override // com.googlecode.mp4parser.AbstractC16294e
                /* renamed from: a */
                public final long mo7489a() throws IOException {
                    return j2;
                }

                @Override // com.googlecode.mp4parser.AbstractC16294e
                /* renamed from: a */
                public final ByteBuffer mo7487a(long j3, long j4) throws IOException {
                    return abstractC16294e.mo7487a(j3, j4);
                }

                @Override // com.googlecode.mp4parser.AbstractC16294e
                /* renamed from: a */
                public final void mo7488a(long j3) throws IOException {
                    abstractC16294e.mo7488a(j3);
                }

                @Override // com.googlecode.mp4parser.AbstractC16294e
                /* renamed from: b */
                public final long mo7485b() throws IOException {
                    return abstractC16294e.mo7485b();
                }

                @Override // com.googlecode.mp4parser.AbstractC16294e, java.io.Closeable, java.lang.AutoCloseable
                public final void close() throws IOException {
                    abstractC16294e.close();
                }
            }, j - 78, abstractC3512b);
            return;
        }
        throw new AssertionError("reserved byte not 0");
    }
}
