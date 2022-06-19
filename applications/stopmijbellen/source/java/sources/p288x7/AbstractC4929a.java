package p288x7;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.conn.ssl.X509HostnameVerifier;
/* renamed from: x7.a */
/* loaded from: classes2-dex2jar.jar:x7/a.class */
public abstract class AbstractC4929a implements X509HostnameVerifier {

    /* renamed from: a */
    public static final Pattern f15039a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");

    /* renamed from: b */
    public static final String[] f15040b;

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", "ne", "net", "or", "org"};
        f15040b = strArr;
        Arrays.sort(strArr);
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, X509Certificate x509Certificate) throws SSLException {
        String[] strArr;
        Collection<List<?>> collection;
        String str2;
        int i;
        char[] cArr;
        int i2;
        int i3;
        C4930b c4930b = new C4930b(x509Certificate.getSubjectX500Principal());
        c4930b.f15043c = 0;
        c4930b.f15044d = 0;
        c4930b.f15045e = 0;
        c4930b.f15046f = 0;
        c4930b.f15047g = c4930b.f15041a.toCharArray();
        ArrayList emptyList = Collections.emptyList();
        String m240c = c4930b.m240c();
        List list = emptyList;
        String str3 = m240c;
        if (m240c != null) {
            while (true) {
                int i4 = c4930b.f15043c;
                int i5 = c4930b.f15042b;
                emptyList = list;
                if (i4 >= i5) {
                    break;
                }
                char c = c4930b.f15047g[i4];
                if (c == '\"') {
                    int i6 = i4 + 1;
                    c4930b.f15043c = i6;
                    c4930b.f15044d = i6;
                    c4930b.f15045e = i6;
                    while (true) {
                        int i7 = c4930b.f15043c;
                        if (i7 == c4930b.f15042b) {
                            StringBuilder m8752j = C0082b.m8752j("Unexpected end of DN: ");
                            m8752j.append(c4930b.f15041a);
                            throw new IllegalStateException(m8752j.toString());
                        }
                        char[] cArr2 = c4930b.f15047g;
                        if (cArr2[i7] == '\"') {
                            c4930b.f15043c = i7 + 1;
                            while (true) {
                                int i8 = c4930b.f15043c;
                                if (i8 >= c4930b.f15042b || c4930b.f15047g[i8] != ' ') {
                                    break;
                                }
                                c4930b.f15043c = i8 + 1;
                            }
                            char[] cArr3 = c4930b.f15047g;
                            int i9 = c4930b.f15044d;
                            str2 = new String(cArr3, i9, c4930b.f15045e - i9);
                        } else {
                            if (cArr2[i7] == '\\') {
                                cArr2[c4930b.f15045e] = c4930b.m241b();
                            } else {
                                cArr2[c4930b.f15045e] = cArr2[i7];
                            }
                            c4930b.f15043c++;
                            c4930b.f15045e++;
                        }
                    }
                } else if (c != '#') {
                    if (c == '+' || c == ',' || c == ';') {
                        str2 = "";
                    } else {
                        c4930b.f15044d = i4;
                        c4930b.f15045e = i4;
                        while (true) {
                            int i10 = c4930b.f15043c;
                            if (i10 >= c4930b.f15042b) {
                                char[] cArr4 = c4930b.f15047g;
                                int i11 = c4930b.f15044d;
                                str2 = new String(cArr4, i11, c4930b.f15045e - i11);
                                break;
                            }
                            cArr = c4930b.f15047g;
                            char c2 = cArr[i10];
                            if (c2 == ' ') {
                                int i12 = c4930b.f15045e;
                                c4930b.f15046f = i12;
                                c4930b.f15043c = i10 + 1;
                                c4930b.f15045e = i12 + 1;
                                cArr[i12] = (char) 32;
                                while (true) {
                                    i2 = c4930b.f15043c;
                                    i3 = c4930b.f15042b;
                                    if (i2 >= i3) {
                                        break;
                                    }
                                    char[] cArr5 = c4930b.f15047g;
                                    if (cArr5[i2] != ' ') {
                                        break;
                                    }
                                    int i13 = c4930b.f15045e;
                                    c4930b.f15045e = i13 + 1;
                                    cArr5[i13] = (char) 32;
                                    c4930b.f15043c = i2 + 1;
                                }
                                if (i2 == i3) {
                                    break;
                                }
                                char[] cArr6 = c4930b.f15047g;
                                if (cArr6[i2] == ',' || cArr6[i2] == '+' || cArr6[i2] == ';') {
                                    break;
                                }
                            } else if (c2 == ';') {
                                break;
                            } else if (c2 == '\\') {
                                int i14 = c4930b.f15045e;
                                c4930b.f15045e = i14 + 1;
                                cArr[i14] = c4930b.m241b();
                                c4930b.f15043c++;
                            } else if (c2 == '+' || c2 == ',') {
                                break;
                            } else {
                                int i15 = c4930b.f15045e;
                                c4930b.f15045e = i15 + 1;
                                cArr[i15] = cArr[i10];
                                c4930b.f15043c = i10 + 1;
                            }
                        }
                        int i16 = c4930b.f15044d;
                        str2 = new String(cArr, i16, c4930b.f15045e - i16);
                    }
                } else if (i4 + 4 >= i5) {
                    StringBuilder m8752j2 = C0082b.m8752j("Unexpected end of DN: ");
                    m8752j2.append(c4930b.f15041a);
                    throw new IllegalStateException(m8752j2.toString());
                } else {
                    c4930b.f15044d = i4;
                    c4930b.f15043c = i4 + 1;
                    while (true) {
                        i = c4930b.f15043c;
                        if (i == c4930b.f15042b) {
                            break;
                        }
                        char[] cArr7 = c4930b.f15047g;
                        if (cArr7[i] == '+' || cArr7[i] == ',' || cArr7[i] == ';') {
                            break;
                        } else if (cArr7[i] == ' ') {
                            c4930b.f15045e = i;
                            c4930b.f15043c = i + 1;
                            while (true) {
                                int i17 = c4930b.f15043c;
                                if (i17 >= c4930b.f15042b || c4930b.f15047g[i17] != ' ') {
                                    break;
                                }
                                c4930b.f15043c = i17 + 1;
                            }
                        } else {
                            if (cArr7[i] >= 'A' && cArr7[i] <= 'F') {
                                cArr7[i] = (char) (cArr7[i] + ' ');
                            }
                            c4930b.f15043c = i + 1;
                        }
                    }
                    c4930b.f15045e = i;
                    int i18 = c4930b.f15045e;
                    int i19 = c4930b.f15044d;
                    int i20 = i18 - i19;
                    if (i20 < 5 || (i20 & 1) == 0) {
                        break;
                    }
                    int i21 = i20 / 2;
                    byte[] bArr = new byte[i21];
                    int i22 = i19 + 1;
                    for (int i23 = 0; i23 < i21; i23++) {
                        bArr[i23] = (byte) c4930b.m242a(i22);
                        i22 += 2;
                    }
                    str2 = new String(c4930b.f15047g, c4930b.f15044d, i20);
                }
                emptyList = list;
                if ("cn".equalsIgnoreCase(str3)) {
                    emptyList = list;
                    if (list.isEmpty()) {
                        emptyList = new ArrayList();
                    }
                    emptyList.add(str2);
                }
                int i24 = c4930b.f15043c;
                if (i24 >= c4930b.f15042b) {
                    break;
                }
                char[] cArr8 = c4930b.f15047g;
                if (cArr8[i24] != ',' && cArr8[i24] != ';' && cArr8[i24] != '+') {
                    StringBuilder m8752j3 = C0082b.m8752j("Malformed DN: ");
                    m8752j3.append(c4930b.f15041a);
                    throw new IllegalStateException(m8752j3.toString());
                }
                c4930b.f15043c = i24 + 1;
                str3 = c4930b.m240c();
                if (str3 == null) {
                    StringBuilder m8752j4 = C0082b.m8752j("Malformed DN: ");
                    m8752j4.append(c4930b.f15041a);
                    throw new IllegalStateException(m8752j4.toString());
                }
                list = emptyList;
            }
            StringBuilder m8752j5 = C0082b.m8752j("Unexpected end of DN: ");
            m8752j5.append(c4930b.f15041a);
            throw new IllegalStateException(m8752j5.toString());
        }
        if (!emptyList.isEmpty()) {
            strArr = new String[emptyList.size()];
            emptyList.toArray(strArr);
        } else {
            strArr = null;
        }
        LinkedList linkedList = new LinkedList();
        try {
            collection = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException e) {
            Logger.getLogger(AbstractC4929a.class.getName()).log(Level.FINE, "Error parsing certificate.", (Throwable) e);
            collection = null;
        }
        if (collection != null) {
            for (List<?> list2 : collection) {
                if (((Integer) list2.get(0)).intValue() == 2) {
                    linkedList.add((String) list2.get(1));
                }
            }
        }
        String[] strArr2 = null;
        if (!linkedList.isEmpty()) {
            strArr2 = new String[linkedList.size()];
            linkedList.toArray(strArr2);
        }
        verify(str, strArr, strArr2);
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, SSLSocket sSLSocket) throws IOException {
        Objects.requireNonNull(str, "host to verify is null");
        verify(str, (X509Certificate) sSLSocket.getSession().getPeerCertificates()[0]);
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier, javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException e) {
            return false;
        }
    }
}
