package p081h.p203i.p383d;

import androidx.media.AudioAttributesCompat;
import com.fasterxml.jackson.core.base.GeneratorBase;
import java.nio.ByteBuffer;
/* renamed from: h.i.d.e */
/* loaded from: classes2-dex2jar.jar:h/i/d/e.class */
public abstract class AbstractC10085e {

    /* renamed from: a */
    public static AbstractC10085e f22807a;

    /* renamed from: h.i.d.e$a */
    /* loaded from: classes2-dex2jar.jar:h/i/d/e$a.class */
    public static class C10086a {
        /* renamed from: a */
        public static char m13406a(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        /* renamed from: a */
        public static void m13410a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws IllegalArgumentException {
            if (m13411a(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m13411a(b3) || m13411a(b4)) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            int e = ((b & 7) << 18) | (m13401e(b2) << 12) | (m13401e(b3) << 6) | m13401e(b4);
            cArr[i] = m13406a(e);
            cArr[i + 1] = m13404b(e);
        }

        /* renamed from: a */
        public static void m13409a(byte b, byte b2, byte b3, char[] cArr, int i) throws IllegalArgumentException {
            if (m13411a(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m13411a(b3)))) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            cArr[i] = (char) (((b & 15) << 12) | (m13401e(b2) << 6) | m13401e(b3));
        }

        /* renamed from: a */
        public static void m13408a(byte b, byte b2, char[] cArr, int i) throws IllegalArgumentException {
            if (b < -62) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
            } else if (!m13411a(b2)) {
                cArr[i] = (char) (((b & 31) << 6) | m13401e(b2));
            } else {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
        }

        /* renamed from: a */
        public static void m13407a(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        /* renamed from: a */
        public static boolean m13411a(byte b) {
            return b > -65;
        }

        /* renamed from: b */
        public static char m13404b(int i) {
            return (char) ((i & AudioAttributesCompat.FLAG_ALL) + GeneratorBase.SURR2_FIRST);
        }

        /* renamed from: b */
        public static boolean m13405b(byte b) {
            return b >= 0;
        }

        /* renamed from: c */
        public static boolean m13403c(byte b) {
            return b < -16;
        }

        /* renamed from: d */
        public static boolean m13402d(byte b) {
            return b < -32;
        }

        /* renamed from: e */
        public static int m13401e(byte b) {
            return b & 63;
        }
    }

    /* renamed from: a */
    public static AbstractC10085e m13412a() {
        if (f22807a == null) {
            f22807a = new C10087f();
        }
        return f22807a;
    }

    /* renamed from: a */
    public abstract int mo13400a(CharSequence charSequence);

    /* renamed from: a */
    public abstract String mo13396a(ByteBuffer byteBuffer, int i, int i2);

    /* renamed from: a */
    public abstract void mo13398a(CharSequence charSequence, ByteBuffer byteBuffer);
}
