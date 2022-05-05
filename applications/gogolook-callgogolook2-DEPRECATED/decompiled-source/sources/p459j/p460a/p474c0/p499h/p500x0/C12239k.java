package p459j.p460a.p474c0.p499h.p500x0;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* renamed from: j.a.c0.h.x0.k */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/x0/k.class */
public class C12239k extends FilterOutputStream {

    /* renamed from: a */
    public final ByteBuffer f27587a = ByteBuffer.allocate(4);

    public C12239k(OutputStream outputStream) {
        super(outputStream);
    }

    /* renamed from: a */
    public C12239k m6571a(C12240l lVar) throws IOException {
        writeInt((int) lVar.m6567b());
        writeInt((int) lVar.m6568a());
        return this;
    }

    /* renamed from: a */
    public C12239k m6570a(ByteOrder byteOrder) {
        this.f27587a.order(byteOrder);
        return this;
    }

    /* renamed from: a */
    public C12239k m6569a(short s) throws IOException {
        this.f27587a.rewind();
        this.f27587a.putShort(s);
        ((FilterOutputStream) this).out.write(this.f27587a.array(), 0, 2);
        return this;
    }

    public C12239k writeInt(int i) throws IOException {
        this.f27587a.rewind();
        this.f27587a.putInt(i);
        ((FilterOutputStream) this).out.write(this.f27587a.array());
        return this;
    }
}
