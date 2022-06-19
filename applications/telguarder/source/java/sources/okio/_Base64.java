package okio;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n��\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H��\u001a\u0016\u0010\b\u001a\u00020\u0007*\u00020\u00012\b\b\u0002\u0010\t\u001a\u00020\u0001H��\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0003¨\u0006\n"}, m400d2 = {"BASE64", "", "getBASE64", "()[B", "BASE64_URL_SAFE", "getBASE64_URL_SAFE", "decodeBase64ToArray", "", "encodeBase64", "map", "okio"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/_Base64.class */
public final class _Base64 {
    private static final byte[] BASE64 = ByteString.Companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").getData$okio();
    private static final byte[] BASE64_URL_SAFE = ByteString.Companion.encodeUtf8("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").getData$okio();

    public static final byte[] decodeBase64ToArray(String decodeBase64ToArray) {
        int i;
        int i2;
        int i3;
        int i4;
        char charAt;
        Intrinsics.checkNotNullParameter(decodeBase64ToArray, "$this$decodeBase64ToArray");
        int length = decodeBase64ToArray.length();
        while (length > 0 && ((charAt = decodeBase64ToArray.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        int i5 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i5];
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = i9;
            if (i6 >= length) {
                int i11 = i7 % 4;
                if (i11 == 1) {
                    return null;
                }
                if (i11 == 2) {
                    bArr[i10] = (byte) ((i8 << 12) >> 16);
                    i10++;
                } else if (i11 == 3) {
                    int i12 = i8 << 6;
                    int i13 = i10 + 1;
                    bArr[i10] = (byte) (i12 >> 16);
                    i10 = i13 + 1;
                    bArr[i13] = (byte) (i12 >> 8);
                }
                if (i10 == i5) {
                    return bArr;
                }
                byte[] copyOf = Arrays.copyOf(bArr, i10);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
                return copyOf;
            }
            char charAt2 = decodeBase64ToArray.charAt(i6);
            if ('A' <= charAt2 && 'Z' >= charAt2) {
                i4 = charAt2 - 'A';
            } else if ('a' <= charAt2 && 'z' >= charAt2) {
                i4 = charAt2 - 'G';
            } else if ('0' <= charAt2 && '9' >= charAt2) {
                i4 = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i4 = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i4 = 63;
            } else {
                i2 = i7;
                i = i8;
                i3 = i10;
                if (charAt2 != '\n') {
                    i2 = i7;
                    i = i8;
                    i3 = i10;
                    if (charAt2 != '\r') {
                        i2 = i7;
                        i = i8;
                        i3 = i10;
                        if (charAt2 == ' ') {
                            continue;
                        } else if (charAt2 != '\t') {
                            return null;
                        } else {
                            i2 = i7;
                            i = i8;
                            i3 = i10;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
                i6++;
                i7 = i2;
                i8 = i;
                i9 = i3;
            }
            int i14 = (i8 << 6) | i4;
            int i15 = i7 + 1;
            i2 = i15;
            i = i14;
            i3 = i10;
            if (i15 % 4 == 0) {
                int i16 = i10 + 1;
                bArr[i10] = (byte) (i14 >> 16);
                int i17 = i16 + 1;
                bArr[i16] = (byte) (i14 >> 8);
                bArr[i17] = (byte) i14;
                i3 = i17 + 1;
                i = i14;
                i2 = i15;
            }
            i6++;
            i7 = i2;
            i8 = i;
            i9 = i3;
        }
    }

    public static final String encodeBase64(byte[] encodeBase64, byte[] map) {
        Intrinsics.checkNotNullParameter(encodeBase64, "$this$encodeBase64");
        Intrinsics.checkNotNullParameter(map, "map");
        byte[] bArr = new byte[((encodeBase64.length + 2) / 3) * 4];
        int length = encodeBase64.length - (encodeBase64.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            byte b = encodeBase64[i];
            int i4 = i3 + 1;
            byte b2 = encodeBase64[i3];
            byte b3 = encodeBase64[i4];
            int i5 = i2 + 1;
            bArr[i2] = map[(b & 255) >> 2];
            int i6 = i5 + 1;
            bArr[i5] = map[((b & 3) << 4) | ((b2 & 255) >> 4)];
            int i7 = i6 + 1;
            bArr[i6] = map[((b2 & 15) << 2) | ((b3 & 255) >> 6)];
            i2 = i7 + 1;
            bArr[i7] = map[b3 & 63];
            i = i4 + 1;
        }
        int length2 = encodeBase64.length - length;
        if (length2 == 1) {
            byte b4 = encodeBase64[i];
            int i8 = i2 + 1;
            bArr[i2] = map[(b4 & 255) >> 2];
            int i9 = i8 + 1;
            bArr[i8] = map[(b4 & 3) << 4];
            byte b5 = (byte) 61;
            bArr[i9] = b5;
            bArr[i9 + 1] = b5;
        } else if (length2 == 2) {
            byte b6 = encodeBase64[i];
            byte b7 = encodeBase64[i + 1];
            int i10 = i2 + 1;
            bArr[i2] = map[(b6 & 255) >> 2];
            int i11 = i10 + 1;
            bArr[i10] = map[((b6 & 3) << 4) | ((b7 & 255) >> 4)];
            bArr[i11] = map[(b7 & 15) << 2];
            bArr[i11 + 1] = (byte) 61;
        }
        return _Platform.toUtf8String(bArr);
    }

    public static /* synthetic */ String encodeBase64$default(byte[] bArr, byte[] bArr2, int i, Object obj) {
        if ((i & 1) != 0) {
            bArr2 = BASE64;
        }
        return encodeBase64(bArr, bArr2);
    }

    public static final byte[] getBASE64() {
        return BASE64;
    }

    public static final byte[] getBASE64_URL_SAFE() {
        return BASE64_URL_SAFE;
    }
}
