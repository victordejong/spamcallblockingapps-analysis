package com.googlecode.mp4parser.p420b.p422b.p424b;

import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
/* renamed from: com.googlecode.mp4parser.b.b.b.a */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/a.class */
public final class C16269a extends AbstractC16270b {

    /* renamed from: a */
    private boolean f57484a;

    /* renamed from: b */
    private byte f57485b;

    /* renamed from: c */
    private UUID f57486c;

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final String mo5963a() {
        return "seig";
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: a */
    public final void mo5962a(ByteBuffer byteBuffer) {
        boolean z = true;
        if (C3515e.m37849b(byteBuffer) != 1) {
            z = false;
        }
        this.f57484a = z;
        this.f57485b = (byte) C3515e.m37852a(byteBuffer.get());
        byte[] bArr = new byte[16];
        byteBuffer.get(bArr);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(ByteOrder.BIG_ENDIAN);
        this.f57486c = new UUID(wrap.getLong(), wrap.getLong());
    }

    @Override // com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b
    /* renamed from: b */
    public final ByteBuffer mo5961b() {
        ByteBuffer allocate = ByteBuffer.allocate(20);
        C3516f.m37840a(allocate, this.f57484a ? 1 : 0);
        if (this.f57484a) {
            C3516f.m37832c(allocate, (int) this.f57485b);
            UUID uuid = this.f57486c;
            long mostSignificantBits = uuid.getMostSignificantBits();
            long leastSignificantBits = uuid.getLeastSignificantBits();
            byte[] bArr = new byte[16];
            for (int i = 0; i < 8; i++) {
                bArr[i] = (byte) (mostSignificantBits >>> ((7 - i) * 8));
            }
            for (int i2 = 8; i2 < 16; i2++) {
                bArr[i2] = (byte) (leastSignificantBits >>> ((7 - i2) * 8));
            }
            allocate.put(bArr);
        } else {
            allocate.put(new byte[17]);
        }
        allocate.rewind();
        return allocate;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C16269a c16269a = (C16269a) obj;
        if (this.f57484a != c16269a.f57484a || this.f57485b != c16269a.f57485b) {
            return false;
        }
        UUID uuid = this.f57486c;
        UUID uuid2 = c16269a.f57486c;
        return uuid != null ? uuid.equals(uuid2) : uuid2 == null;
    }

    public final int hashCode() {
        int i = this.f57484a ? 7 : 19;
        byte b = this.f57485b;
        UUID uuid = this.f57486c;
        return (((i * 31) + b) * 31) + (uuid != null ? uuid.hashCode() : 0);
    }

    public final String toString() {
        return "CencSampleEncryptionInformationGroupEntry{isEncrypted=" + this.f57484a + ", ivSize=" + ((int) this.f57485b) + ", kid=" + this.f57486c + '}';
    }
}
