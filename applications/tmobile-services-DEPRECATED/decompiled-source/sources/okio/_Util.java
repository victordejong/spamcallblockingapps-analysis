package okio;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.ByteStringKt;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0007\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u001a7\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002H��¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\nH��¢\u0006\u0004\b\u000e\u0010\u000f\u001a \u0010\u0010\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\nH\u0080\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a \u0010\u0010\u001a\u00020\n2\u0006\u0010\u0001\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b\u0010\u0010\u0012\u001a\u001c\u0010\u0015\u001a\u00020\u0002*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0080\f¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u001c\u0010\u0015\u001a\u00020\n*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u0015\u0010\u0017\u001a\u001c\u0010\u0015\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0014\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u0015\u0010\u0011\u001a\u0013\u0010\u0018\u001a\u00020\u0002*\u00020\u0002H��¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u0013\u0010\u0018\u001a\u00020\n*\u00020\nH��¢\u0006\u0004\b\u0018\u0010\u001a\u001a\u0013\u0010\u0018\u001a\u00020\u001b*\u00020\u001bH��¢\u0006\u0004\b\u0018\u0010\u001c\u001a\u001c\u0010\u001d\u001a\u00020\u0002*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0080\f¢\u0006\u0004\b\u001d\u0010\u0016\u001a\u001c\u0010\u001e\u001a\u00020\u0002*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0080\f¢\u0006\u0004\b\u001e\u0010\u0016\u001a\u0013\u0010 \u001a\u00020\u001f*\u00020\u0013H��¢\u0006\u0004\b \u0010!\u001a\u0013\u0010 \u001a\u00020\u001f*\u00020\u0002H��¢\u0006\u0004\b \u0010\"\u001a\u0013\u0010 \u001a\u00020\u001f*\u00020\nH��¢\u0006\u0004\b \u0010#¨\u0006$"}, d2 = {"", "a", "", "aOffset", "b", "bOffset", "byteCount", "", "arrayRangeEquals", "([BI[BII)Z", "", "size", "offset", "", "checkOffsetAndCount", "(JJJ)V", "minOf", "(IJ)J", "(JI)J", "", "other", "and", "(BI)I", "(BJ)J", "reverseBytes", "(I)I", "(J)J", "", "(S)S", "shl", "shr", "", "toHexString", "(B)Ljava/lang/String;", "(I)Ljava/lang/String;", "(J)Ljava/lang/String;", "okio"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@JvmName
/* loaded from: classes2-dex2jar.jar:okio/_Util.class */
public final class _Util {
    /* renamed from: a */
    public static final boolean m24a(@NotNull byte[] a, int i, @NotNull byte[] b, int i2, int i3) {
        Intrinsics.m1830e(a, "a");
        Intrinsics.m1830e(b, "b");
        for (int i4 = 0; i4 < i3; i4++) {
            if (a[i4 + i] != b[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static final void m23b(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    /* renamed from: c */
    public static final int m22c(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    /* renamed from: d */
    public static final short m21d(short s) {
        int i = s & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    @NotNull
    /* renamed from: e */
    public static final String m20e(byte b) {
        return new String(new char[]{ByteStringKt.m8f()[(b >> 4) & 15], ByteStringKt.m8f()[b & 15]});
    }

    @NotNull
    /* renamed from: f */
    public static final String m19f(int i) {
        if (i == 0) {
            return "0";
        }
        int i2 = 0;
        char[] cArr = {ByteStringKt.m8f()[(i >> 28) & 15], ByteStringKt.m8f()[(i >> 24) & 15], ByteStringKt.m8f()[(i >> 20) & 15], ByteStringKt.m8f()[(i >> 16) & 15], ByteStringKt.m8f()[(i >> 12) & 15], ByteStringKt.m8f()[(i >> 8) & 15], ByteStringKt.m8f()[(i >> 4) & 15], ByteStringKt.m8f()[i & 15]};
        while (i2 < 8 && cArr[i2] == '0') {
            i2++;
        }
        return new String(cArr, i2, 8 - i2);
    }
}
