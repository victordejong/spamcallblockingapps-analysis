package com.googlecode.mp4parser;

import com.p102b.p103a.AbstractC3512b;
import com.p102b.p103a.C3516f;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* renamed from: com.googlecode.mp4parser.b */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b.class */
public class C16246b extends C16292d implements AbstractC3476b {

    /* renamed from: a */
    private long f57328a;

    /* renamed from: n */
    AbstractC3487e f57329n;

    /* renamed from: o */
    protected String f57330o;

    /* renamed from: p */
    protected boolean f57331p;

    public C16246b(String str) {
        this.f57330o = str;
    }

    @Override // com.googlecode.mp4parser.C16292d
    /* renamed from: a */
    public final void mo7495a(AbstractC16294e abstractC16294e, long j, AbstractC3512b abstractC3512b) throws IOException {
        this.f57555r = abstractC16294e;
        this.f57557t = abstractC16294e.mo7485b();
        this.f57558u = this.f57557t - ((this.f57331p || 8 + j >= 4294967296L) ? 16 : 8);
        abstractC16294e.mo7488a(abstractC16294e.mo7485b() + j);
        this.f57559v = abstractC16294e.mo7485b();
        this.f57554q = abstractC3512b;
    }

    public void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(m7561j());
        mo7493a(writableByteChannel);
    }

    @Override // com.p102b.p103a.p104a.AbstractC3476b
    public AbstractC3487e getParent() {
        return this.f57329n;
    }

    public long getSize() {
        long k = m7490k();
        return k + ((this.f57331p || 8 + k >= 4294967296L) ? 16 : 8);
    }

    @Override // com.p102b.p103a.p104a.AbstractC3476b
    public String getType() {
        return this.f57330o;
    }

    /* renamed from: j */
    public final ByteBuffer m7561j() {
        ByteBuffer byteBuffer;
        if (this.f57331p || getSize() >= 4294967296L) {
            byte[] bArr = new byte[16];
            bArr[3] = (byte) 1;
            bArr[4] = this.f57330o.getBytes()[0];
            bArr[5] = this.f57330o.getBytes()[1];
            bArr[6] = this.f57330o.getBytes()[2];
            bArr[7] = this.f57330o.getBytes()[3];
            byteBuffer = ByteBuffer.wrap(bArr);
            byteBuffer.position(8);
            C3516f.m37839a(byteBuffer, getSize());
        } else {
            byteBuffer = ByteBuffer.wrap(new byte[]{0, 0, 0, 0, this.f57330o.getBytes()[0], this.f57330o.getBytes()[1], this.f57330o.getBytes()[2], this.f57330o.getBytes()[3]});
            C3516f.m37835b(byteBuffer, getSize());
        }
        byteBuffer.rewind();
        return byteBuffer;
    }

    public void parse(AbstractC16294e abstractC16294e, ByteBuffer byteBuffer, long j, AbstractC3512b abstractC3512b) throws IOException {
        this.f57328a = abstractC16294e.mo7485b() - byteBuffer.remaining();
        this.f57331p = byteBuffer.remaining() == 16;
        mo7495a(abstractC16294e, j, abstractC3512b);
    }

    @Override // com.p102b.p103a.p104a.AbstractC3476b
    public void setParent(AbstractC3487e abstractC3487e) {
        this.f57329n = abstractC3487e;
    }
}
