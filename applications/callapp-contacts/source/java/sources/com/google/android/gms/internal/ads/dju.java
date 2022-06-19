package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dju.class */
abstract class dju implements dkt {

    /* renamed from: b */
    private static final int[] f47115b = m16553b(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    /* renamed from: a */
    int[] f47116a;

    /* renamed from: c */
    private final int f47117c;

    public dju(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length == 32) {
            this.f47116a = m16553b(bArr);
            this.f47117c = i;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    /* renamed from: a */
    private static int m16559a(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* renamed from: a */
    public static void m16556a(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            m16555a(iArr, 0, 4, 8, 12);
            m16555a(iArr, 1, 5, 9, 13);
            m16555a(iArr, 2, 6, 10, 14);
            m16555a(iArr, 3, 7, 11, 15);
            m16555a(iArr, 0, 5, 10, 15);
            m16555a(iArr, 1, 6, 11, 12);
            m16555a(iArr, 2, 7, 8, 13);
            m16555a(iArr, 3, 4, 9, 14);
        }
    }

    /* renamed from: a */
    private static void m16555a(int[] iArr, int i, int i2, int i3, int i4) {
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = m16559a(iArr[i4] ^ iArr[i], 16);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = m16559a(iArr[i2] ^ iArr[i3], 12);
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = m16559a(iArr[i] ^ iArr[i4], 8);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = m16559a(iArr[i2] ^ iArr[i3], 7);
    }

    /* renamed from: a */
    public static void m16554a(int[] iArr, int[] iArr2) {
        int[] iArr3 = f47115b;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, iArr3.length, 8);
    }

    /* renamed from: b */
    private static int[] m16553b(byte[] bArr) {
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    /* renamed from: a */
    public abstract int mo16515a();

    /* renamed from: a */
    public final ByteBuffer m16557a(byte[] bArr, int i) {
        int[] mo16514a = mo16514a(m16553b(bArr), i);
        int[] iArr = (int[]) mo16514a.clone();
        m16556a(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            mo16514a[i2] = mo16514a[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(mo16514a, 0, 16);
        return order;
    }

    /* renamed from: a */
    public final void m16558a(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
        if (byteBuffer.remaining() - mo16515a() >= bArr.length) {
            byte[] m16524a = dkz.m16524a(mo16515a());
            byteBuffer.put(m16524a);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int remaining = wrap.remaining();
            int i = (remaining / 64) + 1;
            for (int i2 = 0; i2 < i; i2++) {
                ByteBuffer m16557a = m16557a(m16524a, this.f47117c + i2);
                if (i2 == i - 1) {
                    djs.m16563a(byteBuffer, wrap, m16557a, remaining % 64);
                } else {
                    djs.m16563a(byteBuffer, wrap, m16557a, 64);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: a */
    public final byte[] mo16530a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length <= Integer.MAX_VALUE - mo16515a()) {
            ByteBuffer allocate = ByteBuffer.allocate(mo16515a() + bArr.length);
            m16558a(allocate, bArr);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    /* renamed from: a */
    abstract int[] mo16514a(int[] iArr, int i);
}
