package c;

import c.i;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n��\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H��\u001a\u0016\u0010\b\u001a\u00020\u0007*\u00020\u00012\b\b\u0002\u0010\t\u001a\u00020\u0001H��\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0003¨\u0006\n"}, d2 = {"BASE64", "", "getBASE64", "()[B", "BASE64_URL_SAFE", "getBASE64_URL_SAFE", "decodeBase64ToArray", "", "encodeBase64", "map", "okio"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f6279a = i.a.a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").f6299b;

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f6280b = i.a.a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").f6299b;

    static {
        i.a aVar = i.f6297d;
        i.a aVar2 = i.f6297d;
    }

    public static /* synthetic */ String a(byte[] encodeBase64) {
        byte[] map = f6279a;
        p.d(encodeBase64, "$this$encodeBase64");
        p.d(map, "map");
        byte[] bArr = new byte[((encodeBase64.length + 2) / 3) * 4];
        int length = encodeBase64.length - (encodeBase64.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            byte b2 = encodeBase64[i];
            int i4 = i3 + 1;
            byte b3 = encodeBase64[i3];
            byte b4 = encodeBase64[i4];
            int i5 = i2 + 1;
            bArr[i2] = map[(b2 & 255) >> 2];
            int i6 = i5 + 1;
            bArr[i5] = map[((b2 & 3) << 4) | ((b3 & 255) >> 4)];
            int i7 = i6 + 1;
            bArr[i6] = map[((b3 & 15) << 2) | ((b4 & 255) >> 6)];
            i2 = i7 + 1;
            bArr[i7] = map[b4 & 63];
            i = i4 + 1;
        }
        int length2 = encodeBase64.length - length;
        if (length2 == 1) {
            byte b5 = encodeBase64[i];
            int i8 = i2 + 1;
            bArr[i2] = map[(b5 & 255) >> 2];
            int i9 = i8 + 1;
            bArr[i8] = map[(b5 & 3) << 4];
            bArr[i9] = (byte) 61;
            bArr[i9 + 1] = (byte) 61;
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
        return b.a(bArr);
    }

    public static final byte[] a(String decodeBase64ToArray) {
        int i;
        char charAt;
        p.d(decodeBase64ToArray, "$this$decodeBase64ToArray");
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
        p.b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        return copyOf;
    }
}
