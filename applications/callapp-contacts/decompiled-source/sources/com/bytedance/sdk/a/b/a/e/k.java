package com.bytedance.sdk.a.b.a.e;

import com.bytedance.sdk.a.a.d;
import com.bytedance.sdk.a.a.f;
import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/k.class */
class k {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f8010a = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, 248, 2042, 1018, 1019, 249, 2043, 250, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f8011b = {13, 23, 28, 28, 28, 28, 28, 28, 28, 24, 30, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 28, 6, 10, 10, 12, 13, 6, 8, 11, 10, 10, 8, 11, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, 15, 6, 12, 10, 13, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, 13, 19, 13, 14, 6, 15, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, 15, 11, 14, 13, 28, 20, 22, 20, 20, 22, 22, 22, 23, 22, 23, 23, 23, 23, 23, 24, 23, 24, 24, 22, 23, 24, 23, 23, 23, 23, 21, 22, 23, 22, 23, 23, 24, 22, 21, 20, 22, 22, 23, 23, 21, 23, 22, 22, 24, 21, 22, 23, 23, 21, 21, 22, 21, 23, 22, 23, 23, 20, 22, 22, 22, 23, 22, 22, 23, 26, 26, 20, 19, 22, 23, 22, 25, 26, 26, 26, 27, 27, 26, 24, 25, 19, 21, 26, 27, 27, 26, 27, 24, 21, 21, 26, 26, 28, 27, 27, 27, 20, 24, 20, 21, 22, 21, 21, 23, 22, 22, 25, 25, 24, 24, 26, 23, 26, 27, 26, 26, 27, 27, 27, 27, 27, 28, 27, 27, 27, 27, 27, 26};

    /* renamed from: c  reason: collision with root package name */
    private static final k f8012c = new k();

    /* renamed from: d  reason: collision with root package name */
    private final a f8013d = new a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/k$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final a[] f8014a;

        /* renamed from: b  reason: collision with root package name */
        final int f8015b;

        /* renamed from: c  reason: collision with root package name */
        final int f8016c;

        a() {
            this.f8014a = new a[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
            this.f8015b = 0;
            this.f8016c = 0;
        }

        a(int i, int i2) {
            this.f8014a = null;
            this.f8015b = i;
            int i3 = i2 & 7;
            this.f8016c = i3 == 0 ? 8 : i3;
        }
    }

    private k() {
        b();
    }

    public static k a() {
        return f8012c;
    }

    private void a(int i, int i2, byte b2) {
        a aVar = new a(i, b2);
        a aVar2 = this.f8013d;
        while (b2 > 8) {
            b2 = (byte) (b2 - 8);
            int i3 = (i2 >>> b2) & 255;
            if (aVar2.f8014a != null) {
                if (aVar2.f8014a[i3] == null) {
                    aVar2.f8014a[i3] = new a();
                }
                aVar2 = aVar2.f8014a[i3];
            } else {
                throw new IllegalStateException("invalid dictionary: prefix not unique");
            }
        }
        int i4 = 8 - b2;
        int i5 = (i2 << i4) & 255;
        for (int i6 = i5; i6 < i5 + (1 << i4); i6++) {
            aVar2.f8014a[i6] = aVar;
        }
    }

    private void b() {
        int i = 0;
        while (true) {
            byte[] bArr = f8011b;
            if (i < bArr.length) {
                a(i, f8010a[i], bArr[i]);
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(f fVar) {
        long j = 0;
        for (int i = 0; i < fVar.g(); i++) {
            j += f8011b[fVar.a(i) & 255];
        }
        return (int) ((j + 7) >> 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f fVar, d dVar) throws IOException {
        long j = 0;
        byte b2 = 0;
        for (int i = 0; i < fVar.g(); i++) {
            int a2 = fVar.a(i) & 255;
            int i2 = f8010a[a2];
            byte b3 = f8011b[a2];
            j = (j << b3) | i2;
            b2 += b3;
            while (b2 >= 8) {
                b2 -= 8;
                dVar.i((int) (j >> b2));
            }
        }
        if (b2 > 0) {
            dVar.i((int) ((255 >>> b2) | (j << (8 - b2))));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] a(byte[] bArr) {
        a aVar;
        int i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a aVar2 = this.f8013d;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            aVar = aVar2;
            i = i4;
            if (i2 < bArr.length) {
                i3 = (i3 << 8) | (bArr[i2] & 255);
                i4 += 8;
                while (i4 >= 8) {
                    aVar2 = aVar2.f8014a[(i3 >>> (i4 - 8)) & 255];
                    if (aVar2.f8014a == null) {
                        byteArrayOutputStream.write(aVar2.f8015b);
                        i4 -= aVar2.f8016c;
                        aVar2 = this.f8013d;
                    } else {
                        i4 -= 8;
                    }
                }
                i2++;
            }
        }
        while (i > 0) {
            a aVar3 = aVar.f8014a[(i3 << (8 - i)) & 255];
            if (aVar3.f8014a != null || aVar3.f8016c > i) {
                break;
            }
            byteArrayOutputStream.write(aVar3.f8015b);
            i -= aVar3.f8016c;
            aVar = this.f8013d;
        }
        return byteArrayOutputStream.toByteArray();
    }
}
