package okhttp3.internal;

import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.net.IDN;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Buffer;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��&\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H\u0002\u001a\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\f\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\f\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u0003¨\u0006\u000f"}, m400d2 = {"decodeIpv4Suffix", "", "input", "", POBConstants.KEY_POSITION, "", "limit", "address", "", "addressOffset", "decodeIpv6", "Ljava/net/InetAddress;", "inet6AddressToAscii", "containsInvalidHostnameAsciiCodes", "toCanonicalHost", "okhttp"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okhttp3/internal/HostnamesKt.class */
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (Intrinsics.compare((int) charAt, 31) <= 0 || Intrinsics.compare((int) charAt, 127) >= 0 || StringsKt.indexOf$default((CharSequence) " #%/:?@[\\]", charAt, 0, false, 6, (Object) null) != -1) {
                return true;
            }
        }
        return false;
    }

    private static final boolean decodeIpv4Suffix(String str, int i, int i2, byte[] bArr, int i3) {
        int i4 = i3;
        int i5 = i;
        while (true) {
            boolean z = false;
            if (i5 >= i2) {
                if (i4 == i3 + 4) {
                    z = true;
                }
                return z;
            } else if (i4 == bArr.length) {
                return false;
            } else {
                int i6 = i5;
                if (i4 != i3) {
                    if (str.charAt(i5) != '.') {
                        return false;
                    }
                    i6 = i5 + 1;
                }
                i5 = i6;
                int i7 = 0;
                while (i5 < i2) {
                    char charAt = str.charAt(i5);
                    if (Intrinsics.compare((int) charAt, 48) < 0 || Intrinsics.compare((int) charAt, 57) > 0) {
                        break;
                    } else if (i7 == 0 && i6 != i5) {
                        return false;
                    } else {
                        i7 = ((i7 * 10) + charAt) - 48;
                        if (i7 > 255) {
                            return false;
                        }
                        i5++;
                    }
                }
                if (i5 - i6 == 0) {
                    return false;
                }
                bArr[i4] = (byte) i7;
                i4++;
            }
        }
    }

    private static final InetAddress decodeIpv6(String str, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int parseHexDigit;
        byte[] bArr = new byte[16];
        int i8 = 0;
        int i9 = -1;
        int i10 = -1;
        int i11 = i;
        while (true) {
            i3 = i8;
            i4 = i9;
            if (i11 >= i2) {
                break;
            } else if (i8 == 16) {
                return null;
            } else {
                int i12 = i11 + 2;
                if (i12 <= i2 && StringsKt.startsWith$default(str, "::", i11, false, 4, (Object) null)) {
                    if (i9 != -1) {
                        return null;
                    }
                    i3 = i8 + 2;
                    if (i12 == i2) {
                        i4 = i3;
                        break;
                    }
                    i9 = i3;
                    i8 = i3;
                    i5 = i12;
                    i11 = i5;
                    i6 = 0;
                    while (i11 < i2) {
                        i6 = (i6 << 4) + parseHexDigit;
                        i11++;
                    }
                    i7 = i11 - i5;
                    return i7 == 0 ? null : null;
                }
                i5 = i11;
                if (i8 != 0) {
                    if (StringsKt.startsWith$default(str, ":", i11, false, 4, (Object) null)) {
                        i5 = i11 + 1;
                    } else if (!StringsKt.startsWith$default(str, ".", i11, false, 4, (Object) null) || !decodeIpv4Suffix(str, i10, i2, bArr, i8 - 2)) {
                        return null;
                    } else {
                        i3 = i8 + 2;
                        i4 = i9;
                    }
                }
                i11 = i5;
                i6 = 0;
                while (i11 < i2 && (parseHexDigit = Util.parseHexDigit(str.charAt(i11))) != -1) {
                    i6 = (i6 << 4) + parseHexDigit;
                    i11++;
                }
                i7 = i11 - i5;
                if (i7 == 0 && i7 <= 4) {
                    int i13 = i8 + 1;
                    bArr[i8] = (byte) ((i6 >>> 8) & 255);
                    i8 = i13 + 1;
                    bArr[i13] = (byte) (i6 & 255);
                    i10 = i5;
                }
            }
        }
        if (i3 != 16) {
            if (i4 == -1) {
                return null;
            }
            int i14 = i3 - i4;
            System.arraycopy(bArr, i4, bArr, 16 - i14, i14);
            Arrays.fill(bArr, i4, (16 - i3) + i4, (byte) 0);
        }
        return InetAddress.getByAddress(bArr);
    }

    private static final String inet6AddressToAscii(byte[] bArr) {
        int i;
        int i2 = -1;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            i = i4;
            if (i3 >= bArr.length) {
                break;
            }
            int i5 = i3;
            while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                i5 += 2;
            }
            int i6 = i5 - i3;
            int i7 = i2;
            int i8 = i;
            if (i6 > i) {
                i7 = i2;
                i8 = i;
                if (i6 >= 4) {
                    i8 = i6;
                    i7 = i3;
                }
            }
            i3 = i5 + 2;
            i2 = i7;
            i4 = i8;
        }
        Buffer buffer = new Buffer();
        int i9 = 0;
        while (i9 < bArr.length) {
            if (i9 == i2) {
                buffer.writeByte(58);
                int i10 = i9 + i;
                i9 = i10;
                if (i10 == 16) {
                    buffer.writeByte(58);
                    i9 = i10;
                }
            } else {
                if (i9 > 0) {
                    buffer.writeByte(58);
                }
                buffer.writeHexadecimalUnsignedLong((Util.and(bArr[i9], 255) << 8) | Util.and(bArr[i9 + 1], 255));
                i9 += 2;
            }
        }
        return buffer.readUtf8();
    }

    public static final String toCanonicalHost(String toCanonicalHost) {
        Intrinsics.checkNotNullParameter(toCanonicalHost, "$this$toCanonicalHost");
        boolean z = false;
        if (StringsKt.contains$default((CharSequence) toCanonicalHost, (CharSequence) ":", false, 2, (Object) null)) {
            InetAddress decodeIpv6 = (!StringsKt.startsWith$default(toCanonicalHost, "[", false, 2, (Object) null) || !StringsKt.endsWith$default(toCanonicalHost, "]", false, 2, (Object) null)) ? decodeIpv6(toCanonicalHost, 0, toCanonicalHost.length()) : decodeIpv6(toCanonicalHost, 1, toCanonicalHost.length() - 1);
            if (decodeIpv6 == null) {
                return null;
            }
            byte[] address = decodeIpv6.getAddress();
            if (address.length == 16) {
                Intrinsics.checkNotNullExpressionValue(address, "address");
                return inet6AddressToAscii(address);
            } else if (address.length == 4) {
                return decodeIpv6.getHostAddress();
            } else {
                throw new AssertionError("Invalid IPv6 address: '" + toCanonicalHost + '\'');
            }
        }
        try {
            String ascii = IDN.toASCII(toCanonicalHost);
            Intrinsics.checkNotNullExpressionValue(ascii, "IDN.toASCII(host)");
            Locale locale = Locale.US;
            Intrinsics.checkNotNullExpressionValue(locale, "Locale.US");
            if (ascii == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = ascii.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            if (lowerCase.length() == 0) {
                z = true;
            }
            if (z) {
                return null;
            }
            if (containsInvalidHostnameAsciiCodes(lowerCase)) {
                lowerCase = null;
            }
            return lowerCase;
        } catch (IllegalArgumentException e) {
            return null;
        }
    }
}
