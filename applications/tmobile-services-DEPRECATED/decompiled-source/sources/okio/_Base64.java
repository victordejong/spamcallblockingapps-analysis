package okio;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0002\b\f\u001a\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020��H��¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001d\u0010\u0005\u001a\u00020��*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u0001H��¢\u0006\u0004\b\u0005\u0010\u0006\"\u001c\u0010\u0007\u001a\u00020\u00018��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u001c\u0010\u000b\u001a\u00020\u00018��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010\b\u001a\u0004\b\f\u0010\n¨\u0006\r"}, d2 = {"", "", "decodeBase64ToArray", "(Ljava/lang/String;)[B", "map", "encodeBase64", "([B[B)Ljava/lang/String;", "BASE64", "[B", "getBASE64", "()[B", "BASE64_URL_SAFE", "getBASE64_URL_SAFE", "okio"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* loaded from: classes2-dex2jar.jar:okio/_Base64.class */
public final class _Base64 {
    @NotNull

    /* renamed from: a */
    private static final byte[] f24217a = ByteString.f24137j.m163d("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").m172i();

    static {
        ByteString.f24137j.m163d("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").m172i();
    }

    @Nullable
    /* renamed from: a */
    public static final byte[] m29a(@NotNull String decodeBase64ToArray) {
        int i;
        char charAt;
        Intrinsics.m1830e(decodeBase64ToArray, "$this$decodeBase64ToArray");
        int length = decodeBase64ToArray.length();
        while (length > 0 && ((charAt = decodeBase64ToArray.charAt(length - 1)) == '=' || charAt == '\n' || charAt == '\r' || charAt == ' ' || charAt == '\t')) {
            length--;
        }
        int i2 = (int) ((length * 6) / 8);
        byte[] bArr = new byte[i2];
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length; i6++) {
            char charAt2 = decodeBase64ToArray.charAt(i6);
            if ('A' <= charAt2 && 'Z' >= charAt2) {
                i = charAt2 - 'A';
            } else if ('a' <= charAt2 && 'z' >= charAt2) {
                i = charAt2 - 'G';
            } else if ('0' <= charAt2 && '9' >= charAt2) {
                i = charAt2 + 4;
            } else if (charAt2 == '+' || charAt2 == '-') {
                i = 62;
            } else if (charAt2 == '/' || charAt2 == '_') {
                i = 63;
            } else {
                i3 = i3;
                i4 = i4;
                i5 = i5;
                if (charAt2 != '\n') {
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    if (charAt2 != '\r') {
                        i3 = i3;
                        i4 = i4;
                        i5 = i5;
                        if (charAt2 == ' ') {
                            continue;
                        } else if (charAt2 != '\t') {
                            return null;
                        } else {
                            i3 = i3;
                            i4 = i4;
                            i5 = i5;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            int i7 = (i4 << 6) | i;
            int i8 = i3 + 1;
            i3 = i8;
            i4 = i7;
            i5 = i5;
            if (i8 % 4 == 0) {
                int i9 = i5 + 1;
                bArr[i5] = (byte) (i7 >> 16);
                int i10 = i9 + 1;
                bArr[i9] = (byte) (i7 >> 8);
                bArr[i10] = (byte) i7;
                i5 = i10 + 1;
                i4 = i7;
                i3 = i8;
            }
        }
        int i11 = i3 % 4;
        if (i11 == 1) {
            return null;
        }
        if (i11 == 2) {
            bArr[i5] = (byte) ((i4 << 12) >> 16);
            i5++;
        } else if (i11 == 3) {
            int i12 = i4 << 6;
            int i13 = i5 + 1;
            bArr[i5] = (byte) (i12 >> 16);
            i5 = i13 + 1;
            bArr[i13] = (byte) (i12 >> 8);
        }
        if (i5 == i2) {
            return bArr;
        }
        byte[] copyOf = Arrays.copyOf(bArr, i5);
        Intrinsics.m1831d(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return copyOf;
    }

    @NotNull
    /* renamed from: b */
    public static final String m28b(@NotNull byte[] encodeBase64, @NotNull byte[] map) {
        Intrinsics.m1830e(encodeBase64, "$this$encodeBase64");
        Intrinsics.m1830e(map, "map");
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
        return _Platform.m25b(bArr);
    }

    /* renamed from: c */
    public static /* synthetic */ String m27c(byte[] bArr, byte[] bArr2, int i, Object obj) {
        if ((i & 1) != 0) {
            bArr2 = f24217a;
        }
        return m28b(bArr, bArr2);
    }
}
