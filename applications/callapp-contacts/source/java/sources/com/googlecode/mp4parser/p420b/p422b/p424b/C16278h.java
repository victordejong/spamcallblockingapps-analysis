package com.googlecode.mp4parser.p420b.p422b.p424b;

import com.p102b.p103a.C3513c;
import java.nio.ByteBuffer;
/* renamed from: com.googlecode.mp4parser.b.b.b.h */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/h.class */
public final class C16278h extends AbstractC16270b {

    /* renamed from: a */
    private ByteBuffer f57521a;

    /* renamed from: b */
    private String f57522b;

    public C16278h(String str) {
        this.f57522b = str;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final String mo5963a() {
        return this.f57522b;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final void mo5962a(ByteBuffer byteBuffer) {
        this.f57521a = (ByteBuffer) byteBuffer.duplicate().rewind();
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: b */
    public final ByteBuffer mo5961b() {
        return this.f57521a.duplicate();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ByteBuffer byteBuffer = this.f57521a;
        ByteBuffer byteBuffer2 = ((C16278h) obj).f57521a;
        return byteBuffer != null ? byteBuffer.equals(byteBuffer2) : byteBuffer2 == null;
    }

    public final int hashCode() {
        ByteBuffer byteBuffer = this.f57521a;
        if (byteBuffer != null) {
            return byteBuffer.hashCode();
        }
        return 0;
    }

    public final String toString() {
        ByteBuffer duplicate = this.f57521a.duplicate();
        duplicate.rewind();
        byte[] bArr = new byte[duplicate.limit()];
        duplicate.get(bArr);
        return "UnknownEntry{content=" + C3513c.m37856a(bArr) + '}';
    }
}
