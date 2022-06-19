package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djw.class */
abstract class djw implements dcn {

    /* renamed from: a */
    private final dju f47118a;

    /* renamed from: b */
    private final dju f47119b;

    public djw(byte[] bArr) throws InvalidKeyException {
        this.f47118a = mo16517a(bArr, 1);
        this.f47119b = mo16517a(bArr, 0);
    }

    /* renamed from: a */
    abstract dju mo16517a(byte[] bArr, int i) throws InvalidKeyException;

    @Override // com.google.android.gms.internal.ads.dcn
    /* renamed from: a */
    public byte[] mo16516a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= (Integer.MAX_VALUE - this.f47118a.mo16515a()) - 16) {
            ByteBuffer allocate = ByteBuffer.allocate(bArr.length + this.f47118a.mo16515a() + 16);
            if (allocate.remaining() < bArr.length + this.f47118a.mo16515a() + 16) {
                throw new IllegalArgumentException("Given ByteBuffer output is too small");
            }
            int position = allocate.position();
            this.f47118a.m16558a(allocate, bArr);
            allocate.position(position);
            byte[] bArr3 = new byte[this.f47118a.mo16515a()];
            allocate.get(bArr3);
            allocate.limit(allocate.limit() - 16);
            byte[] bArr4 = bArr2;
            if (bArr2 == null) {
                bArr4 = new byte[0];
            }
            ByteBuffer m16557a = this.f47119b.m16557a(bArr3, 0);
            byte[] bArr5 = new byte[32];
            m16557a.get(bArr5);
            int length = bArr4.length % 16 == 0 ? bArr4.length : (bArr4.length + 16) - (bArr4.length % 16);
            int remaining = allocate.remaining();
            int i = remaining % 16;
            int i2 = (i == 0 ? remaining : (remaining + 16) - i) + length;
            ByteBuffer order = ByteBuffer.allocate(i2 + 16).order(ByteOrder.LITTLE_ENDIAN);
            order.put(bArr4);
            order.position(length);
            order.put(allocate);
            order.position(i2);
            order.putLong(bArr4.length);
            order.putLong(remaining);
            byte[] m16531a = dks.m16531a(bArr5, order.array());
            allocate.limit(allocate.limit() + 16);
            allocate.put(m16531a);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
