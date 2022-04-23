package p081h.p203i.p204a.p224e.p259j.p276q;

import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import java.nio.ByteBuffer;
/* renamed from: h.i.a.e.j.q.b7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/b7.class */
public abstract class AbstractC8562b7 {
    /* renamed from: b */
    public static void m17767b(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i;
        int length = charSequence.length();
        int position = byteBuffer.position();
        int i2 = 0;
        while (i2 < length) {
            i = position;
            try {
                char charAt = charSequence.charAt(i2);
                if (charAt >= 128) {
                    break;
                }
                byteBuffer.put(position + i2, (byte) charAt);
                i2++;
            } catch (IndexOutOfBoundsException e) {
                i2 = i2;
                int position2 = byteBuffer.position();
                int max = Math.max(i2, (i - byteBuffer.position()) + 1);
                char charAt2 = charSequence.charAt(i2);
                StringBuilder sb = new StringBuilder(37);
                sb.append("Failed writing ");
                sb.append(charAt2);
                sb.append(" at index ");
                sb.append(position2 + max);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
        }
        if (i2 == length) {
            byteBuffer.position(position + i2);
            return;
        }
        int i3 = position + i2;
        while (i2 < length) {
            char charAt3 = charSequence.charAt(i2);
            if (charAt3 < 128) {
                byteBuffer.put(i3, (byte) charAt3);
            } else if (charAt3 < 2048) {
                int i4 = i3 + 1;
                try {
                    byteBuffer.put(i3, (byte) ((charAt3 >>> 6) | PsExtractor.AUDIO_STREAM));
                    byteBuffer.put(i4, (byte) ((charAt3 & '?') | 128));
                    i3 = i4;
                } catch (IndexOutOfBoundsException e2) {
                    i = i4;
                    int position22 = byteBuffer.position();
                    int max2 = Math.max(i2, (i - byteBuffer.position()) + 1);
                    char charAt22 = charSequence.charAt(i2);
                    StringBuilder sb2 = new StringBuilder(37);
                    sb2.append("Failed writing ");
                    sb2.append(charAt22);
                    sb2.append(" at index ");
                    sb2.append(position22 + max2);
                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                }
            } else if (charAt3 < 55296 || 57343 < charAt3) {
                int i5 = i3 + 1;
                byteBuffer.put(i3, (byte) ((charAt3 >>> '\f') | 224));
                i3 = i5 + 1;
                byteBuffer.put(i5, (byte) (((charAt3 >>> 6) & 63) | 128));
                byteBuffer.put(i3, (byte) ((charAt3 & '?') | 128));
            } else {
                int i6 = i2 + 1;
                if (i6 != length) {
                    i = i3;
                    try {
                        char charAt4 = charSequence.charAt(i6);
                        if (Character.isSurrogatePair(charAt3, charAt4)) {
                            int codePoint = Character.toCodePoint(charAt3, charAt4);
                            int i7 = i3 + 1;
                            i = i7;
                            try {
                                byteBuffer.put(i3, (byte) ((codePoint >>> 18) | 240));
                                int i8 = i7 + 1;
                                byteBuffer.put(i7, (byte) (((codePoint >>> 12) & 63) | 128));
                                i3 = i8 + 1;
                                byteBuffer.put(i8, (byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put(i3, (byte) ((codePoint & 63) | 128));
                                i2 = i6;
                            } catch (IndexOutOfBoundsException e3) {
                                i2 = i6;
                                int position222 = byteBuffer.position();
                                int max22 = Math.max(i2, (i - byteBuffer.position()) + 1);
                                char charAt222 = charSequence.charAt(i2);
                                StringBuilder sb22 = new StringBuilder(37);
                                sb22.append("Failed writing ");
                                sb22.append(charAt222);
                                sb22.append(" at index ");
                                sb22.append(position222 + max22);
                                throw new ArrayIndexOutOfBoundsException(sb22.toString());
                            }
                        } else {
                            i2 = i6;
                        }
                    } catch (IndexOutOfBoundsException e4) {
                    }
                }
                throw new C8585d7(i2, length);
            }
            i2++;
            i3++;
        }
        byteBuffer.position(i3);
    }

    /* renamed from: a */
    public abstract int mo17680a(int i, byte[] bArr, int i2, int i3);

    /* renamed from: a */
    public abstract int mo17678a(CharSequence charSequence, byte[] bArr, int i, int i2);

    /* renamed from: a */
    public abstract void mo17679a(CharSequence charSequence, ByteBuffer byteBuffer);

    /* renamed from: a */
    public final boolean m17768a(byte[] bArr, int i, int i2) {
        return mo17680a(0, bArr, i, i2) == 0;
    }

    /* renamed from: b */
    public abstract String mo17676b(byte[] bArr, int i, int i2) throws C8647j4;
}
