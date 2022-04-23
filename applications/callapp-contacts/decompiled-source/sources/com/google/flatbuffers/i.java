package com.google.flatbuffers;

import com.fasterxml.jackson.core.base.GeneratorBase;
import java.nio.ByteBuffer;
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/i.class */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    private static i f32665a;

    /* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/i$a.class */
    static final class a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void a(byte b2, byte b3, byte b4, byte b5, char[] cArr, int i) throws IllegalArgumentException {
            if (c(b3) || (((b2 << 28) + (b3 + 112)) >> 30) != 0 || c(b4) || c(b5)) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            int i2 = ((b2 & 7) << 18) | ((b3 & 63) << 12) | ((b4 & 63) << 6) | (b5 & 63);
            cArr[i] = (char) ((i2 >>> 10) + 55232);
            cArr[i + 1] = (char) ((i2 & 1023) + GeneratorBase.SURR2_FIRST);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void a(byte b2, byte b3, byte b4, char[] cArr, int i) throws IllegalArgumentException {
            if (c(b3) || ((b2 == -32 && b3 < -96) || ((b2 == -19 && b3 >= -96) || c(b4)))) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            cArr[i] = (char) (((b2 & 15) << 12) | ((b3 & 63) << 6) | (b4 & 63));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void a(byte b2, byte b3, char[] cArr, int i) throws IllegalArgumentException {
            if (b2 < -62) {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
            } else if (!c(b3)) {
                cArr[i] = (char) (((b2 & 31) << 6) | (b3 & 63));
            } else {
                throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean a(byte b2) {
            return b2 < -32;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static boolean b(byte b2) {
            return b2 < -16;
        }

        private static boolean c(byte b2) {
            return b2 > -65;
        }
    }

    public static i a() {
        if (f32665a == null) {
            f32665a = new j();
        }
        return f32665a;
    }

    public abstract int a(CharSequence charSequence);

    public abstract String a(ByteBuffer byteBuffer, int i, int i2);

    public abstract void a(CharSequence charSequence, ByteBuffer byteBuffer);
}
