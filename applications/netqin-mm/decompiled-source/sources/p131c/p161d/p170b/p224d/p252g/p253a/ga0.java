package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekj;
/* renamed from: c.d.b.d.g.a.ga0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ga0.class */
public final class ga0 {
    /* renamed from: a */
    public static void m26983a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws zzekj {
        if (m26973d(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m26973d(b3) || m26973d(b4)) {
            throw zzekj.zzbhf();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & 1023) + 56320);
    }

    /* renamed from: a */
    public static void m26982a(byte b, byte b2, byte b3, char[] cArr, int i) throws zzekj {
        if (m26973d(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m26973d(b3)))) {
            throw zzekj.zzbhf();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    /* renamed from: a */
    public static void m26981a(byte b, byte b2, char[] cArr, int i) throws zzekj {
        if (b < -62 || m26973d(b2)) {
            throw zzekj.zzbhf();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: a */
    public static void m26980a(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    /* renamed from: a */
    public static boolean m26984a(byte b) {
        return b >= 0;
    }

    /* renamed from: b */
    public static boolean m26979b(byte b) {
        return b < -32;
    }

    /* renamed from: c */
    public static boolean m26974c(byte b) {
        return b < -16;
    }

    /* renamed from: d */
    public static boolean m26973d(byte b) {
        return b > -65;
    }
}
