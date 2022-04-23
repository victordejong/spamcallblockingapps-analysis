package com.googlecode.mp4parser;

import com.b.a.a.e;
import com.b.a.f;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b.class */
public class b extends d implements com.b.a.a.b {

    /* renamed from: a  reason: collision with root package name */
    private long f33084a;
    e n;
    protected String o;
    protected boolean p;

    public b(String str) {
        this.o = str;
    }

    @Override // com.googlecode.mp4parser.d
    public final void a(e eVar, long j, com.b.a.b bVar) throws IOException {
        this.r = eVar;
        this.t = eVar.b();
        this.u = this.t - ((this.p || 8 + j >= 4294967296L) ? 16 : 8);
        eVar.a(eVar.b() + j);
        this.v = eVar.b();
        this.q = bVar;
    }

    public void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(j());
        a(writableByteChannel);
    }

    @Override // com.b.a.a.b
    public e getParent() {
        return this.n;
    }

    public long getSize() {
        long k = k();
        return k + ((this.p || 8 + k >= 4294967296L) ? 16 : 8);
    }

    @Override // com.b.a.a.b
    public String getType() {
        return this.o;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final ByteBuffer j() {
        ByteBuffer byteBuffer;
        if (this.p || getSize() >= 4294967296L) {
            byte[] bArr = new byte[16];
            bArr[3] = (byte) 1;
            bArr[4] = this.o.getBytes()[0];
            bArr[5] = this.o.getBytes()[1];
            bArr[6] = this.o.getBytes()[2];
            bArr[7] = this.o.getBytes()[3];
            byteBuffer = ByteBuffer.wrap(bArr);
            byteBuffer.position(8);
            f.a(byteBuffer, getSize());
        } else {
            byteBuffer = ByteBuffer.wrap(new byte[]{0, 0, 0, 0, this.o.getBytes()[0], this.o.getBytes()[1], this.o.getBytes()[2], this.o.getBytes()[3]});
            f.b(byteBuffer, getSize());
        }
        byteBuffer.rewind();
        return byteBuffer;
    }

    public void parse(e eVar, ByteBuffer byteBuffer, long j, com.b.a.b bVar) throws IOException {
        this.f33084a = eVar.b() - byteBuffer.remaining();
        this.p = byteBuffer.remaining() == 16;
        a(eVar, j, bVar);
    }

    @Override // com.b.a.a.b
    public void setParent(e eVar) {
        this.n = eVar;
    }
}
