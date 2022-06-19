package org.jsoup.p592c;

import com.sinch.verification.core.verification.VerificationLanguage;
import org.jsoup.p590a.C20779c;
import org.jsoup.p591b.C20782c;
/* renamed from: org.jsoup.c.j */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/j.class */
public final class C20827j {

    /* renamed from: a */
    private String f67415a;

    /* renamed from: b */
    private int f67416b = 0;

    public C20827j(String str) {
        C20779c.m507a((Object) str);
        this.f67415a = str;
    }

    /* renamed from: e */
    public static String m349e(String str) {
        StringBuilder m496a = C20782c.m496a();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        char c = 0;
        while (true) {
            char c2 = c;
            if (i < length) {
                char c3 = charArray[i];
                if (c3 != '\\') {
                    m496a.append(c3);
                } else if (c2 != 0 && c2 == '\\') {
                    m496a.append(c3);
                }
                i++;
                c = c3;
            } else {
                return C20782c.m491a(m496a);
            }
        }
    }

    /* renamed from: h */
    private int m346h() {
        return this.f67415a.length() - this.f67416b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0041, code lost:
        if (r7 != '\\') goto L9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m360a(char r5, char r6) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.p592c.C20827j.m360a(char, char):java.lang.String");
    }

    /* renamed from: a */
    public final boolean m361a() {
        return m346h() == 0;
    }

    /* renamed from: a */
    public final boolean m359a(String str) {
        return this.f67415a.regionMatches(true, this.f67416b, str, 0, str.length());
    }

    /* renamed from: a */
    public final boolean m358a(String... strArr) {
        for (String str : strArr) {
            if (m359a(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final String m355b(String... strArr) {
        int i = this.f67416b;
        while (!m361a() && !m358a(strArr)) {
            this.f67416b++;
        }
        return this.f67415a.substring(i, this.f67416b);
    }

    /* renamed from: b */
    public final boolean m357b() {
        return !m361a() && Character.isLetterOrDigit(this.f67415a.charAt(this.f67416b));
    }

    /* renamed from: b */
    public final boolean m356b(String str) {
        if (m359a(str)) {
            this.f67416b += str.length();
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public final char m354c() {
        String str = this.f67415a;
        int i = this.f67416b;
        this.f67416b = i + 1;
        return str.charAt(i);
    }

    /* renamed from: c */
    public final void m353c(String str) {
        if (m359a(str)) {
            int length = str.length();
            if (length > m346h()) {
                throw new IllegalStateException("Queue not long enough to consume sequence");
            }
            this.f67416b += length;
            return;
        }
        throw new IllegalStateException("Queue did not match expected sequence");
    }

    /* renamed from: d */
    public final String m351d(String str) {
        String str2;
        int indexOf = this.f67415a.indexOf(str, this.f67416b);
        if (indexOf != -1) {
            str2 = this.f67415a.substring(this.f67416b, indexOf);
            this.f67416b += str2.length();
        } else {
            str2 = m347g();
        }
        m356b(str);
        return str2;
    }

    /* renamed from: d */
    public final boolean m352d() {
        boolean z = false;
        while (true) {
            boolean z2 = z;
            if (!m361a() && C20782c.m488b(this.f67415a.charAt(this.f67416b))) {
                this.f67416b++;
                z = true;
            } else {
                return z2;
            }
        }
    }

    /* renamed from: e */
    public final String m350e() {
        int i = this.f67416b;
        while (!m361a() && (m357b() || m358a("*|", "|", "_", VerificationLanguage.REGION_PREFIX))) {
            this.f67416b++;
        }
        return this.f67415a.substring(i, this.f67416b);
    }

    /* renamed from: f */
    public final String m348f() {
        int i = this.f67416b;
        while (!m361a()) {
            if (!m357b()) {
                boolean z = false;
                if (!m361a()) {
                    int i2 = 0;
                    while (true) {
                        z = false;
                        if (i2 >= 2) {
                            break;
                        } else if (this.f67415a.charAt(this.f67416b) == new char[]{'-', '_'}[i2]) {
                            z = true;
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
                if (!z) {
                    break;
                }
            }
            this.f67416b++;
        }
        return this.f67415a.substring(i, this.f67416b);
    }

    /* renamed from: g */
    public final String m347g() {
        String str = this.f67415a;
        String substring = str.substring(this.f67416b, str.length());
        this.f67416b = this.f67415a.length();
        return substring;
    }

    public final String toString() {
        return this.f67415a.substring(this.f67416b);
    }
}
