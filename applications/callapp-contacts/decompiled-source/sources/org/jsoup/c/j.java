package org.jsoup.c;

import com.sinch.verification.core.verification.VerificationLanguage;
import org.jsoup.a.c;
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/j.class */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private String f39246a;

    /* renamed from: b  reason: collision with root package name */
    private int f39247b = 0;

    public j(String str) {
        c.a((Object) str);
        this.f39246a = str;
    }

    public static String e(String str) {
        StringBuilder a2 = org.jsoup.b.c.a();
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        char c2 = 0;
        while (i < length) {
            char c3 = charArray[i];
            if (c3 != '\\') {
                a2.append(c3);
            } else if (c2 != 0 && c2 == '\\') {
                a2.append(c3);
            }
            i++;
            c2 = c3;
        }
        return org.jsoup.b.c.a(a2);
    }

    private int h() {
        return this.f39246a.length() - this.f39247b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0041, code lost:
        if (r7 != '\\') goto L_0x0044;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a(char r5, char r6) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.c.j.a(char, char):java.lang.String");
    }

    public final boolean a() {
        return h() == 0;
    }

    public final boolean a(String str) {
        return this.f39246a.regionMatches(true, this.f39247b, str, 0, str.length());
    }

    public final boolean a(String... strArr) {
        for (String str : strArr) {
            if (a(str)) {
                return true;
            }
        }
        return false;
    }

    public final String b(String... strArr) {
        int i = this.f39247b;
        while (!a() && !a(strArr)) {
            this.f39247b++;
        }
        return this.f39246a.substring(i, this.f39247b);
    }

    public final boolean b() {
        return !a() && Character.isLetterOrDigit(this.f39246a.charAt(this.f39247b));
    }

    public final boolean b(String str) {
        if (!a(str)) {
            return false;
        }
        this.f39247b += str.length();
        return true;
    }

    public final char c() {
        String str = this.f39246a;
        int i = this.f39247b;
        this.f39247b = i + 1;
        return str.charAt(i);
    }

    public final void c(String str) {
        if (a(str)) {
            int length = str.length();
            if (length <= h()) {
                this.f39247b += length;
                return;
            }
            throw new IllegalStateException("Queue not long enough to consume sequence");
        }
        throw new IllegalStateException("Queue did not match expected sequence");
    }

    public final String d(String str) {
        String str2;
        int indexOf = this.f39246a.indexOf(str, this.f39247b);
        if (indexOf != -1) {
            str2 = this.f39246a.substring(this.f39247b, indexOf);
            this.f39247b += str2.length();
        } else {
            str2 = g();
        }
        b(str);
        return str2;
    }

    public final boolean d() {
        boolean z = false;
        while (true) {
            if (!(!a() && org.jsoup.b.c.b(this.f39246a.charAt(this.f39247b)))) {
                return z;
            }
            this.f39247b++;
            z = true;
        }
    }

    public final String e() {
        int i = this.f39247b;
        while (!a() && (b() || a("*|", "|", "_", VerificationLanguage.REGION_PREFIX))) {
            this.f39247b++;
        }
        return this.f39246a.substring(i, this.f39247b);
    }

    public final String f() {
        int i = this.f39247b;
        while (!a()) {
            if (!b()) {
                boolean z = false;
                if (!a()) {
                    int i2 = 0;
                    while (true) {
                        z = false;
                        if (i2 >= 2) {
                            break;
                        } else if (this.f39246a.charAt(this.f39247b) == new char[]{'-', '_'}[i2]) {
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
            this.f39247b++;
        }
        return this.f39246a.substring(i, this.f39247b);
    }

    public final String g() {
        String str = this.f39246a;
        String substring = str.substring(this.f39247b, str.length());
        this.f39247b = this.f39246a.length();
        return substring;
    }

    public final String toString() {
        return this.f39246a.substring(this.f39247b);
    }
}
