package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/djw.class */
abstract class djw implements dcn {

    /* renamed from: a  reason: collision with root package name */
    private final dju f26873a;

    /* renamed from: b  reason: collision with root package name */
    private final dju f26874b;

    public djw(byte[] bArr) throws InvalidKeyException {
        this.f26873a = a(bArr, 1);
        this.f26874b = a(bArr, 0);
    }

    abstract dju a(byte[] bArr, int i) throws InvalidKeyException;

    @Override // com.google.android.gms.internal.ads.dcn
    public byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length <= (Integer.MAX_VALUE - this.f26873a.a()) - 16) {
            ByteBuffer allocate = ByteBuffer.allocate(bArr.length + this.f26873a.a() + 16);
            if (allocate.remaining() >= bArr.length + this.f26873a.a() + 16) {
                int position = allocate.position();
                this.f26873a.a(allocate, bArr);
                allocate.position(position);
                byte[] bArr3 = new byte[this.f26873a.a()];
                allocate.get(bArr3);
                allocate.limit(allocate.limit() - 16);
                byte[] bArr4 = bArr2;
                if (bArr2 == null) {
                    bArr4 = new byte[0];
                }
                ByteBuffer a2 = this.f26874b.a(bArr3, 0);
                byte[] bArr5 = new byte[32];
                a2.get(bArr5);
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
                byte[] a3 = dks.a(bArr5, order.array());
                allocate.limit(allocate.limit() + 16);
                allocate.put(a3);
                return allocate.array();
            }
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
