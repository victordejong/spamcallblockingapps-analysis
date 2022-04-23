package com.b.a.a;

import com.b.a.f;
import com.googlecode.mp4parser.b;
import com.googlecode.mp4parser.e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes-dex2jar.jar:com/b/a/a/h.class */
public final class h extends b implements l {

    /* renamed from: a  reason: collision with root package name */
    private int f7115a;

    /* renamed from: b  reason: collision with root package name */
    private int f7116b;

    public h() {
        super("dref");
    }

    @Override // com.googlecode.mp4parser.b, com.b.a.a.b
    public final void getBox(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(j());
        ByteBuffer allocate = ByteBuffer.allocate(8);
        f.c(allocate, this.f7115a);
        f.a(allocate, this.f7116b);
        f.b(allocate, b().size());
        writableByteChannel.write((ByteBuffer) allocate.rewind());
        a(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.b, com.b.a.a.b
    public final long getSize() {
        long k = k() + 8;
        return k + ((this.p || 8 + k >= 4294967296L) ? 16 : 8);
    }

    @Override // com.googlecode.mp4parser.b, com.b.a.a.b
    public final void parse(e eVar, ByteBuffer byteBuffer, long j, com.b.a.b bVar) throws IOException {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        eVar.a(allocate);
        allocate.rewind();
        this.f7115a = com.b.a.e.a(allocate.get());
        this.f7116b = com.b.a.e.b(allocate);
        a(eVar, j - 8, bVar);
    }
}
