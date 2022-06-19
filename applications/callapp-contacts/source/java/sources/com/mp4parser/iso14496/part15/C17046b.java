package com.mp4parser.iso14496.part15;

import com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
/* renamed from: com.mp4parser.iso14496.part15.b */
/* loaded from: classes4-dex2jar.jar:com/mp4parser/iso14496/part15/b.class */
public final class C17046b extends AbstractC16270b {

    /* renamed from: a */
    int f60543a;

    /* renamed from: b */
    int f60544b;

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final String mo5963a() {
        return "sync";
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final void mo5962a(ByteBuffer byteBuffer) {
        int m37852a = C3515e.m37852a(byteBuffer.get());
        this.f60543a = (m37852a & 192) >> 6;
        this.f60544b = m37852a & 63;
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: b */
    public final ByteBuffer mo5961b() {
        ByteBuffer allocate = ByteBuffer.allocate(1);
        C3516f.m37832c(allocate, this.f60544b + (this.f60543a << 6));
        return (ByteBuffer) allocate.rewind();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C17046b c17046b = (C17046b) obj;
        return this.f60544b == c17046b.f60544b && this.f60543a == c17046b.f60543a;
    }

    public final int hashCode() {
        return (this.f60543a * 31) + this.f60544b;
    }

    public final String toString() {
        return "SyncSampleEntry{reserved=" + this.f60543a + ", nalUnitType=" + this.f60544b + '}';
    }
}
