package okhttp3.internal;

import c.f;
import java.net.IDN;
import java.net.InetAddress;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H\u0002\u001a\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\f\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\f\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u0003¨\u0006\u000f"}, d2 = {"decodeIpv4Suffix", "", "input", "", "pos", "", "limit", "address", "", "addressOffset", "decodeIpv6", "Ljava/net/InetAddress;", "inet6AddressToAscii", "containsInvalidHostnameAsciiCodes", "toCanonicalHost", "okhttp"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/HostnamesKt.class */
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (p.a(charAt, 31) <= 0 || p.a(charAt, 127) >= 0 || kotlin.h.p.a((CharSequence) " #%/:?@[\\]", charAt, 0, false, 6) != -1) {
                return true;
            }
        }
        return false;
    }

    private static final boolean decodeIpv4Suffix(String str, int i, int i2, byte[] bArr, int i3) {
        int i4 = i3;
        int i5 = i;
        while (i5 < i2) {
            if (i4 == bArr.length) {
                return false;
            }
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
                if (p.a(charAt, 48) < 0 || p.a(charAt, 57) > 0) {
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
        return i4 == i3 + 4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x0127, code lost:
        if (r14 == 16) goto L_0x0153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x012d, code lost:
        if (r15 != (-1)) goto L_0x0132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0130, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0132, code lost:
        r0 = r14 - r15;
        java.lang.System.arraycopy(r0, r15, r0, 16 - r0, r0);
        java.util.Arrays.fill(r0, r15, (16 - r14) + r15, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0157, code lost:
        return java.net.InetAddress.getByAddress(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final java.net.InetAddress decodeIpv6(java.lang.String r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.HostnamesKt.decodeIpv6(java.lang.String, int, int):java.net.InetAddress");
    }

    private static final String inet6AddressToAscii(byte[] bArr) {
        int i;
        int i2 = 0;
        int i3 = -1;
        int i4 = 0;
        for (int i5 = 0; i5 < bArr.length; i5 = i + 2) {
            i = i5;
            while (i < 16 && bArr[i] == 0 && bArr[i + 1] == 0) {
                i += 2;
            }
            int i6 = i - i5;
            i3 = i3;
            i4 = i4;
            if (i6 > i4) {
                i3 = i3;
                i4 = i4;
                if (i6 >= 4) {
                    i4 = i6;
                    i3 = i5;
                }
            }
        }
        f fVar = new f();
        while (i2 < bArr.length) {
            if (i2 == i3) {
                fVar.c(58);
                int i7 = i2 + i4;
                i2 = i7;
                if (i7 == 16) {
                    fVar.c(58);
                    i2 = i7;
                }
            } else {
                if (i2 > 0) {
                    fVar.c(58);
                }
                fVar.m((Util.and(bArr[i2], 255) << 8) | Util.and(bArr[i2 + 1], 255));
                i2 += 2;
            }
        }
        return fVar.r();
    }

    public static final String toCanonicalHost(String toCanonicalHost) {
        p.d(toCanonicalHost, "$this$toCanonicalHost");
        boolean z = false;
        if (kotlin.h.p.c((CharSequence) toCanonicalHost, (CharSequence) ":", false)) {
            InetAddress decodeIpv6 = (!kotlin.h.p.a(toCanonicalHost, "[", false) || !kotlin.h.p.b(toCanonicalHost, "]", false)) ? decodeIpv6(toCanonicalHost, 0, toCanonicalHost.length()) : decodeIpv6(toCanonicalHost, 1, toCanonicalHost.length() - 1);
            if (decodeIpv6 == null) {
                return null;
            }
            byte[] address = decodeIpv6.getAddress();
            if (address.length == 16) {
                p.b(address, "address");
                return inet6AddressToAscii(address);
            } else if (address.length == 4) {
                return decodeIpv6.getHostAddress();
            } else {
                throw new AssertionError("Invalid IPv6 address: '" + toCanonicalHost + '\'');
            }
        } else {
            try {
                String ascii = IDN.toASCII(toCanonicalHost);
                p.b(ascii, "IDN.toASCII(host)");
                Locale locale = Locale.US;
                p.b(locale, "Locale.US");
                if (ascii != null) {
                    String lowerCase = ascii.toLowerCase(locale);
                    p.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                    if (lowerCase.length() == 0) {
                        z = true;
                    }
                    if (!z && !containsInvalidHostnameAsciiCodes(lowerCase)) {
                        return lowerCase;
                    }
                    return null;
                }
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            } catch (IllegalArgumentException e) {
                return null;
            }
        }
    }
}
