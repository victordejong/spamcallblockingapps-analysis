package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bb3.class */
abstract class bb3 implements xb3 {

    /* renamed from: a */
    private static final int[] f20331a = m16412i(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    /* renamed from: b */
    int[] f20332b;

    /* renamed from: c */
    private final int f20333c;

    public bb3(byte[] bArr, int i) {
        if (bArr.length == 32) {
            this.f20332b = m16412i(bArr);
            this.f20333c = i;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    /* renamed from: f */
    public static void m16415f(int[] iArr, int[] iArr2) {
        int[] iArr3 = f20331a;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, iArr3.length, 8);
    }

    /* renamed from: g */
    public static void m16414g(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            m16413h(iArr, 0, 4, 8, 12);
            m16413h(iArr, 1, 5, 9, 13);
            m16413h(iArr, 2, 6, 10, 14);
            m16413h(iArr, 3, 7, 11, 15);
            m16413h(iArr, 0, 5, 10, 15);
            m16413h(iArr, 1, 6, 11, 12);
            m16413h(iArr, 2, 7, 8, 13);
            m16413h(iArr, 3, 4, 9, 14);
        }
    }

    /* renamed from: h */
    static void m16413h(int[] iArr, int i, int i2, int i3, int i4) {
        int i5 = iArr[i] + iArr[i2];
        iArr[i] = i5;
        int i6 = i5 ^ iArr[i4];
        int i7 = (i6 >>> (-16)) | (i6 << 16);
        iArr[i4] = i7;
        int i8 = iArr[i3] + i7;
        iArr[i3] = i8;
        int i9 = iArr[i2] ^ i8;
        int i10 = (i9 >>> (-12)) | (i9 << 12);
        iArr[i2] = i10;
        int i11 = iArr[i] + i10;
        iArr[i] = i11;
        int i12 = iArr[i4] ^ i11;
        int i13 = (i12 >>> (-8)) | (i12 << 8);
        iArr[i4] = i13;
        int i14 = iArr[i3] + i13;
        iArr[i3] = i14;
        int i15 = iArr[i2] ^ i14;
        iArr[i2] = (i15 >>> (-7)) | (i15 << 7);
    }

    /* renamed from: i */
    static int[] m16412i(byte[] bArr) {
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    @Override // com.google.android.gms.internal.ads.xb3
    /* renamed from: a */
    public final byte[] mo9294a(byte[] bArr) {
        int length = bArr.length;
        if (length <= Integer.MAX_VALUE - mo14716c()) {
            ByteBuffer allocate = ByteBuffer.allocate(mo14716c() + length);
            m16417d(allocate, bArr);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    /* renamed from: b */
    abstract int[] mo14717b(int[] iArr, int i);

    /* renamed from: c */
    public abstract int mo14716c();

    /* renamed from: d */
    public final void m16417d(ByteBuffer byteBuffer, byte[] bArr) {
        if (byteBuffer.remaining() - mo14716c() >= bArr.length) {
            byte[] m15524a = ec3.m15524a(mo14716c());
            byteBuffer.put(m15524a);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int remaining = wrap.remaining();
            int i = (remaining / 64) + 1;
            for (int i2 = 0; i2 < i; i2++) {
                ByteBuffer m16416e = m16416e(m15524a, this.f20333c + i2);
                if (i2 == i - 1) {
                    za3.m8469c(byteBuffer, wrap, m16416e, remaining % 64);
                } else {
                    za3.m8469c(byteBuffer, wrap, m16416e, 64);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }

    /* renamed from: e */
    public final ByteBuffer m16416e(byte[] bArr, int i) {
        int[] mo14717b = mo14717b(m16412i(bArr), i);
        int[] iArr = (int[]) mo14717b.clone();
        m16414g(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            mo14717b[i2] = mo14717b[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(mo14717b, 0, 16);
        return order;
    }
}
