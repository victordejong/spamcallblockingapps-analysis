package com.google.flatbuffers;

import com.fasterxml.jackson.core.base.GeneratorBase;
import java.nio.ByteBuffer;
/* renamed from: com.google.flatbuffers.i */
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/i.class */
public abstract class AbstractC15945i {

    /* renamed from: a */
    private static AbstractC15945i f56591a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.flatbuffers.i$a */
    /* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/i$a.class */
    public static final class C15946a {
        C15946a() {
        }

        /* renamed from: a */
        public static void m8002a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws IllegalArgumentException {
            if (m7998c(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m7998c(b3) || m7998c(b4)) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
            cArr[i] = (char) ((i2 >>> 10) + 55232);
            cArr[i + 1] = (char) ((i2 & 1023) + GeneratorBase.SURR2_FIRST);
        }

        /* renamed from: a */
        public static void m8001a(byte b, byte b2, byte b3, char[] cArr, int i) throws IllegalArgumentException {
            if (m7998c(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m7998c(b3)))) {
                throw new IllegalArgumentException("Invalid UTF-8");
            }
            cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
        }

        /* renamed from: a */
        public static void m8000a(byte b, byte b2, char[] cArr, int i) throws IllegalArgumentException {
            if (b >= -62) {
                if (m7998c(b2)) {
                    throw new IllegalArgumentException("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
                }
                cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
                return;
            }
            throw new IllegalArgumentException("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
        }

        /* renamed from: a */
        public static boolean m8003a(byte b) {
            return b < -32;
        }

        /* renamed from: b */
        public static boolean m7999b(byte b) {
            return b < -16;
        }

        /* renamed from: c */
        private static boolean m7998c(byte b) {
            return b > -65;
        }
    }

    /* renamed from: a */
    public static AbstractC15945i m8004a() {
        if (f56591a == null) {
            f56591a = new C15947j();
        }
        return f56591a;
    }

    /* renamed from: a */
    public abstract int mo7997a(CharSequence charSequence);

    /* renamed from: a */
    public abstract String mo7995a(ByteBuffer byteBuffer, int i, int i2);

    /* renamed from: a */
    public abstract void mo7996a(CharSequence charSequence, ByteBuffer byteBuffer);
}
