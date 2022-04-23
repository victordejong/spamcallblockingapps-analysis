package org.jsoup.c;

import io.bidmachine.protobuf.EventTypeExtended;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import org.jsoup.UncheckedIOException;
import org.jsoup.a.c;
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    char[] f39208a;

    /* renamed from: b  reason: collision with root package name */
    Reader f39209b;

    /* renamed from: c  reason: collision with root package name */
    int f39210c;

    /* renamed from: d  reason: collision with root package name */
    int f39211d;
    int e;
    int f;
    String[] g;
    private int h;
    private boolean i;

    public a(Reader reader) {
        this(reader, 32768);
    }

    public a(Reader reader, int i) {
        this.f = -1;
        this.g = new String[512];
        c.a(reader);
        c.a(reader.markSupported());
        this.f39209b = reader;
        this.f39208a = new char[i > 32768 ? 32768 : i];
        a();
    }

    public a(String str) {
        this(new StringReader(str), str.length());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(char[] cArr, String[] strArr, int i, int i2) {
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
        } else if (a(cArr, i, i2, str2)) {
            return str2;
        } else {
            str = new String(cArr, i, i2);
            strArr[i6] = str;
        }
        return str;
    }

    private static boolean a(char[] cArr, int i, int i2, String str) {
        if (i2 != str.length()) {
            return false;
        }
        int i3 = 0;
        int i4 = i;
        while (i2 != 0) {
            if (cArr[i4] != str.charAt(i3)) {
                return false;
            }
            i4++;
            i2--;
            i3++;
        }
        return true;
    }

    private int c(char c2) {
        a();
        for (int i = this.e; i < this.f39210c; i++) {
            if (c2 == this.f39208a[i]) {
                return i - this.e;
            }
        }
        return -1;
    }

    private boolean c(String str) {
        a();
        int length = str.length();
        if (length > this.f39210c - this.e) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) != this.f39208a[this.e + i]) {
                return false;
            }
        }
        return true;
    }

    private boolean d(String str) {
        a();
        int length = str.length();
        if (length > this.f39210c - this.e) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (Character.toUpperCase(str.charAt(i)) != Character.toUpperCase(this.f39208a[this.e + i])) {
                return false;
            }
        }
        return true;
    }

    private boolean q() {
        return this.e >= this.f39210c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a(CharSequence charSequence) {
        a();
        char charAt = charSequence.charAt(0);
        int i = this.e;
        while (i < this.f39210c) {
            int i2 = i;
            if (charAt != this.f39208a[i]) {
                int i3 = i;
                while (true) {
                    int i4 = i3 + 1;
                    i2 = i4;
                    if (i4 >= this.f39210c) {
                        break;
                    }
                    i3 = i4;
                    if (charAt == this.f39208a[i4]) {
                        i2 = i4;
                        break;
                    }
                }
            }
            i = i2 + 1;
            int length = (charSequence.length() + i) - 1;
            int i5 = this.f39210c;
            if (i2 < i5 && length <= i5) {
                int i6 = i;
                for (int i7 = 1; i6 < length && charSequence.charAt(i7) == this.f39208a[i6]; i7++) {
                    i6++;
                }
                if (i6 == length) {
                    return i2 - this.e;
                }
            }
        }
        return -1;
    }

    public final String a(char c2) {
        int c3 = c(c2);
        if (c3 == -1) {
            return k();
        }
        String a2 = a(this.f39208a, this.g, this.e, c3);
        this.e += c3;
        return a2;
    }

    public final String a(char... cArr) {
        a();
        int i = this.e;
        int i2 = this.f39210c;
        char[] cArr2 = this.f39208a;
        int i3 = i;
        loop0: while (i3 < i2) {
            for (char c2 : cArr) {
                if (cArr2[i3] == c2) {
                    break loop0;
                }
            }
            i3++;
        }
        this.e = i3;
        return i3 > i ? a(this.f39208a, this.g, i, i3 - i) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        int i;
        boolean z;
        if (!this.i) {
            int i2 = this.e;
            if (i2 >= this.f39211d) {
                int i3 = this.f;
                if (i3 != -1) {
                    i = i2 - i3;
                    i2 = i3;
                } else {
                    i = 0;
                }
                try {
                    long j = i2;
                    long skip = this.f39209b.skip(j);
                    this.f39209b.mark(32768);
                    int i4 = 0;
                    while (true) {
                        z = true;
                        if (i4 > 1024) {
                            break;
                        }
                        Reader reader = this.f39209b;
                        char[] cArr = this.f39208a;
                        int read = reader.read(cArr, i4, cArr.length - i4);
                        if (read == -1) {
                            this.i = true;
                        }
                        if (read <= 0) {
                            break;
                        }
                        i4 += read;
                    }
                    this.f39209b.reset();
                    if (i4 > 0) {
                        if (skip != j) {
                            z = false;
                        }
                        c.a(z);
                        this.f39210c = i4;
                        this.h += i2;
                        this.e = i;
                        if (this.f != -1) {
                            this.f = 0;
                        }
                        int i5 = i4;
                        if (i4 > 24576) {
                            i5 = 24576;
                        }
                        this.f39211d = i5;
                    }
                } catch (IOException e) {
                    throw new UncheckedIOException(e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(String str) {
        a();
        if (!c(str)) {
            return false;
        }
        this.e += str.length();
        return true;
    }

    public final int b() {
        return this.h + this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b(char... cArr) {
        a();
        int i = this.e;
        int i2 = this.f39210c;
        char[] cArr2 = this.f39208a;
        int i3 = i;
        while (i3 < i2 && Arrays.binarySearch(cArr, cArr2[i3]) < 0) {
            i3++;
        }
        this.e = i3;
        return i3 > i ? a(this.f39208a, this.g, i, i3 - i) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(char c2) {
        return !c() && this.f39208a[this.e] == c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b(String str) {
        if (!d(str)) {
            return false;
        }
        this.e += str.length();
        return true;
    }

    public final boolean c() {
        a();
        return this.e >= this.f39210c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c(char... cArr) {
        if (c()) {
            return false;
        }
        a();
        char c2 = this.f39208a[this.e];
        for (char c3 : cArr) {
            if (c3 == c2) {
                return true;
            }
        }
        return false;
    }

    public final char d() {
        a();
        if (q()) {
            return (char) 65535;
        }
        return this.f39208a[this.e];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean d(char[] cArr) {
        a();
        return !c() && Arrays.binarySearch(cArr, this.f39208a[this.e]) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char e() {
        a();
        char c2 = q() ? (char) 65535 : this.f39208a[this.e];
        this.e++;
        return c2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        int i = this.e;
        if (i > 0) {
            this.e = i - 1;
            return;
        }
        throw new UncheckedIOException(new IOException("No buffer left to unconsume"));
    }

    public final void g() {
        this.e++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        int i = this.f;
        if (i != -1) {
            this.e = i;
            this.f = -1;
            return;
        }
        throw new UncheckedIOException(new IOException("Mark invalid"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String i() {
        char c2;
        int i = this.e;
        int i2 = this.f39210c;
        char[] cArr = this.f39208a;
        int i3 = i;
        while (i3 < i2 && (c2 = cArr[i3]) != 0 && c2 != '&' && c2 != '<') {
            i3++;
        }
        this.e = i3;
        return i3 > i ? a(this.f39208a, this.g, i, i3 - i) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String j() {
        char c2;
        a();
        int i = this.e;
        int i2 = this.f39210c;
        char[] cArr = this.f39208a;
        int i3 = i;
        while (i3 < i2 && (c2 = cArr[i3]) != 0 && c2 != ' ' && c2 != '/' && c2 != '<' && c2 != '>' && c2 != '\t' && c2 != '\n' && c2 != '\f' && c2 != '\r') {
            i3++;
        }
        this.e = i3;
        return i3 > i ? a(this.f39208a, this.g, i, i3 - i) : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String k() {
        a();
        char[] cArr = this.f39208a;
        String[] strArr = this.g;
        int i = this.e;
        String a2 = a(cArr, strArr, i, this.f39210c - i);
        this.e = this.f39210c;
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String l() {
        char c2;
        a();
        int i = this.e;
        while (true) {
            int i2 = this.e;
            if (i2 >= this.f39210c || (((c2 = this.f39208a[i2]) < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !Character.isLetter(c2)))) {
                break;
            }
            this.e++;
        }
        return a(this.f39208a, this.g, i, this.e - i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String m() {
        char c2;
        a();
        int i = this.e;
        while (true) {
            int i2 = this.e;
            if (i2 >= this.f39210c || (((c2 = this.f39208a[i2]) < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !Character.isLetter(c2)))) {
                break;
            }
            this.e++;
        }
        while (!q()) {
            char[] cArr = this.f39208a;
            int i3 = this.e;
            char c3 = cArr[i3];
            if (c3 < '0' || c3 > '9') {
                break;
            }
            this.e = i3 + 1;
        }
        return a(this.f39208a, this.g, i, this.e - i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String n() {
        int i;
        char c2;
        a();
        int i2 = this.e;
        while (true) {
            i = this.e;
            if (i >= this.f39210c || (((c2 = this.f39208a[i]) < '0' || c2 > '9') && ((c2 < 'A' || c2 > 'F') && (c2 < 'a' || c2 > 'f')))) {
                break;
            }
            this.e = i + 1;
        }
        return a(this.f39208a, this.g, i2, i - i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String o() {
        int i;
        char c2;
        a();
        int i2 = this.e;
        while (true) {
            i = this.e;
            if (i >= this.f39210c || (c2 = this.f39208a[i]) < '0' || c2 > '9') {
                break;
            }
            this.e = i + 1;
        }
        return a(this.f39208a, this.g, i2, i - i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean p() {
        if (c()) {
            return false;
        }
        char c2 = this.f39208a[this.e];
        if (c2 < 'A' || c2 > 'Z') {
            return (c2 >= 'a' && c2 <= 'z') || Character.isLetter(c2);
        }
        return true;
    }

    public final String toString() {
        if (this.f39210c - this.e < 0) {
            return "";
        }
        char[] cArr = this.f39208a;
        int i = this.e;
        return new String(cArr, i, this.f39210c - i);
    }
}
