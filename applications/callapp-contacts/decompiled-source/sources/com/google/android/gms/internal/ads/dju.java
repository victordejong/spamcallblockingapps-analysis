package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.IntBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dju.class */
abstract class dju implements dkt {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f26870b = b(new byte[]{101, 120, 112, 97, 110, 100, 32, 51, 50, 45, 98, 121, 116, 101, 32, 107});

    /* renamed from: a  reason: collision with root package name */
    int[] f26871a;

    /* renamed from: c  reason: collision with root package name */
    private final int f26872c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dju(byte[] bArr, int i) throws InvalidKeyException {
        if (bArr.length == 32) {
            this.f26871a = b(bArr);
            this.f26872c = i;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    private static int a(int i, int i2) {
        return (i >>> (-i2)) | (i << i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int[] iArr) {
        for (int i = 0; i < 10; i++) {
            a(iArr, 0, 4, 8, 12);
            a(iArr, 1, 5, 9, 13);
            a(iArr, 2, 6, 10, 14);
            a(iArr, 3, 7, 11, 15);
            a(iArr, 0, 5, 10, 15);
            a(iArr, 1, 6, 11, 12);
            a(iArr, 2, 7, 8, 13);
            a(iArr, 3, 4, 9, 14);
        }
    }

    private static void a(int[] iArr, int i, int i2, int i3, int i4) {
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = a(iArr[i4] ^ iArr[i], 16);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = a(iArr[i2] ^ iArr[i3], 12);
        iArr[i] = iArr[i] + iArr[i2];
        iArr[i4] = a(iArr[i] ^ iArr[i4], 8);
        iArr[i3] = iArr[i3] + iArr[i4];
        iArr[i2] = a(iArr[i2] ^ iArr[i3], 7);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(int[] iArr, int[] iArr2) {
        int[] iArr3 = f26870b;
        System.arraycopy(iArr3, 0, iArr, 0, iArr3.length);
        System.arraycopy(iArr2, 0, iArr, iArr3.length, 8);
    }

    private static int[] b(byte[] bArr) {
        IntBuffer asIntBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).asIntBuffer();
        int[] iArr = new int[asIntBuffer.remaining()];
        asIntBuffer.get(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ByteBuffer a(byte[] bArr, int i) {
        int[] a2 = a(b(bArr), i);
        int[] iArr = (int[]) a2.clone();
        a(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            a2[i2] = a2[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(a2, 0, 16);
        return order;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
        if (byteBuffer.remaining() - a() >= bArr.length) {
            byte[] a2 = dkz.a(a());
            byteBuffer.put(a2);
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int remaining = wrap.remaining();
            int i = (remaining / 64) + 1;
            for (int i2 = 0; i2 < i; i2++) {
                ByteBuffer a3 = a(a2, this.f26872c + i2);
                if (i2 == i - 1) {
                    djs.a(byteBuffer, wrap, a3, remaining % 64);
                } else {
                    djs.a(byteBuffer, wrap, a3, 64);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }

    @Override // com.google.android.gms.internal.ads.dkt
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        if (bArr.length <= Integer.MAX_VALUE - a()) {
            ByteBuffer allocate = ByteBuffer.allocate(a() + bArr.length);
            a(allocate, bArr);
            return allocate.array();
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    abstract int[] a(int[] iArr, int i);
}
