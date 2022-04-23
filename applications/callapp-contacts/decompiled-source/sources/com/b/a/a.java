package com.b.a;

import com.b.a.a.b;
import com.googlecode.mp4parser.e;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;
/* loaded from: classes-dex2jar.jar:com/b/a/a.class */
public abstract class a implements b {

    /* renamed from: b  reason: collision with root package name */
    private static Logger f7034b = Logger.getLogger(a.class.getName());

    /* renamed from: a  reason: collision with root package name */
    ThreadLocal<ByteBuffer> f7035a = new ThreadLocal<ByteBuffer>() { // from class: com.b.a.a.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ ByteBuffer initialValue() {
            return ByteBuffer.allocate(32);
        }
    };

    @Override // com.b.a.b
    public final b a(e eVar, com.b.a.a.e eVar2) throws IOException {
        int a2;
        long j;
        byte[] bArr;
        long b2 = eVar.b();
        this.f7035a.get().rewind().limit(8);
        do {
            a2 = eVar.a(this.f7035a.get());
            if (a2 == 8) {
                this.f7035a.get().rewind();
                long a3 = e.a(this.f7035a.get());
                if (a3 >= 8 || a3 <= 1) {
                    String h = e.h(this.f7035a.get());
                    if (a3 == 1) {
                        this.f7035a.get().limit(16);
                        eVar.a(this.f7035a.get());
                        this.f7035a.get().position(8);
                        j = e.d(this.f7035a.get()) - 16;
                    } else {
                        j = a3 == 0 ? eVar.a() - eVar.b() : a3 - 8;
                    }
                    if ("uuid".equals(h)) {
                        this.f7035a.get().limit(this.f7035a.get().limit() + 16);
                        eVar.a(this.f7035a.get());
                        bArr = new byte[16];
                        for (int position = this.f7035a.get().position() - 16; position < this.f7035a.get().position(); position++) {
                            bArr[position - (this.f7035a.get().position() - 16)] = this.f7035a.get().get(position);
                        }
                        j -= 16;
                    } else {
                        bArr = null;
                    }
                    b a4 = a(h, bArr, eVar2 instanceof b ? ((b) eVar2).getType() : "");
                    a4.setParent(eVar2);
                    this.f7035a.get().rewind();
                    a4.parse(eVar, this.f7035a.get(), j, this);
                    return a4;
                }
                Logger logger = f7034b;
                logger.severe("Plausibility check failed: size < 8 (size = " + a3 + "). Stop parsing!");
                return null;
            }
        } while (a2 >= 0);
        eVar.a(b2);
        throw new EOFException();
    }

    public abstract b a(String str, byte[] bArr, String str2);
}
