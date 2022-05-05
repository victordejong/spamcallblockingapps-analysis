package okio.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b!\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0002\b\u0005\u001a\u001f\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0018\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020��H\u0080\b¢\u0006\u0004\b\b\u0010\t\u001a\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\r\u001a\u0014\u0010\u000f\u001a\u00020\u000e*\u00020\u0007H\u0080\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0014\u0010\u0011\u001a\u00020\u000e*\u00020\u0007H\u0080\b¢\u0006\u0004\b\u0011\u0010\u0010\u001a\u001c\u0010\u0013\u001a\u00020\u0002*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0080\b¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u0007*\u00020\u000eH\u0080\b¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0014\u0010\u0017\u001a\u00020\u0007*\u00020\u000eH\u0080\b¢\u0006\u0004\b\u0017\u0010\u0016\u001a\u0014\u0010\u0018\u001a\u00020\u0007*\u00020\u000eH\u0080\b¢\u0006\u0004\b\u0018\u0010\u0016\u001a\u001c\u0010\u001b\u001a\u00020\u001a*\u00020\u00072\u0006\u0010\u0019\u001a\u00020��H\u0080\b¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001c\u0010\u001b\u001a\u00020\u001a*\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H\u0080\b¢\u0006\u0004\b\u001b\u0010\u001d\u001a\u001e\u0010\u001f\u001a\u00020\u001a*\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u001eH\u0080\b¢\u0006\u0004\b\u001f\u0010 \u001a\u001c\u0010#\u001a\u00020\"*\u00020\u00072\u0006\u0010!\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b#\u0010$\u001a\u0014\u0010%\u001a\u00020\u0002*\u00020\u0007H\u0080\b¢\u0006\u0004\b%\u0010&\u001a\u0014\u0010'\u001a\u00020\u0002*\u00020\u0007H\u0080\b¢\u0006\u0004\b'\u0010&\u001a\u0014\u0010(\u001a\u00020\u000e*\u00020\u0007H\u0080\b¢\u0006\u0004\b(\u0010\u0010\u001a$\u0010*\u001a\u00020\u0002*\u00020\u00072\u0006\u0010\u0012\u001a\u00020��2\u0006\u0010)\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b*\u0010+\u001a\u0014\u0010,\u001a\u00020��*\u00020\u0007H\u0080\b¢\u0006\u0004\b,\u0010-\u001a$\u0010.\u001a\u00020\u0002*\u00020\u00072\u0006\u0010\u0012\u001a\u00020��2\u0006\u0010)\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b.\u0010+\u001a$\u0010.\u001a\u00020\u0002*\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b.\u0010/\u001a4\u00103\u001a\u00020\u001a*\u00020\u00072\u0006\u00100\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020��2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b3\u00104\u001a4\u00103\u001a\u00020\u001a*\u00020\u00072\u0006\u00100\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b3\u00105\u001a\u001c\u00107\u001a\u00020\u001a*\u00020\u00072\u0006\u00106\u001a\u00020��H\u0080\b¢\u0006\u0004\b7\u0010\u001c\u001a\u001c\u00107\u001a\u00020\u001a*\u00020\u00072\u0006\u00106\u001a\u00020\u0007H\u0080\b¢\u0006\u0004\b7\u0010\u001d\u001a$\u0010:\u001a\u00020\u0007*\u00020\u00072\u0006\u00108\u001a\u00020\u00022\u0006\u00109\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b:\u0010;\u001a\u0014\u0010<\u001a\u00020\u0007*\u00020\u0007H\u0080\b¢\u0006\u0004\b<\u0010=\u001a\u0014\u0010>\u001a\u00020\u0007*\u00020\u0007H\u0080\b¢\u0006\u0004\b>\u0010=\u001a\u0014\u0010?\u001a\u00020��*\u00020\u0007H\u0080\b¢\u0006\u0004\b?\u0010-\u001a$\u0010@\u001a\u00020\u0007*\u00020��2\u0006\u00100\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b@\u0010A\u001a\u0014\u0010B\u001a\u00020\u000e*\u00020\u0007H\u0080\b¢\u0006\u0004\bB\u0010\u0010\u001a\u0014\u0010C\u001a\u00020\u000e*\u00020\u0007H\u0080\b¢\u0006\u0004\bC\u0010\u0010\u001a+\u0010G\u001a\u00020F*\u00020\u00072\u0006\u0010E\u001a\u00020D2\u0006\u00100\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u0002H��¢\u0006\u0004\bG\u0010H\"\u001c\u0010J\u001a\u00020I8��@��X\u0080\u0004¢\u0006\f\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M¨\u0006N"}, d2 = {"", "s", "", "codePointCount", "codePointIndexToCharIndex", "([BI)I", "data", "Lokio/ByteString;", "commonOf", "([B)Lokio/ByteString;", "", "c", "decodeHexDigit", "(C)I", "", "commonBase64", "(Lokio/ByteString;)Ljava/lang/String;", "commonBase64Url", "other", "commonCompareTo", "(Lokio/ByteString;Lokio/ByteString;)I", "commonDecodeBase64", "(Ljava/lang/String;)Lokio/ByteString;", "commonDecodeHex", "commonEncodeUtf8", "suffix", "", "commonEndsWith", "(Lokio/ByteString;[B)Z", "(Lokio/ByteString;Lokio/ByteString;)Z", "", "commonEquals", "(Lokio/ByteString;Ljava/lang/Object;)Z", "pos", "", "commonGetByte", "(Lokio/ByteString;I)B", "commonGetSize", "(Lokio/ByteString;)I", "commonHashCode", "commonHex", "fromIndex", "commonIndexOf", "(Lokio/ByteString;[BI)I", "commonInternalArray", "(Lokio/ByteString;)[B", "commonLastIndexOf", "(Lokio/ByteString;Lokio/ByteString;I)I", "offset", "otherOffset", "byteCount", "commonRangeEquals", "(Lokio/ByteString;I[BII)Z", "(Lokio/ByteString;ILokio/ByteString;II)Z", "prefix", "commonStartsWith", "beginIndex", "endIndex", "commonSubstring", "(Lokio/ByteString;II)Lokio/ByteString;", "commonToAsciiLowercase", "(Lokio/ByteString;)Lokio/ByteString;", "commonToAsciiUppercase", "commonToByteArray", "commonToByteString", "([BII)Lokio/ByteString;", "commonToString", "commonUtf8", "Lokio/Buffer;", "buffer", "", "commonWrite", "(Lokio/ByteString;Lokio/Buffer;II)V", "", "HEX_DIGIT_CHARS", "[C", "getHEX_DIGIT_CHARS", "()[C", "okio"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/internal/ByteStringKt.class */
public final class ByteStringKt {
    @NotNull

    /* renamed from: a */
    private static final char[] f24221a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x000b, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x000b, code lost:
        continue;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int m11c(byte[] r4, int r5) {
        /*
            Method dump skipped, instructions count: 1226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.ByteStringKt.m11c(byte[], int):int");
    }

    /* renamed from: d */
    public static final void m10d(@NotNull ByteString commonWrite, @NotNull Buffer buffer, int i, int i2) {
        Intrinsics.m1830e(commonWrite, "$this$commonWrite");
        Intrinsics.m1830e(buffer, "buffer");
        buffer.m223C0(commonWrite.m172i(), i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static final int m9e(char c) {
        int i;
        if ('0' <= c && '9' >= c) {
            i = c - '0';
        } else {
            char c2 = 'a';
            if ('a' > c || 'f' < c) {
                c2 = 'A';
                if ('A' > c || 'F' < c) {
                    throw new IllegalArgumentException("Unexpected hex digit: " + c);
                }
            }
            i = (c - c2) + 10;
        }
        return i;
    }

    @NotNull
    /* renamed from: f */
    public static final char[] m8f() {
        return f24221a;
    }
}
