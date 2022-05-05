package com.google.gson.c;

import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.google.gson.a.a.d;
import com.google.gson.a.e;
import com.google.gson.r;
import java.io.Closeable;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/c/a.class */
public class a implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f4534a = ")]}'\n".toCharArray();
    private final Reader c;
    private long j;
    private int k;
    private String l;
    private int n;

    /* renamed from: b  reason: collision with root package name */
    public boolean f4535b = false;
    private final char[] d = new char[1024];
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int i = 0;
    private int[] m = new int[32];

    static {
        e.f4513a = new e() { // from class: com.google.gson.c.a.1
            @Override // com.google.gson.a.e
            public final void a(a aVar) {
                if (aVar instanceof d) {
                    d dVar = (d) aVar;
                    dVar.a(b.NAME);
                    Map.Entry entry = (Map.Entry) ((Iterator) dVar.g()).next();
                    dVar.f4446a.add(entry.getValue());
                    dVar.f4446a.add(new r((String) entry.getKey()));
                    return;
                }
                int i = aVar.i;
                int i2 = i;
                if (i == 0) {
                    i2 = aVar.g();
                }
                if (i2 == 13) {
                    aVar.i = 9;
                } else if (i2 == 12) {
                    aVar.i = 8;
                } else if (i2 == 14) {
                    aVar.i = 10;
                } else {
                    throw new IllegalStateException("Expected a name but was " + aVar.f() + "  at line " + a.c(aVar) + " column " + aVar.s());
                }
            }
        };
    }

    public a(Reader reader) {
        this.n = 0;
        int[] iArr = this.m;
        int i = this.n;
        this.n = i + 1;
        iArr[i] = 6;
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.c = reader;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a7, code lost:
        return r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int a(boolean r7) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.c.a.a(boolean):int");
    }

    private IOException a(String str) {
        throw new d(str + " at line " + (this.g + 1) + " column " + s());
    }

    private void a(int i) {
        if (this.n == this.m.length) {
            int[] iArr = new int[this.n * 2];
            System.arraycopy(this.m, 0, iArr, 0, this.n);
            this.m = iArr;
        }
        int[] iArr2 = this.m;
        int i2 = this.n;
        this.n = i2 + 1;
        iArr2[i2] = i;
    }

    private boolean a(char c) {
        boolean z;
        switch (c) {
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                t();
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                z = false;
                break;
            default:
                z = true;
                break;
        }
        return z;
    }

    private String b(char c) {
        char[] cArr = this.d;
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i = this.e;
            int i2 = this.f;
            int i3 = i;
            while (true) {
                if (i3 < i2) {
                    int i4 = i3 + 1;
                    char c2 = cArr[i3];
                    if (c2 == c) {
                        this.e = i4;
                        sb.append(cArr, i, (i4 - i) - 1);
                        return sb.toString();
                    } else if (c2 == '\\') {
                        this.e = i4;
                        sb.append(cArr, i, (i4 - i) - 1);
                        sb.append(v());
                        break;
                    } else {
                        if (c2 == '\n') {
                            this.g++;
                            this.h = i4;
                        }
                        i3 = i4;
                    }
                } else {
                    sb.append(cArr, i, i3 - i);
                    this.e = i3;
                    if (!b(1)) {
                        throw a("Unterminated string");
                    }
                }
            }
        }
    }

    private boolean b(int i) {
        boolean z = false;
        char[] cArr = this.d;
        this.h -= this.e;
        if (this.f != this.e) {
            this.f -= this.e;
            System.arraycopy(cArr, this.e, cArr, 0, this.f);
        } else {
            this.f = 0;
        }
        this.e = 0;
        while (true) {
            int read = this.c.read(cArr, this.f, cArr.length - this.f);
            if (read == -1) {
                break;
            }
            this.f = read + this.f;
            int i2 = i;
            if (this.g == 0) {
                i2 = i;
                if (this.h == 0) {
                    i2 = i;
                    if (this.f > 0) {
                        i2 = i;
                        if (cArr[0] == 65279) {
                            this.e++;
                            this.h++;
                            i2 = i + 1;
                        }
                    }
                }
            }
            i = i2;
            if (this.f >= i2) {
                z = true;
                break;
            }
        }
        return z;
    }

    static /* synthetic */ int c(a aVar) {
        return aVar.g + 1;
    }

    private void c(char c) {
        char[] cArr = this.d;
        while (true) {
            int i = this.e;
            int i2 = this.f;
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    char c2 = cArr[i];
                    if (c2 == c) {
                        this.e = i3;
                        return;
                    } else if (c2 == '\\') {
                        this.e = i3;
                        v();
                        break;
                    } else {
                        if (c2 == '\n') {
                            this.g++;
                            this.h = i3;
                        }
                        i = i3;
                    }
                } else {
                    this.e = i;
                    if (!b(1)) {
                        throw a("Unterminated string");
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int g() {
        int i;
        int i2 = this.m[this.n - 1];
        if (i2 == 1) {
            this.m[this.n - 1] = 2;
        } else if (i2 == 2) {
            switch (a(true)) {
                case 44:
                    break;
                case 59:
                    t();
                    break;
                case 93:
                    this.i = 4;
                    i = 4;
                    return i;
                default:
                    throw a("Unterminated array");
            }
        } else {
            if (i2 == 3 || i2 == 5) {
                this.m[this.n - 1] = 4;
                if (i2 == 5) {
                    switch (a(true)) {
                        case 44:
                            break;
                        case 59:
                            t();
                            break;
                        case 125:
                            this.i = 2;
                            i = 2;
                            break;
                        default:
                            throw a("Unterminated object");
                    }
                }
                int a2 = a(true);
                switch (a2) {
                    case 34:
                        i = 13;
                        this.i = 13;
                        break;
                    case 39:
                        t();
                        i = 12;
                        this.i = 12;
                        break;
                    case 125:
                        if (i2 != 5) {
                            this.i = 2;
                            i = 2;
                            break;
                        } else {
                            throw a("Expected name");
                        }
                    default:
                        t();
                        this.e--;
                        if (a((char) a2)) {
                            i = 14;
                            this.i = 14;
                            break;
                        } else {
                            throw a("Expected name");
                        }
                }
            } else if (i2 == 4) {
                this.m[this.n - 1] = 5;
                switch (a(true)) {
                    case 58:
                        break;
                    case 59:
                    case 60:
                    default:
                        throw a("Expected ':'");
                    case 61:
                        t();
                        if ((this.e < this.f || b(1)) && this.d[this.e] == '>') {
                            this.e++;
                            break;
                        }
                        break;
                }
            } else if (i2 == 6) {
                if (this.f4535b) {
                    a(true);
                    this.e--;
                    if (this.e + f4534a.length <= this.f || b(f4534a.length)) {
                        int i3 = 0;
                        while (true) {
                            if (i3 < f4534a.length) {
                                if (this.d[this.e + i3] != f4534a[i3]) {
                                    break;
                                }
                                i3++;
                            } else {
                                this.e += f4534a.length;
                                break;
                            }
                        }
                    }
                }
                this.m[this.n - 1] = 7;
            } else if (i2 == 7) {
                if (a(false) == -1) {
                    i = 17;
                    this.i = 17;
                } else {
                    t();
                    this.e--;
                }
            } else if (i2 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
            return i;
        }
        switch (a(true)) {
            case 34:
                if (this.n == 1) {
                    t();
                }
                i = 9;
                this.i = 9;
                return i;
            case 39:
                t();
                i = 8;
                this.i = 8;
                return i;
            case 44:
            case 59:
                if (i2 != 1 || i2 == 2) {
                    t();
                    this.e--;
                    this.i = 7;
                    i = 7;
                    return i;
                }
                throw a("Unexpected value");
            case 91:
                i = 3;
                this.i = 3;
                return i;
            case 93:
                if (i2 == 1) {
                    this.i = 4;
                    i = 4;
                    return i;
                }
                if (i2 != 1) {
                    break;
                }
                t();
                this.e--;
                this.i = 7;
                i = 7;
                return i;
            case 123:
                this.i = 1;
                i = 1;
                return i;
            default:
                this.e--;
                if (this.n == 1) {
                    t();
                }
                i = p();
                if (i == 0) {
                    int q = q();
                    i = q;
                    if (q == 0) {
                        if (!a(this.d[this.e])) {
                            throw a("Expected value");
                        }
                        t();
                        i = 10;
                        this.i = 10;
                    }
                }
                return i;
        }
    }

    private int p() {
        int i;
        String str;
        String str2;
        char c = this.d[this.e];
        if (c == 't' || c == 'T') {
            str2 = "true";
            str = "TRUE";
            i = 5;
        } else if (c == 'f' || c == 'F') {
            str2 = "false";
            str = "FALSE";
            i = 6;
        } else if (c == 'n' || c == 'N') {
            str2 = "null";
            str = "NULL";
            i = 7;
        } else {
            i = 0;
            return i;
        }
        int length = str2.length();
        int i2 = 1;
        while (true) {
            if (i2 < length) {
                if (this.e + i2 >= this.f && !b(i2 + 1)) {
                    i = 0;
                    break;
                }
                char c2 = this.d[this.e + i2];
                if (c2 != str2.charAt(i2) && c2 != str.charAt(i2)) {
                    i = 0;
                    break;
                }
                i2++;
            } else if ((this.e + length < this.f || b(length + 1)) && a(this.d[this.e + length])) {
                i = 0;
            } else {
                this.e += length;
                this.i = i;
            }
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a0, code lost:
        if (a(r0) == false) goto L_0x019a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a3, code lost:
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019d, code lost:
        if (r13 != 2) goto L_0x01de;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01a2, code lost:
        if (r12 == false) goto L_0x01de;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01ab, code lost:
        if (r9 != Long.MIN_VALUE) goto L_0x01b3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01b0, code lost:
        if (r11 == false) goto L_0x01de;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01b3, code lost:
        r9 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01b5, code lost:
        if (r11 == false) goto L_0x01d6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01b8, code lost:
        r5.j = r9;
        r5.e += r14;
        r13 = 15;
        r5.i = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01d6, code lost:
        r9 = -r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01e1, code lost:
        if (r13 == 2) goto L_0x01f1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01e7, code lost:
        if (r13 == 4) goto L_0x01f1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01ee, code lost:
        if (r13 != 7) goto L_0x0204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01f1, code lost:
        r5.k = r14;
        r13 = 16;
        r5.i = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0204, code lost:
        r13 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1, types: [long] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [long] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int q() {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.c.a.q():int");
    }

    private String r() {
        StringBuilder sb;
        int i;
        String sb2;
        StringBuilder sb3 = null;
        int i2 = 0;
        while (true) {
            if (this.e + i2 < this.f) {
                sb = sb3;
                i = i2;
                switch (this.d[this.e + i2]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        t();
                        i = i2;
                        sb = sb3;
                        break;
                    default:
                        i2++;
                }
            } else if (i2 < this.d.length) {
                sb = sb3;
                i = i2;
                if (b(i2 + 1)) {
                }
            } else {
                sb = sb3;
                if (sb3 == null) {
                    sb = new StringBuilder();
                }
                sb.append(this.d, this.e, i2);
                this.e = i2 + this.e;
                if (!b(1)) {
                    i = 0;
                } else {
                    i2 = 0;
                    sb3 = sb;
                }
            }
        }
        if (sb == null) {
            sb2 = new String(this.d, this.e, i);
        } else {
            sb.append(this.d, this.e, i);
            sb2 = sb.toString();
        }
        this.e = i + this.e;
        return sb2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int s() {
        return (this.e - this.h) + 1;
    }

    private void t() {
        if (!this.f4535b) {
            throw a("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void u() {
        char c;
        do {
            if (this.e < this.f || b(1)) {
                char[] cArr = this.d;
                int i = this.e;
                this.e = i + 1;
                c = cArr[i];
                if (c == '\n') {
                    this.g++;
                    this.h = this.e;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    private char v() {
        char c;
        char c2;
        int i;
        if (this.e != this.f || b(1)) {
            char[] cArr = this.d;
            int i2 = this.e;
            this.e = i2 + 1;
            char c3 = cArr[i2];
            switch (c3) {
                case '\n':
                    this.g++;
                    this.h = this.e;
                    c = c3;
                    break;
                case 'b':
                    c = '\b';
                    break;
                case 'f':
                    c = '\f';
                    break;
                case 'n':
                    c = '\n';
                    break;
                case 'r':
                    c = '\r';
                    break;
                case 't':
                    c = '\t';
                    break;
                case 'u':
                    if (this.e + 4 <= this.f || b(4)) {
                        char c4 = 0;
                        int i3 = this.e;
                        for (int i4 = i3; i4 < i3 + 4; i4++) {
                            char c5 = this.d[i4];
                            char c6 = (char) (c4 << 4);
                            if (c5 >= '0' && c5 <= '9') {
                                c2 = c6;
                                i = c5 - '0';
                            } else if (c5 >= 'a' && c5 <= 'f') {
                                c2 = c6;
                                i = (c5 - 'a') + 10;
                            } else if (c5 < 'A' || c5 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.d, this.e, 4));
                            } else {
                                c2 = c6;
                                i = (c5 - 'A') + 10;
                            }
                            c4 = (char) (c2 + i);
                        }
                        this.e += 4;
                        c = c4;
                        break;
                    } else {
                        throw a("Unterminated escape sequence");
                    }
                    break;
                default:
                    c = c3;
                    break;
            }
            return c;
        }
        throw a("Unterminated escape sequence");
    }

    public void a() {
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 3) {
            a(1);
            this.i = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + " at line " + (this.g + 1) + " column " + s());
    }

    public void b() {
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 4) {
            this.n--;
            this.i = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + f() + " at line " + (this.g + 1) + " column " + s());
    }

    public void c() {
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 1) {
            a(3);
            this.i = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + " at line " + (this.g + 1) + " column " + s());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.i = 0;
        this.m[0] = 8;
        this.n = 1;
        this.c.close();
    }

    public void d() {
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 2) {
            this.n--;
            this.i = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + f() + " at line " + (this.g + 1) + " column " + s());
    }

    public boolean e() {
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    public b f() {
        b bVar;
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        switch (i2) {
            case 1:
                bVar = b.BEGIN_OBJECT;
                break;
            case 2:
                bVar = b.END_OBJECT;
                break;
            case 3:
                bVar = b.BEGIN_ARRAY;
                break;
            case 4:
                bVar = b.END_ARRAY;
                break;
            case 5:
            case 6:
                bVar = b.BOOLEAN;
                break;
            case 7:
                bVar = b.NULL;
                break;
            case 8:
            case 9:
            case 10:
            case 11:
                bVar = b.STRING;
                break;
            case 12:
            case 13:
            case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
                bVar = b.NAME;
                break;
            case 15:
            case 16:
                bVar = b.NUMBER;
                break;
            case 17:
                bVar = b.END_DOCUMENT;
                break;
            default:
                throw new AssertionError();
        }
        return bVar;
    }

    public String h() {
        String b2;
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 14) {
            b2 = r();
        } else if (i2 == 12) {
            b2 = b('\'');
        } else if (i2 == 13) {
            b2 = b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + f() + " at line " + (this.g + 1) + " column " + s());
        }
        this.i = 0;
        return b2;
    }

    public String i() {
        String str;
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 10) {
            str = r();
        } else if (i2 == 8) {
            str = b('\'');
        } else if (i2 == 9) {
            str = b('\"');
        } else if (i2 == 11) {
            str = this.l;
            this.l = null;
        } else if (i2 == 15) {
            str = Long.toString(this.j);
        } else if (i2 == 16) {
            str = new String(this.d, this.e, this.k);
            this.e += this.k;
        } else {
            throw new IllegalStateException("Expected a string but was " + f() + " at line " + (this.g + 1) + " column " + s());
        }
        this.i = 0;
        return str;
    }

    public boolean j() {
        boolean z = false;
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 5) {
            this.i = 0;
            z = true;
        } else if (i2 == 6) {
            this.i = 0;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + f() + " at line " + (this.g + 1) + " column " + s());
        }
        return z;
    }

    public void k() {
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 7) {
            this.i = 0;
            return;
        }
        throw new IllegalStateException("Expected null but was " + f() + " at line " + (this.g + 1) + " column " + s());
    }

    public double l() {
        double parseDouble;
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 15) {
            this.i = 0;
            parseDouble = this.j;
        } else {
            if (i2 == 16) {
                this.l = new String(this.d, this.e, this.k);
                this.e += this.k;
            } else if (i2 == 8 || i2 == 9) {
                this.l = b(i2 == 8 ? '\'' : '\"');
            } else if (i2 == 10) {
                this.l = r();
            } else if (i2 != 11) {
                throw new IllegalStateException("Expected a double but was " + f() + " at line " + (this.g + 1) + " column " + s());
            }
            this.i = 11;
            parseDouble = Double.parseDouble(this.l);
            if (this.f4535b || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
                this.l = null;
                this.i = 0;
            } else {
                throw new d("JSON forbids NaN and infinities: " + parseDouble + " at line " + (this.g + 1) + " column " + s());
            }
        }
        return parseDouble;
    }

    public long m() {
        long parseLong;
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 15) {
            this.i = 0;
            parseLong = this.j;
        } else {
            if (i2 == 16) {
                this.l = new String(this.d, this.e, this.k);
                this.e += this.k;
            } else if (i2 == 8 || i2 == 9) {
                this.l = b(i2 == 8 ? '\'' : '\"');
                try {
                    parseLong = Long.parseLong(this.l);
                    this.i = 0;
                } catch (NumberFormatException e) {
                }
            } else {
                throw new IllegalStateException("Expected a long but was " + f() + " at line " + (this.g + 1) + " column " + s());
            }
            this.i = 11;
            double parseDouble = Double.parseDouble(this.l);
            parseLong = (long) parseDouble;
            if (parseLong != parseDouble) {
                throw new NumberFormatException("Expected a long but was " + this.l + " at line " + (this.g + 1) + " column " + s());
            }
            this.l = null;
            this.i = 0;
        }
        return parseLong;
    }

    public int n() {
        int parseInt;
        int i = this.i;
        int i2 = i;
        if (i == 0) {
            i2 = g();
        }
        if (i2 == 15) {
            parseInt = (int) this.j;
            if (this.j != parseInt) {
                throw new NumberFormatException("Expected an int but was " + this.j + " at line " + (this.g + 1) + " column " + s());
            }
            this.i = 0;
        } else {
            if (i2 == 16) {
                this.l = new String(this.d, this.e, this.k);
                this.e += this.k;
            } else if (i2 == 8 || i2 == 9) {
                this.l = b(i2 == 8 ? '\'' : '\"');
                try {
                    parseInt = Integer.parseInt(this.l);
                    this.i = 0;
                } catch (NumberFormatException e) {
                }
            } else {
                throw new IllegalStateException("Expected an int but was " + f() + " at line " + (this.g + 1) + " column " + s());
            }
            this.i = 11;
            double parseDouble = Double.parseDouble(this.l);
            parseInt = (int) parseDouble;
            if (parseInt != parseDouble) {
                throw new NumberFormatException("Expected an int but was " + this.l + " at line " + (this.g + 1) + " column " + s());
            }
            this.l = null;
            this.i = 0;
        }
        return parseInt;
    }

    public void o() {
        int i;
        int i2 = 0;
        do {
            int i3 = this.i;
            int i4 = i3;
            if (i3 == 0) {
                i4 = g();
            }
            if (i4 == 3) {
                a(1);
                i = i2 + 1;
            } else if (i4 == 1) {
                a(3);
                i = i2 + 1;
            } else if (i4 == 4) {
                this.n--;
                i = i2 - 1;
            } else if (i4 == 2) {
                this.n--;
                i = i2 - 1;
            } else if (i4 == 14 || i4 == 10) {
                do {
                    int i5 = 0;
                    while (this.e + i5 < this.f) {
                        switch (this.d[this.e + i5]) {
                            case '\t':
                            case '\n':
                            case '\f':
                            case '\r':
                            case ' ':
                            case ',':
                            case ':':
                            case '[':
                            case ']':
                            case '{':
                            case '}':
                                this.e = i5 + this.e;
                                i = i2;
                                break;
                            case '#':
                            case '/':
                            case ';':
                            case '=':
                            case '\\':
                                t();
                                this.e = i5 + this.e;
                                i = i2;
                                break;
                            default:
                                i5++;
                        }
                    }
                    this.e = i5 + this.e;
                } while (b(1));
                i = i2;
            } else if (i4 == 8 || i4 == 12) {
                c('\'');
                i = i2;
            } else if (i4 == 9 || i4 == 13) {
                c('\"');
                i = i2;
            } else {
                i = i2;
                if (i4 == 16) {
                    this.e += this.k;
                    i = i2;
                }
            }
            this.i = 0;
            i2 = i;
        } while (i != 0);
    }

    public String toString() {
        return getClass().getSimpleName() + " at line " + (this.g + 1) + " column " + s();
    }
}
