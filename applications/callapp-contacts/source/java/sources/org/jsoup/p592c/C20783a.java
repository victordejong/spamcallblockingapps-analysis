package org.jsoup.p592c;

import io.bidmachine.protobuf.EventTypeExtended;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import org.jsoup.UncheckedIOException;
import org.jsoup.p590a.C20779c;
/* renamed from: org.jsoup.c.a */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/a.class */
public final class C20783a {

    /* renamed from: a */
    char[] f67300a;

    /* renamed from: b */
    Reader f67301b;

    /* renamed from: c */
    int f67302c;

    /* renamed from: d */
    int f67303d;

    /* renamed from: e */
    int f67304e;

    /* renamed from: f */
    int f67305f;

    /* renamed from: g */
    String[] f67306g;

    /* renamed from: h */
    private int f67307h;

    /* renamed from: i */
    private boolean f67308i;

    public C20783a(Reader reader) {
        this(reader, 32768);
    }

    public C20783a(Reader reader, int i) {
        this.f67305f = -1;
        this.f67306g = new String[512];
        C20779c.m507a(reader);
        C20779c.m503a(reader.markSupported());
        this.f67301b = reader;
        this.f67300a = new char[i > 32768 ? 32768 : i];
        m485a();
    }

    public C20783a(String str) {
        this(new StringReader(str), str.length());
    }

    /* renamed from: a */
    public static String m479a(char[] cArr, String[] strArr, int i, int i2) {
        String str;
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        if (i2 <= 0) {
            return "";
        }
        int i3 = i2 * 31;
        int i4 = 0;
        int i5 = i;
        while (i4 < i2) {
            i3 = (i3 * 31) + cArr[i5];
            i4++;
            i5++;
        }
        int i6 = i3 & EventTypeExtended.EVENT_TYPE_EXTENDED_AD_EXPIRED_VALUE;
        String str2 = strArr[i6];
        if (str2 == null) {
            str = new String(cArr, i, i2);
            strArr[i6] = str;
        } else if (m480a(cArr, i, i2, str2)) {
            return str2;
        } else {
            str = new String(cArr, i, i2);
            strArr[i6] = str;
        }
        return str;
    }

    /* renamed from: a */
    private static boolean m480a(char[] cArr, int i, int i2, String str) {
        if (i2 == str.length()) {
            int i3 = i;
            int i4 = 0;
            while (i2 != 0) {
                if (cArr[i3] != str.charAt(i4)) {
                    return false;
                }
                i3++;
                i2--;
                i4++;
            }
            return true;
        }
        return false;
    }

    /* renamed from: c */
    private int m473c(char c) {
        m485a();
        for (int i = this.f67304e; i < this.f67302c; i++) {
            if (c == this.f67300a[i]) {
                return i - this.f67304e;
            }
        }
        return -1;
    }

    /* renamed from: c */
    private boolean m472c(String str) {
        m485a();
        int length = str.length();
        if (length > this.f67302c - this.f67304e) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) != this.f67300a[this.f67304e + i]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: d */
    private boolean m469d(String str) {
        m485a();
        int length = str.length();
        if (length > this.f67302c - this.f67304e) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (Character.toUpperCase(str.charAt(i)) != Character.toUpperCase(this.f67300a[this.f67304e + i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: q */
    private boolean m455q() {
        return this.f67304e >= this.f67302c;
    }

    /* renamed from: a */
    public final int m483a(CharSequence charSequence) {
        m485a();
        char charAt = charSequence.charAt(0);
        int i = this.f67304e;
        while (i < this.f67302c) {
            int i2 = i;
            if (charAt != this.f67300a[i]) {
                int i3 = i;
                while (true) {
                    int i4 = i3 + 1;
                    i2 = i4;
                    if (i4 >= this.f67302c) {
                        break;
                    }
                    i3 = i4;
                    if (charAt == this.f67300a[i4]) {
                        i2 = i4;
                        break;
                    }
                }
            }
            i = i2 + 1;
            int length = (charSequence.length() + i) - 1;
            int i5 = this.f67302c;
            if (i2 < i5 && length <= i5) {
                int i6 = i;
                for (int i7 = 1; i6 < length && charSequence.charAt(i7) == this.f67300a[i6]; i7++) {
                    i6++;
                }
                if (i6 == length) {
                    return i2 - this.f67304e;
                }
            }
        }
        return -1;
    }

    /* renamed from: a */
    public final String m484a(char c) {
        int m473c = m473c(c);
        if (m473c != -1) {
            String m479a = m479a(this.f67300a, this.f67306g, this.f67304e, m473c);
            this.f67304e += m473c;
            return m479a;
        }
        return m461k();
    }

    /* renamed from: a */
    public final String m481a(char... cArr) {
        m485a();
        int i = this.f67304e;
        int i2 = this.f67302c;
        char[] cArr2 = this.f67300a;
        int i3 = i;
        loop0: while (i3 < i2) {
            for (char c : cArr) {
                if (cArr2[i3] == c) {
                    break loop0;
                }
            }
            i3++;
        }
        this.f67304e = i3;
        return i3 > i ? m479a(this.f67300a, this.f67306g, i, i3 - i) : "";
    }

    /* renamed from: a */
    public final void m485a() {
        int i;
        int i2;
        boolean z;
        if (!this.f67308i) {
            int i3 = this.f67304e;
            if (i3 < this.f67303d) {
                return;
            }
            int i4 = this.f67305f;
            if (i4 != -1) {
                i = i3 - i4;
                i3 = i4;
            } else {
                i = 0;
            }
            try {
                long j = i3;
                long skip = this.f67301b.skip(j);
                this.f67301b.mark(32768);
                int i5 = 0;
                while (true) {
                    i2 = i5;
                    z = true;
                    if (i2 > 1024) {
                        break;
                    }
                    Reader reader = this.f67301b;
                    char[] cArr = this.f67300a;
                    int read = reader.read(cArr, i2, cArr.length - i2);
                    if (read == -1) {
                        this.f67308i = true;
                    }
                    if (read <= 0) {
                        break;
                    }
                    i5 = i2 + read;
                }
                this.f67301b.reset();
                if (i2 <= 0) {
                    return;
                }
                if (skip != j) {
                    z = false;
                }
                C20779c.m503a(z);
                this.f67302c = i2;
                this.f67307h += i3;
                this.f67304e = i;
                if (this.f67305f != -1) {
                    this.f67305f = 0;
                }
                int i6 = i2;
                if (i2 > 24576) {
                    i6 = 24576;
                }
                this.f67303d = i6;
            } catch (IOException e) {
                throw new UncheckedIOException(e);
            }
        }
    }

    /* renamed from: a */
    public final boolean m482a(String str) {
        m485a();
        if (m472c(str)) {
            this.f67304e += str.length();
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final int m478b() {
        return this.f67307h + this.f67304e;
    }

    /* renamed from: b */
    public final String m475b(char... cArr) {
        m485a();
        int i = this.f67304e;
        int i2 = this.f67302c;
        char[] cArr2 = this.f67300a;
        int i3 = i;
        while (i3 < i2 && Arrays.binarySearch(cArr, cArr2[i3]) < 0) {
            i3++;
        }
        this.f67304e = i3;
        return i3 > i ? m479a(this.f67300a, this.f67306g, i, i3 - i) : "";
    }

    /* renamed from: b */
    public final boolean m477b(char c) {
        return !m474c() && this.f67300a[this.f67304e] == c;
    }

    /* renamed from: b */
    public final boolean m476b(String str) {
        if (m469d(str)) {
            this.f67304e += str.length();
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public final boolean m474c() {
        m485a();
        return this.f67304e >= this.f67302c;
    }

    /* renamed from: c */
    public final boolean m471c(char... cArr) {
        if (m474c()) {
            return false;
        }
        m485a();
        char c = this.f67300a[this.f67304e];
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public final char m470d() {
        m485a();
        if (m455q()) {
            return (char) 65535;
        }
        return this.f67300a[this.f67304e];
    }

    /* renamed from: d */
    public final boolean m468d(char[] cArr) {
        m485a();
        return !m474c() && Arrays.binarySearch(cArr, this.f67300a[this.f67304e]) >= 0;
    }

    /* renamed from: e */
    public final char m467e() {
        m485a();
        char c = m455q() ? (char) 65535 : this.f67300a[this.f67304e];
        this.f67304e++;
        return c;
    }

    /* renamed from: f */
    public final void m466f() {
        int i = this.f67304e;
        if (i > 0) {
            this.f67304e = i - 1;
            return;
        }
        throw new UncheckedIOException(new IOException("No buffer left to unconsume"));
    }

    /* renamed from: g */
    public final void m465g() {
        this.f67304e++;
    }

    /* renamed from: h */
    public final void m464h() {
        int i = this.f67305f;
        if (i != -1) {
            this.f67304e = i;
            this.f67305f = -1;
            return;
        }
        throw new UncheckedIOException(new IOException("Mark invalid"));
    }

    /* renamed from: i */
    public final String m463i() {
        char c;
        int i = this.f67304e;
        int i2 = this.f67302c;
        char[] cArr = this.f67300a;
        int i3 = i;
        while (i3 < i2 && (c = cArr[i3]) != 0 && c != '&' && c != '<') {
            i3++;
        }
        this.f67304e = i3;
        return i3 > i ? m479a(this.f67300a, this.f67306g, i, i3 - i) : "";
    }

    /* renamed from: j */
    public final String m462j() {
        char c;
        m485a();
        int i = this.f67304e;
        int i2 = this.f67302c;
        char[] cArr = this.f67300a;
        int i3 = i;
        while (i3 < i2 && (c = cArr[i3]) != 0 && c != ' ' && c != '/' && c != '<' && c != '>' && c != '\t' && c != '\n' && c != '\f' && c != '\r') {
            i3++;
        }
        this.f67304e = i3;
        return i3 > i ? m479a(this.f67300a, this.f67306g, i, i3 - i) : "";
    }

    /* renamed from: k */
    public final String m461k() {
        m485a();
        char[] cArr = this.f67300a;
        String[] strArr = this.f67306g;
        int i = this.f67304e;
        String m479a = m479a(cArr, strArr, i, this.f67302c - i);
        this.f67304e = this.f67302c;
        return m479a;
    }

    /* renamed from: l */
    public final String m460l() {
        char c;
        m485a();
        int i = this.f67304e;
        while (true) {
            int i2 = this.f67304e;
            if (i2 >= this.f67302c || (((c = this.f67300a[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.f67304e++;
        }
        return m479a(this.f67300a, this.f67306g, i, this.f67304e - i);
    }

    /* renamed from: m */
    public final String m459m() {
        char c;
        m485a();
        int i = this.f67304e;
        while (true) {
            int i2 = this.f67304e;
            if (i2 >= this.f67302c || (((c = this.f67300a[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.f67304e++;
        }
        while (!m455q()) {
            char[] cArr = this.f67300a;
            int i3 = this.f67304e;
            char c2 = cArr[i3];
            if (c2 < '0' || c2 > '9') {
                break;
            }
            this.f67304e = i3 + 1;
        }
        return m479a(this.f67300a, this.f67306g, i, this.f67304e - i);
    }

    /* renamed from: n */
    public final String m458n() {
        int i;
        char c;
        m485a();
        int i2 = this.f67304e;
        while (true) {
            i = this.f67304e;
            if (i >= this.f67302c || (((c = this.f67300a[i]) < '0' || c > '9') && ((c < 'A' || c > 'F') && (c < 'a' || c > 'f')))) {
                break;
            }
            this.f67304e = i + 1;
        }
        return m479a(this.f67300a, this.f67306g, i2, i - i2);
    }

    /* renamed from: o */
    public final String m457o() {
        int i;
        char c;
        m485a();
        int i2 = this.f67304e;
        while (true) {
            i = this.f67304e;
            if (i >= this.f67302c || (c = this.f67300a[i]) < '0' || c > '9') {
                break;
            }
            this.f67304e = i + 1;
        }
        return m479a(this.f67300a, this.f67306g, i2, i - i2);
    }

    /* renamed from: p */
    public final boolean m456p() {
        if (m474c()) {
            return false;
        }
        char c = this.f67300a[this.f67304e];
        if (c >= 'A' && c <= 'Z') {
            return true;
        }
        return (c >= 'a' && c <= 'z') || Character.isLetter(c);
    }

    public final String toString() {
        if (this.f67302c - this.f67304e < 0) {
            return "";
        }
        char[] cArr = this.f67300a;
        int i = this.f67304e;
        return new String(cArr, i, this.f67302c - i);
    }
}
