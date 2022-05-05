package com.aotter.net.trek.common;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* renamed from: com.aotter.net.trek.common.h */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/h.class */
public class C1748h extends ByteArrayOutputStream {

    /* renamed from: a */
    public final /* synthetic */ C1747g f1525a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1748h(C1747g gVar, int i) {
        super(i);
        this.f1525a = gVar;
    }

    @Override // java.io.ByteArrayOutputStream
    public String toString() {
        Charset charset;
        int i = ((ByteArrayOutputStream) this).count;
        int i2 = (i <= 0 || ((ByteArrayOutputStream) this).buf[i - 1] != 13) ? ((ByteArrayOutputStream) this).count : i - 1;
        try {
            byte[] bArr = ((ByteArrayOutputStream) this).buf;
            charset = this.f1525a.f1521d;
            return new String(bArr, 0, i2, charset.name());
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }
}
