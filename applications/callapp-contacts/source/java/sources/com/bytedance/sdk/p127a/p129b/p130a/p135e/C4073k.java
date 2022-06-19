package com.bytedance.sdk.p127a.p129b.p130a.p135e;

import com.bytedance.sdk.p127a.p128a.AbstractC3971d;
import com.bytedance.sdk.p127a.p128a.C3973f;
import io.objectbox.model.PropertyFlags;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.a.b.a.e.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/k.class */
class C4073k {

    /* renamed from: a */
    private static final int[] f14815a = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, 1016, 1017, 4090, 8185, 21, 248, 2042, 1018, 1019, 249, 2043, 250, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, 1020, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};

    /* renamed from: b */
    private static final byte[] f14816b = {13, 23, 28, 28, 28, 28, 28, 28, 28, 24, 30, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 30, 28, 28, 28, 28, 28, 28, 28, 28, 28, 6, 10, 10, 12, 13, 6, 8, 11, 10, 10, 8, 11, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, 15, 6, 12, 10, 13, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, 13, 19, 13, 14, 6, 15, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, 15, 11, 14, 13, 28, 20, 22, 20, 20, 22, 22, 22, 23, 22, 23, 23, 23, 23, 23, 24, 23, 24, 24, 22, 23, 24, 23, 23, 23, 23, 21, 22, 23, 22, 23, 23, 24, 22, 21, 20, 22, 22, 23, 23, 21, 23, 22, 22, 24, 21, 22, 23, 23, 21, 21, 22, 21, 23, 22, 23, 23, 20, 22, 22, 22, 23, 22, 22, 23, 26, 26, 20, 19, 22, 23, 22, 25, 26, 26, 26, 27, 27, 26, 24, 25, 19, 21, 26, 27, 27, 26, 27, 24, 21, 21, 26, 26, 28, 27, 27, 27, 20, 24, 20, 21, 22, 21, 21, 23, 22, 22, 25, 25, 24, 24, 26, 23, 26, 27, 26, 26, 27, 27, 27, 27, 27, 28, 27, 27, 27, 27, 27, 26};

    /* renamed from: c */
    private static final C4073k f14817c = new C4073k();

    /* renamed from: d */
    private final C4074a f14818d = new C4074a();

    /* renamed from: com.bytedance.sdk.a.b.a.e.k$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/e/k$a.class */
    public static final class C4074a {

        /* renamed from: a */
        final C4074a[] f14819a;

        /* renamed from: b */
        final int f14820b;

        /* renamed from: c */
        final int f14821c;

        C4074a() {
            this.f14819a = new C4074a[PropertyFlags.INDEX_PARTIAL_SKIP_NULL];
            this.f14820b = 0;
            this.f14821c = 0;
        }

        C4074a(int i, int i2) {
            this.f14819a = null;
            this.f14820b = i;
            int i3 = i2 & 7;
            this.f14821c = i3 == 0 ? 8 : i3;
        }
    }

    private C4073k() {
        m36690b();
    }

    /* renamed from: a */
    public static C4073k m36695a() {
        return f14817c;
    }

    /* renamed from: a */
    private void m36694a(int i, int i2, byte b) {
        C4074a c4074a = new C4074a(i, b);
        C4074a c4074a2 = this.f14818d;
        while (true) {
            C4074a c4074a3 = c4074a2;
            if (b <= 8) {
                int i3 = 8 - b;
                int i4 = (i2 << i3) & 255;
                for (int i5 = i4; i5 < i4 + (1 << i3); i5++) {
                    c4074a3.f14819a[i5] = c4074a;
                }
                return;
            }
            b = (byte) (b - 8);
            int i6 = (i2 >>> b) & 255;
            if (c4074a3.f14819a == null) {
                throw new IllegalStateException("invalid dictionary: prefix not unique");
            }
            if (c4074a3.f14819a[i6] == null) {
                c4074a3.f14819a[i6] = new C4074a();
            }
            c4074a2 = c4074a3.f14819a[i6];
        }
    }

    /* renamed from: b */
    private void m36690b() {
        int i = 0;
        while (true) {
            byte[] bArr = f14816b;
            if (i < bArr.length) {
                m36694a(i, f14815a[i], bArr[i]);
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    public int m36693a(C3973f c3973f) {
        char c = 0;
        for (int i = 0; i < c3973f.mo37026g(); i++) {
            c += f14816b[c3973f.mo37037a(i) & 255];
        }
        return (int) ((c + 7) >> 3);
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: a */
    public void m36692a(C3973f c3973f, AbstractC3971d abstractC3971d) throws IOException {
        int i = 0;
        byte b = 0;
        byte b2 = 0;
        while (i < c3973f.mo37026g()) {
            int mo37037a = c3973f.mo37037a(i) & 255;
            int i2 = f14815a[mo37037a];
            byte b3 = f14816b[mo37037a];
            b = (b << b3) | i2;
            int i3 = b2 + b3;
            while (i3 >= 8) {
                i3 -= 8;
                abstractC3971d.mo37072i((int) (b >> i3));
            }
            i++;
            b2 = i3;
        }
        if (b2 > 0) {
            abstractC3971d.mo37072i((int) ((255 >>> b2) | (b << (8 - b2))));
        }
    }

    /* renamed from: a */
    public byte[] m36691a(byte[] bArr) {
        C4074a c4074a;
        int i;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C4074a c4074a2 = this.f14818d;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            c4074a = c4074a2;
            i = i4;
            if (i2 < bArr.length) {
                i3 = (i3 << 8) | (bArr[i2] & 255);
                i4 += 8;
                while (i4 >= 8) {
                    c4074a2 = c4074a2.f14819a[(i3 >>> (i4 - 8)) & 255];
                    if (c4074a2.f14819a == null) {
                        byteArrayOutputStream.write(c4074a2.f14820b);
                        i4 -= c4074a2.f14821c;
                        c4074a2 = this.f14818d;
                    } else {
                        i4 -= 8;
                    }
                }
                i2++;
            }
        }
        while (i > 0) {
            C4074a c4074a3 = c4074a.f14819a[(i3 << (8 - i)) & 255];
            if (c4074a3.f14819a != null || c4074a3.f14821c > i) {
                break;
            }
            byteArrayOutputStream.write(c4074a3.f14820b);
            i -= c4074a3.f14821c;
            c4074a = this.f14818d;
        }
        return byteArrayOutputStream.toByteArray();
    }
}
