package okhttp3.internal;

import java.net.IDN;
import java.net.InetAddress;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import p092c.C3202f;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0005H\u0002\u001a\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH\u0002\u001a\f\u0010\r\u001a\u00020\u0001*\u00020\u0003H\u0002\u001a\f\u0010\u000e\u001a\u0004\u0018\u00010\u0003*\u00020\u0003¨\u0006\u000f"}, m4298d2 = {"decodeIpv4Suffix", "", "input", "", "pos", "", "limit", "address", "", "addressOffset", "decodeIpv6", "Ljava/net/InetAddress;", "inet6AddressToAscii", "containsInvalidHostnameAsciiCodes", "toCanonicalHost", "okhttp"}, m4297k = 2, m4296mv = {1, 4, 0})
/* loaded from: classes5-dex2jar.jar:okhttp3/internal/HostnamesKt.class */
public final class HostnamesKt {
    private static final boolean containsInvalidHostnameAsciiCodes(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (C18524p.m3854a(charAt, 31) <= 0 || C18524p.m3854a(charAt, 127) >= 0 || C18425p.m3949a((CharSequence) " #%/:?@[\\]", charAt, 0, false, 6) != -1) {
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
                if (C18524p.m3854a(charAt, 48) < 0 || C18524p.m3854a(charAt, 57) > 0) {
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
        if (r14 == 16) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x012d, code lost:
        if (r15 != (-1)) goto L49;
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
        C3202f c3202f = new C3202f();
        int i9 = 0;
        while (i9 < bArr.length) {
            if (i9 == i2) {
                c3202f.mo39141c(58);
                int i10 = i9 + i;
                i9 = i10;
                if (i10 == 16) {
                    c3202f.mo39141c(58);
                    i9 = i10;
                }
            } else {
                if (i9 > 0) {
                    c3202f.mo39141c(58);
                }
                c3202f.mo39134m((Util.and(bArr[i9], 255) << 8) | Util.and(bArr[i9 + 1], 255));
                i9 += 2;
            }
        }
        return c3202f.m39193r();
    }

    public static final String toCanonicalHost(String toCanonicalHost) {
        C18524p.m3840d(toCanonicalHost, "$this$toCanonicalHost");
        boolean z = false;
        if (C18425p.m3919c((CharSequence) toCanonicalHost, (CharSequence) ":", false)) {
            InetAddress decodeIpv6 = (!C18425p.m3957a(toCanonicalHost, "[", false) || !C18425p.m3954b(toCanonicalHost, "]", false)) ? decodeIpv6(toCanonicalHost, 0, toCanonicalHost.length()) : decodeIpv6(toCanonicalHost, 1, toCanonicalHost.length() - 1);
            if (decodeIpv6 == null) {
                return null;
            }
            byte[] address = decodeIpv6.getAddress();
            if (address.length == 16) {
                C18524p.m3843b(address, "address");
                return inet6AddressToAscii(address);
            } else if (address.length == 4) {
                return decodeIpv6.getHostAddress();
            } else {
                throw new AssertionError("Invalid IPv6 address: '" + toCanonicalHost + '\'');
            }
        }
        try {
            String ascii = IDN.toASCII(toCanonicalHost);
            C18524p.m3843b(ascii, "IDN.toASCII(host)");
            Locale locale = Locale.US;
            C18524p.m3843b(locale, "Locale.US");
            if (ascii == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String lowerCase = ascii.toLowerCase(locale);
            C18524p.m3843b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            if (lowerCase.length() == 0) {
                z = true;
            }
            if (z || containsInvalidHostnameAsciiCodes(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException e) {
            return null;
        }
    }
}
