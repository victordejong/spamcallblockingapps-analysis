package com.p102b.p103a;

import com.googlecode.mp4parser.AbstractC16294e;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;
/* renamed from: com.b.a.a */
/* loaded from: classes-dex2jar.jar:com/b/a/a.class */
public abstract class AbstractC3453a implements AbstractC3512b {

    /* renamed from: b */
    private static Logger f13040b = Logger.getLogger(AbstractC3453a.class.getName());

    /* renamed from: a */
    ThreadLocal<ByteBuffer> f13041a = new ThreadLocal<ByteBuffer>() { // from class: com.b.a.a.1
        @Override // java.lang.ThreadLocal
        protected final /* synthetic */ ByteBuffer initialValue() {
            return ByteBuffer.allocate(32);
        }
    };

    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    @Override // com.p102b.p103a.AbstractC3512b
    /* renamed from: a */
    public final AbstractC3476b mo37857a(AbstractC16294e abstractC16294e, AbstractC3487e abstractC3487e) throws IOException {
        int mo7486a;
        char c;
        byte[] bArr;
        long mo7485b = abstractC16294e.mo7485b();
        this.f13041a.get().rewind().limit(8);
        do {
            mo7486a = abstractC16294e.mo7486a(this.f13041a.get());
            if (mo7486a == 8) {
                this.f13041a.get().rewind();
                long m37851a = C3515e.m37851a(this.f13041a.get());
                if (m37851a < 8 && m37851a > 1) {
                    f13040b.severe("Plausibility check failed: size < 8 (size = " + m37851a + "). Stop parsing!");
                    return null;
                }
                String m37843h = C3515e.m37843h(this.f13041a.get());
                if (m37851a == 1) {
                    this.f13041a.get().limit(16);
                    abstractC16294e.mo7486a(this.f13041a.get());
                    this.f13041a.get().position(8);
                    c = C3515e.m37847d(this.f13041a.get()) - 16;
                } else {
                    c = m37851a == 0 ? abstractC16294e.mo7489a() - abstractC16294e.mo7485b() : m37851a - 8;
                }
                if ("uuid".equals(m37843h)) {
                    this.f13041a.get().limit(this.f13041a.get().limit() + 16);
                    abstractC16294e.mo7486a(this.f13041a.get());
                    bArr = new byte[16];
                    for (int position = this.f13041a.get().position() - 16; position < this.f13041a.get().position(); position++) {
                        bArr[position - (this.f13041a.get().position() - 16)] = this.f13041a.get().get(position);
                    }
                    c -= 16;
                } else {
                    bArr = null;
                }
                AbstractC3476b mo37830a = mo37830a(m37843h, bArr, abstractC3487e instanceof AbstractC3476b ? ((AbstractC3476b) abstractC3487e).getType() : "");
                mo37830a.setParent(abstractC3487e);
                this.f13041a.get().rewind();
                mo37830a.parse(abstractC16294e, this.f13041a.get(), c, this);
                return mo37830a;
            }
        } while (mo7486a >= 0);
        abstractC16294e.mo7488a(mo7485b);
        throw new EOFException();
    }

    /* renamed from: a */
    public abstract AbstractC3476b mo37830a(String str, byte[] bArr, String str2);
}
