package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czj.class */
abstract class czj implements dai {

    /* renamed from: b */
    private static final int[] f13847b = m10295b(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    /* renamed from: a */
    int[] f13848a;

    /* renamed from: c */
    private final int f13849c;

    public czj(byte[] bArr, int i) {
        if (bArr.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.f13848a = m10295b(bArr);
        this.f13849c = i;
    }

    /* renamed from: a */
    private static int m10301a(int i, int i2) {
        return (i << i2) | (i >>> (-i2));
    }

    /* renamed from: a */
    public static void m10298a(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            m10297a(iArr, 0, 4, 8, 12);
            m10297a(iArr, 1, 5, 9, 13);
            m10297a(iArr, 2, 6, 10, 14);
            m10297a(iArr, 3, 7, 11, 15);
            m10297a(iArr, 0, 5, 10, 15);
            m10297a(iArr, 1, 6, 11, 12);
            m10297a(iArr, 2, 7, 8, 13);
            m10297a(iArr, 3, 4, 9, 14);
        }
    }

    /* renamed from: a */
    private static void m10297a(int[] iArr, int i, int i2, int i3, int i4) {
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = m10301a(iArr[i4] ^ iArr[i], 16);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = m10301a(iArr[i2] ^ iArr[i3], 12);
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = m10301a(iArr[i4] ^ iArr[i], 8);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = m10301a(iArr[i2] ^ iArr[i3], 7);
    }

    /* renamed from: a */
    public static void m10296a(int[] iArr, int[] iArr2) {
        System.arraycopy(f13847b, 0, iArr, 0, f13847b.length);
        System.arraycopy(iArr2, 0, iArr, f13847b.length, 8);
    }

    /* renamed from: b */
    private static int[] m10295b(byte[] bArr) {
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    /* renamed from: a */
    public abstract int mo10265a();

    /* renamed from: a */
    public final ByteBuffer m10299a(byte[] bArr, int i) {
        int[] mo10264a = mo10264a(m10295b(bArr), i);
        int[] iArr = (int[]) mo10264a.clone();
        m10298a(iArr);
        for (int i2 = 0; i2 < mo10264a.length; i2++) {
            mo10264a[i2] = mo10264a[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(mo10264a, 0, 16);
        return order;
    }

    /* renamed from: a */
    public final void m10300a(ByteBuffer byteBuffer, byte[] bArr) {
        if (byteBuffer.remaining() - mo10265a() < bArr.length) {
            throw new IllegalArgumentException("Given ByteBuffer output is too small");
        }
        byte[] m10272a = daj.m10272a(mo10265a());
        byteBuffer.put(m10272a);
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int remaining = wrap.remaining();
        int i = (remaining / 64) + 1;
        for (int i2 = 0; i2 < i; i2++) {
            ByteBuffer m10299a = m10299a(m10272a, this.f13849c + i2);
            if (i2 == i - 1) {
                czh.m10305a(byteBuffer, wrap, m10299a, remaining % 64);
            } else {
                czh.m10305a(byteBuffer, wrap, m10299a, 64);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dai
    /* renamed from: a */
    public final byte[] mo10274a(byte[] bArr) {
        if (bArr.length > Integer.MAX_VALUE - mo10265a()) {
            throw new GeneralSecurityException("plaintext too long");
        }
        ByteBuffer allocate = ByteBuffer.allocate(mo10265a() + bArr.length);
        m10300a(allocate, bArr);
        return allocate.array();
    }

    /* renamed from: a */
    abstract int[] mo10264a(int[] iArr, int i);
}
