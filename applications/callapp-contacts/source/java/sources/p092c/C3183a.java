package p092c;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import p092c.C3208i;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n��\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0001*\u00020\u0007H��\u001a\u0016\u0010\b\u001a\u00020\u0007*\u00020\u00012\b\b\u0002\u0010\t\u001a\u00020\u0001H��\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0003¨\u0006\n"}, m4298d2 = {"BASE64", "", "getBASE64", "()[B", "BASE64_URL_SAFE", "getBASE64_URL_SAFE", "decodeBase64ToArray", "", "encodeBase64", "map", "okio"}, m4297k = 2, m4296mv = {1, 4, 0})
/* renamed from: c.a */
/* loaded from: classes-dex2jar.jar:c/a.class */
public final class C3183a {

    /* renamed from: a */
    private static final byte[] f11560a = C3208i.C3209a.m39170a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/").f11585b;

    /* renamed from: b */
    private static final byte[] f11561b = C3208i.C3209a.m39170a("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_").f11585b;

    static {
        C3208i.C3209a c3209a = C3208i.f11583d;
        C3208i.C3209a c3209a2 = C3208i.f11583d;
    }

    /* renamed from: a */
    public static /* synthetic */ String m39244a(byte[] encodeBase64) {
        byte[] map = f11560a;
        C18524p.m3840d(encodeBase64, "$this$encodeBase64");
        C18524p.m3840d(map, "map");
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
            bArr[i9] = (byte) 61;
            bArr[i9 + 1] = (byte) 61;
        } else if (length2 == 2) {
            byte b5 = encodeBase64[i];
            byte b6 = encodeBase64[i + 1];
            int i10 = i2 + 1;
            bArr[i2] = map[(b5 & 255) >> 2];
            int i11 = i10 + 1;
            bArr[i10] = map[((b5 & 3) << 4) | ((b6 & 255) >> 4)];
            bArr[i11] = map[(b6 & 15) << 2];
            bArr[i11 + 1] = (byte) 61;
        }
        return C3194b.m39229a(bArr);
    }

    /* renamed from: a */
    public static final byte[] m39245a(String decodeBase64ToArray) {
        int i;
        int i2;
        int i3;
        int i4;
        char charAt;
        C18524p.m3840d(decodeBase64ToArray, "$this$decodeBase64ToArray");
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
                C18524p.m3843b(copyOf, "java.util.Arrays.copyOf(this, newSize)");
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
                i3 = i7;
                i2 = i8;
                i = i10;
                if (charAt2 != '\n') {
                    i3 = i7;
                    i2 = i8;
                    i = i10;
                    if (charAt2 != '\r') {
                        i3 = i7;
                        i2 = i8;
                        i = i10;
                        if (charAt2 == ' ') {
                            continue;
                        } else if (charAt2 != '\t') {
                            return null;
                        } else {
                            i3 = i7;
                            i2 = i8;
                            i = i10;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
                i6++;
                i7 = i3;
                i8 = i2;
                i9 = i;
            }
            int i14 = (i8 << 6) | i4;
            int i15 = i7 + 1;
            i3 = i15;
            i2 = i14;
            i = i10;
            if (i15 % 4 == 0) {
                int i16 = i10 + 1;
                bArr[i10] = (byte) (i14 >> 16);
                int i17 = i16 + 1;
                bArr[i16] = (byte) (i14 >> 8);
                bArr[i17] = (byte) i14;
                i = i17 + 1;
                i2 = i14;
                i3 = i15;
            }
            i6++;
            i7 = i3;
            i8 = i2;
            i9 = i;
        }
    }
}
