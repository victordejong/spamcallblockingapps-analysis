package p081h.p203i.p204a.p224e.p259j.p276q;

import androidx.media.AudioAttributesCompat;
import com.fasterxml.jackson.core.base.GeneratorBase;
/* renamed from: h.i.a.e.j.q.a7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/a7.class */
public final class C8553a7 {
    /* renamed from: a */
    public static void m17840a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws C8647j4 {
        if (m17830d(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m17830d(b3) || m17830d(b4)) {
            throw C8647j4.m17436h();
        }
        int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
        cArr[i] = (char) ((i2 >>> 10) + 55232);
        cArr[i + 1] = (char) ((i2 & AudioAttributesCompat.FLAG_ALL) + GeneratorBase.SURR2_FIRST);
    }

    /* renamed from: a */
    public static void m17839a(byte b, byte b2, byte b3, char[] cArr, int i) throws C8647j4 {
        if (m17830d(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m17830d(b3)))) {
            throw C8647j4.m17436h();
        }
        cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
    }

    /* renamed from: a */
    public static void m17838a(byte b, byte b2, char[] cArr, int i) throws C8647j4 {
        if (b < -62 || m17830d(b2)) {
            throw C8647j4.m17436h();
        }
        cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
    }

    /* renamed from: a */
    public static void m17837a(byte b, char[] cArr, int i) {
        cArr[i] = (char) b;
    }

    /* renamed from: a */
    public static boolean m17841a(byte b) {
        return b >= 0;
    }

    /* renamed from: b */
    public static boolean m17836b(byte b) {
        return b < -32;
    }

    /* renamed from: c */
    public static boolean m17831c(byte b) {
        return b < -16;
    }

    /* renamed from: d */
    public static boolean m17830d(byte b) {
        return b > -65;
    }
}
