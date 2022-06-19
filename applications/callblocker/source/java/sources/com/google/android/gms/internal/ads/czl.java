package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czl.class */
abstract class czl implements csm {

    /* renamed from: a */
    private final czj f13850a;

    /* renamed from: b */
    private final czj f13851b;

    public czl(byte[] bArr) {
        this.f13850a = mo10255a(bArr, 1);
        this.f13851b = mo10255a(bArr, 0);
    }

    /* renamed from: a */
    abstract czj mo10255a(byte[] bArr, int i);

    @Override // com.google.android.gms.internal.ads.csm
    /* renamed from: a */
    public byte[] mo10254a(byte[] bArr, byte[] bArr2) {
        if (bArr.length > (Integer.MAX_VALUE - this.f13850a.mo10265a()) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer allocate = ByteBuffer.allocate(bArr.length + this.f13850a.mo10265a() + 16);
        if (allocate.remaining() < bArr.length + this.f13850a.mo10265a() + 16) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        int position = allocate.position();
        this.f13850a.m10300a(allocate, bArr);
        allocate.position(position);
        byte[] bArr3 = new byte[this.f13850a.mo10265a()];
        allocate.get(bArr3);
        allocate.limit(allocate.limit() - 16);
        byte[] bArr4 = bArr2;
        if (bArr2 == null) {
            bArr4 = new byte[0];
        }
        ByteBuffer m10299a = this.f13851b.m10299a(bArr3, 0);
        byte[] bArr5 = new byte[32];
        m10299a.get(bArr5);
        int length = bArr4.length % 16 == 0 ? bArr4.length : (bArr4.length + 16) - (bArr4.length % 16);
        int remaining = allocate.remaining();
        int i = remaining % 16 == 0 ? remaining : (remaining + 16) - (remaining % 16);
        ByteBuffer order = ByteBuffer.allocate(length + i + 16).order(ByteOrder.LITTLE_ENDIAN);
        order.put(bArr4);
        order.position(length);
        order.put(allocate);
        order.position(length + i);
        order.putLong(bArr4.length);
        order.putLong(remaining);
        byte[] m10267a = dak.m10267a(bArr5, order.array());
        allocate.limit(allocate.limit() + 16);
        allocate.put(m10267a);
        return allocate.array();
    }
}
