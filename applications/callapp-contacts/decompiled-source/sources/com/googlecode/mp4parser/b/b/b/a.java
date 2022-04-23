package com.googlecode.mp4parser.b.b.b;

import com.b.a.e;
import com.b.a.f;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.UUID;
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/b/b/b/a.class */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f33136a;

    /* renamed from: b  reason: collision with root package name */
    private byte f33137b;

    /* renamed from: c  reason: collision with root package name */
    private UUID f33138c;

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final String a() {
        return "seig";
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final void a(ByteBuffer byteBuffer) {
        boolean z = true;
        if (e.b(byteBuffer) != 1) {
            z = false;
        }
        this.f33136a = z;
        this.f33137b = (byte) e.a(byteBuffer.get());
        byte[] bArr = new byte[16];
        byteBuffer.get(bArr);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(ByteOrder.BIG_ENDIAN);
        this.f33138c = new UUID(wrap.getLong(), wrap.getLong());
    }

    @Override // com.googlecode.mp4parser.b.b.b.b
    public final ByteBuffer b() {
        ByteBuffer allocate = ByteBuffer.allocate(20);
        f.a(allocate, this.f33136a ? 1 : 0);
        if (this.f33136a) {
            f.c(allocate, (int) this.f33137b);
            UUID uuid = this.f33138c;
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
        a aVar = (a) obj;
        if (this.f33136a != aVar.f33136a || this.f33137b != aVar.f33137b) {
            return false;
        }
        UUID uuid = this.f33138c;
        UUID uuid2 = aVar.f33138c;
        return uuid != null ? uuid.equals(uuid2) : uuid2 == null;
    }

    public final int hashCode() {
        int i = this.f33136a ? 7 : 19;
        byte b2 = this.f33137b;
        UUID uuid = this.f33138c;
        return (((i * 31) + b2) * 31) + (uuid != null ? uuid.hashCode() : 0);
    }

    public final String toString() {
        return "CencSampleEncryptionInformationGroupEntry{isEncrypted=" + this.f33136a + ", ivSize=" + ((int) this.f33137b) + ", kid=" + this.f33138c + '}';
    }
}
