package com.p102b.p103a.p104a;

import com.googlecode.mp4parser.AbstractC16294e;
import com.googlecode.mp4parser.C16246b;
import com.p102b.p103a.AbstractC3512b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* renamed from: com.b.a.a.v */
/* loaded from: classes-dex2jar.jar:com/b/a/a/v.class */
public final class C3506v extends C16246b implements AbstractC3495l {

    /* renamed from: a */
    private int f13349a;

    /* renamed from: b */
    private int f13350b;

    public C3506v() {
        super("stsd");
    }

    @Override // com.googlecode.mp4parser.C16246b, com.p102b.p103a.p104a.AbstractC3476b
    public final void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(m7561j());
        ByteBuffer allocate = ByteBuffer.allocate(8);
        C3516f.m37832c(allocate, this.f13349a);
        C3516f.m37840a(allocate, this.f13350b);
        C3516f.m37835b(allocate, mo7491b().size());
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        mo7493a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.C16246b, com.p102b.p103a.p104a.AbstractC3476b
    public final long getSize() {
        long k = m7490k() + 8;
        return k + ((this.f57331p || 8 + k >= 4294967296L) ? 16 : 8);
    }

    @Override // com.googlecode.mp4parser.C16246b, com.p102b.p103a.p104a.AbstractC3476b
    public final void parse(AbstractC16294e abstractC16294e, ByteBuffer byteBuffer, long j, AbstractC3512b abstractC3512b) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        abstractC16294e.mo7486a(allocate);
        allocate.rewind();
        this.f13349a = C3515e.m37852a(allocate.get());
        this.f13350b = C3515e.m37849b(allocate);
        mo7495a(abstractC16294e, j - 8, abstractC3512b);
    }
}
