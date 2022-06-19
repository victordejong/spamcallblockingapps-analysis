package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/db3.class */
abstract class db3 implements i13 {

    /* renamed from: a */
    private final bb3 f21573a;

    /* renamed from: b */
    private final bb3 f21574b;

    public db3(byte[] bArr) {
        if (a43.m16694a(1)) {
            this.f21573a = mo14450b(bArr, 1);
            this.f21574b = mo14450b(bArr, 0);
            return;
        }
        throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.ads.i13
    /* renamed from: a */
    public final byte[] mo8531a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length <= (Integer.MAX_VALUE - this.f21573a.mo14716c()) - 16) {
            ByteBuffer allocate = ByteBuffer.allocate(this.f21573a.mo14716c() + length + 16);
            if (allocate.remaining() < length + this.f21573a.mo14716c() + 16) {
                throw new IllegalArgumentException("Given ByteBuffer output is too small");
            }
            int position = allocate.position();
            this.f21573a.m16417d(allocate, bArr);
            allocate.position(position);
            byte[] bArr3 = new byte[this.f21573a.mo14716c()];
            allocate.get(bArr3);
            allocate.limit(allocate.limit() - 16);
            ByteBuffer m16416e = this.f21574b.m16416e(bArr3, 0);
            byte[] bArr4 = new byte[32];
            m16416e.get(bArr4);
            int remaining = allocate.remaining();
            int i = remaining % 16;
            int i2 = i == 0 ? remaining : (remaining + 16) - i;
            ByteBuffer order = ByteBuffer.allocate(i2 + 16).order(ByteOrder.LITTLE_ENDIAN);
            order.put(bArr2);
            order.position(0);
            order.put(allocate);
            order.position(i2);
            order.putLong(0L);
            order.putLong(remaining);
            byte[] m8872a = yb3.m8872a(bArr4, order.array());
            allocate.limit(allocate.limit() + 16);
            allocate.put(m8872a);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    /* renamed from: b */
    abstract bb3 mo14450b(byte[] bArr, int i);
}
