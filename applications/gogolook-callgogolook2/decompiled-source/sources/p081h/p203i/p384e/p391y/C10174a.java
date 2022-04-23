package p081h.p203i.p384e.p391y;

import com.aotter.net.gson.Gson;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import p081h.p203i.p384e.p386w.AbstractC10144e;
import p081h.p203i.p384e.p386w.p387m.C10165a;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: h.i.e.y.a */
/* loaded from: classes2-dex2jar.jar:h/i/e/y/a.class */
public class C10174a implements Closeable {

    /* renamed from: p */
    public static final char[] f22905p = Gson.JSON_NON_EXECUTABLE_PREFIX.toCharArray();

    /* renamed from: a */
    public final Reader f22906a;

    /* renamed from: i */
    public long f22914i;

    /* renamed from: j */
    public int f22915j;

    /* renamed from: k */
    public String f22916k;

    /* renamed from: m */
    public int f22918m;

    /* renamed from: b */
    public boolean f22907b = false;

    /* renamed from: c */
    public final char[] f22908c = new char[1024];

    /* renamed from: d */
    public int f22909d = 0;

    /* renamed from: e */
    public int f22910e = 0;

    /* renamed from: f */
    public int f22911f = 0;

    /* renamed from: g */
    public int f22912g = 0;

    /* renamed from: h */
    public int f22913h = 0;

    /* renamed from: l */
    public int[] f22917l = new int[32];

    /* renamed from: n */
    public String[] f22919n = new String[32];

    /* renamed from: o */
    public int[] f22920o = new int[32];

    /* renamed from: h.i.e.y.a$a */
    /* loaded from: classes2-dex2jar.jar:h/i/e/y/a$a.class */
    public class C10175a extends AbstractC10144e {
        @Override // p081h.p203i.p384e.p386w.AbstractC10144e
        /* renamed from: a */
        public void mo13240a(C10174a aVar) throws IOException {
            if (aVar instanceof C10165a) {
                ((C10165a) aVar).m13295O();
                return;
            }
            int i = aVar.f22913h;
            int i2 = i;
            if (i == 0) {
                i2 = aVar.m13252e();
            }
            if (i2 == 13) {
                aVar.f22913h = 9;
            } else if (i2 == 12) {
                aVar.f22913h = 8;
            } else if (i2 == 14) {
                aVar.f22913h = 10;
            } else {
                throw new IllegalStateException("Expected a name but was " + aVar.mo13272F() + aVar.m13247j());
            }
        }
    }

    static {
        AbstractC10144e.f22857a = new C10175a();
    }

    public C10174a(Reader reader) {
        this.f22918m = 0;
        int[] iArr = this.f22917l;
        int i = this.f22918m;
        this.f22918m = i + 1;
        iArr[i] = 6;
        if (reader != null) {
            this.f22906a = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    /* renamed from: B */
    public String mo13274B() throws IOException {
        String str;
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 10) {
            str = m13273C();
        } else if (i2 == 8) {
            str = m13259b('\'');
        } else if (i2 == 9) {
            str = m13259b('\"');
        } else if (i2 == 11) {
            str = this.f22916k;
            this.f22916k = null;
        } else if (i2 == 15) {
            str = Long.toString(this.f22914i);
        } else if (i2 == 16) {
            str = new String(this.f22908c, this.f22909d, this.f22915j);
            this.f22909d += this.f22915j;
        } else {
            throw new IllegalStateException("Expected a string but was " + mo13272F() + m13247j());
        }
        this.f22913h = 0;
        int[] iArr = this.f22920o;
        int i3 = this.f22918m - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        m13255c();
     */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m13273C() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p384e.p391y.C10174a.m13273C():java.lang.String");
    }

    /* renamed from: F */
    public EnumC10176b mo13272F() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        switch (i2) {
            case 1:
                return EnumC10176b.BEGIN_OBJECT;
            case 2:
                return EnumC10176b.END_OBJECT;
            case 3:
                return EnumC10176b.BEGIN_ARRAY;
            case 4:
                return EnumC10176b.END_ARRAY;
            case 5:
            case 6:
                return EnumC10176b.BOOLEAN;
            case 7:
                return EnumC10176b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return EnumC10176b.STRING;
            case 12:
            case 13:
            case 14:
                return EnumC10176b.NAME;
            case 15:
            case 16:
                return EnumC10176b.NUMBER;
            case 17:
                return EnumC10176b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: G */
    public final int m13271G() throws IOException {
        String str;
        String str2;
        int i;
        char c = this.f22908c[this.f22909d];
        if (c == 't' || c == 'T') {
            i = 5;
            str2 = "true";
            str = "TRUE";
        } else if (c == 'f' || c == 'F') {
            i = 6;
            str2 = "false";
            str = "FALSE";
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            i = 7;
            str2 = C14247d.f31851f;
            str = "NULL";
        }
        int length = str2.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.f22909d + i2 >= this.f22910e && !m13263a(i2 + 1)) {
                return 0;
            }
            char c2 = this.f22908c[this.f22909d + i2];
            if (!(c2 == str2.charAt(i2) || c2 == str.charAt(i2))) {
                return 0;
            }
        }
        if ((this.f22909d + length < this.f22910e || m13263a(length + 1)) && m13264a(this.f22908c[this.f22909d + length])) {
            return 0;
        }
        this.f22909d += length;
        this.f22913h = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fe, code lost:
        if (r10 == 6) goto L_0x010e;
     */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5, types: [long] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m13270H() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p384e.p391y.C10174a.m13270H():int");
    }

    /* renamed from: I */
    public final char m13269I() throws IOException {
        int i;
        int i2;
        if (this.f22909d != this.f22910e || m13263a(1)) {
            char[] cArr = this.f22908c;
            int i3 = this.f22909d;
            this.f22909d = i3 + 1;
            char c = cArr[i3];
            if (c == '\n') {
                this.f22911f++;
                this.f22912g = this.f22909d;
            } else if (!(c == '\"' || c == '\'' || c == '/' || c == '\\')) {
                if (c == 'b') {
                    return '\b';
                }
                if (c == 'f') {
                    return '\f';
                }
                if (c == 'n') {
                    return '\n';
                }
                if (c == 'r') {
                    return '\r';
                }
                if (c == 't') {
                    return '\t';
                }
                if (c != 'u') {
                    m13257b("Invalid escape sequence");
                    throw null;
                } else if (this.f22909d + 4 <= this.f22910e || m13263a(4)) {
                    char c2 = 0;
                    int i4 = this.f22909d;
                    for (int i5 = i4; i5 < i4 + 4; i5++) {
                        char c3 = this.f22908c[i5];
                        char c4 = (char) (c2 << 4);
                        if (c3 < '0' || c3 > '9') {
                            if (c3 >= 'a' && c3 <= 'f') {
                                i = c3 - 'a';
                            } else if (c3 < 'A' || c3 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.f22908c, this.f22909d, 4));
                            } else {
                                i = c3 - 'A';
                            }
                            i2 = i + 10;
                        } else {
                            i2 = c3 - '0';
                        }
                        c2 = (char) (c4 + i2);
                    }
                    this.f22909d += 4;
                    return c2;
                } else {
                    m13257b("Unterminated escape sequence");
                    throw null;
                }
            }
            return c;
        }
        m13257b("Unterminated escape sequence");
        throw null;
    }

    /* renamed from: J */
    public final void m13268J() throws IOException {
        char c;
        do {
            if (this.f22909d < this.f22910e || m13263a(1)) {
                char[] cArr = this.f22908c;
                int i = this.f22909d;
                this.f22909d = i + 1;
                c = cArr[i];
                if (c == '\n') {
                    this.f22911f++;
                    this.f22912g = this.f22909d;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    /* renamed from: K */
    public final void m13267K() throws IOException {
        do {
            int i = 0;
            while (true) {
                int i2 = this.f22909d;
                if (i2 + i < this.f22910e) {
                    char c = this.f22908c[i2 + i];
                    if (!(c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ')) {
                        if (c != '#') {
                            if (c != ',') {
                                if (!(c == '/' || c == '=')) {
                                    if (!(c == '{' || c == '}' || c == ':')) {
                                        if (c != ';') {
                                            switch (c) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    this.f22909d = i2 + i;
                }
            }
            m13255c();
            this.f22909d += i;
            return;
        } while (m13263a(1));
    }

    /* renamed from: L */
    public void mo13266L() throws IOException {
        int i;
        int i2 = 0;
        do {
            int i3 = this.f22913h;
            int i4 = i3;
            if (i3 == 0) {
                i4 = m13252e();
            }
            if (i4 == 3) {
                m13258b(1);
            } else if (i4 == 1) {
                m13258b(3);
            } else {
                if (i4 == 4) {
                    this.f22918m--;
                } else if (i4 == 2) {
                    this.f22918m--;
                } else {
                    if (i4 == 14 || i4 == 10) {
                        m13267K();
                        i = i2;
                    } else if (i4 == 8 || i4 == 12) {
                        m13254c('\'');
                        i = i2;
                    } else if (i4 == 9 || i4 == 13) {
                        m13254c('\"');
                        i = i2;
                    } else {
                        i = i2;
                        if (i4 == 16) {
                            this.f22909d += this.f22915j;
                            i = i2;
                        }
                    }
                    this.f22913h = 0;
                    i2 = i;
                }
                i = i2 - 1;
                this.f22913h = 0;
                i2 = i;
            }
            i = i2 + 1;
            this.f22913h = 0;
            i2 = i;
        } while (i != 0);
        int[] iArr = this.f22920o;
        int i5 = this.f22918m;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.f22919n[i5 - 1] = C14247d.f31851f;
    }

    /* renamed from: a */
    public final int m13261a(boolean z) throws IOException {
        char[] cArr = this.f22908c;
        int i = this.f22909d;
        int i2 = this.f22910e;
        while (true) {
            int i3 = i;
            int i4 = i2;
            if (i == i2) {
                this.f22909d = i;
                if (m13263a(1)) {
                    i3 = this.f22909d;
                    i4 = this.f22910e;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException("End of input" + m13247j());
                }
            }
            i = i3 + 1;
            char c = cArr[i3];
            if (c == '\n') {
                this.f22911f++;
                this.f22912g = i;
            } else if (!(c == ' ' || c == '\r' || c == '\t')) {
                if (c == '/') {
                    this.f22909d = i;
                    if (i == i4) {
                        this.f22909d--;
                        boolean a = m13263a(2);
                        this.f22909d++;
                        if (!a) {
                            return c;
                        }
                    }
                    m13255c();
                    int i5 = this.f22909d;
                    char c2 = cArr[i5];
                    if (c2 == '*') {
                        this.f22909d = i5 + 1;
                        if (m13262a("*/")) {
                            i = this.f22909d + 2;
                            i2 = this.f22910e;
                        } else {
                            m13257b("Unterminated comment");
                            throw null;
                        }
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.f22909d = i5 + 1;
                        m13268J();
                        i = this.f22909d;
                        i2 = this.f22910e;
                    }
                } else if (c == '#') {
                    this.f22909d = i;
                    m13255c();
                    m13268J();
                    i = this.f22909d;
                    i2 = this.f22910e;
                } else {
                    this.f22909d = i;
                    return c;
                }
            }
            i2 = i4;
        }
    }

    /* renamed from: a */
    public void mo13265a() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 3) {
            m13258b(1);
            this.f22920o[this.f22918m - 1] = 0;
            this.f22913h = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + mo13272F() + m13247j());
    }

    /* renamed from: a */
    public final boolean m13264a(char c) throws IOException {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (!(c == '/' || c == '=')) {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        m13255c();
        return false;
    }

    /* renamed from: a */
    public final boolean m13263a(int i) throws IOException {
        int i2;
        char[] cArr = this.f22908c;
        int i3 = this.f22912g;
        int i4 = this.f22909d;
        this.f22912g = i3 - i4;
        int i5 = this.f22910e;
        if (i5 != i4) {
            this.f22910e = i5 - i4;
            System.arraycopy(cArr, i4, cArr, 0, this.f22910e);
        } else {
            this.f22910e = 0;
        }
        this.f22909d = 0;
        do {
            Reader reader = this.f22906a;
            int i6 = this.f22910e;
            int read = reader.read(cArr, i6, cArr.length - i6);
            if (read == -1) {
                return false;
            }
            this.f22910e += read;
            i2 = i;
            if (this.f22911f == 0) {
                int i7 = this.f22912g;
                i2 = i;
                if (i7 == 0) {
                    i2 = i;
                    if (this.f22910e > 0) {
                        i2 = i;
                        if (cArr[0] == 65279) {
                            this.f22909d++;
                            this.f22912g = i7 + 1;
                            i2 = i + 1;
                        }
                    }
                }
            }
            i = i2;
        } while (this.f22910e < i2);
        return true;
    }

    /* renamed from: a */
    public final boolean m13262a(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f22909d + length > this.f22910e && !m13263a(length)) {
                return false;
            }
            char[] cArr = this.f22908c;
            int i = this.f22909d;
            if (cArr[i] == '\n') {
                this.f22911f++;
                this.f22912g = i + 1;
            } else {
                for (int i2 = 0; i2 < length; i2++) {
                    if (this.f22908c[this.f22909d + i2] != str.charAt(i2)) {
                        break;
                    }
                }
                return true;
            }
            this.f22909d++;
        }
    }

    /* renamed from: b */
    public final IOException m13257b(String str) throws IOException {
        throw new C10178d(str + m13247j());
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d2, code lost:
        r14 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d6, code lost:
        if (r9 != null) goto L_0x00ee;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d9, code lost:
        r14 = new java.lang.StringBuilder(java.lang.Math.max((r12 - r10) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ee, code lost:
        r14.append(r0, r10, r12 - r10);
        r6.f22909d = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0107, code lost:
        if (m13263a(1) == false) goto L_0x0110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0110, code lost:
        m13257b("Unterminated string");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0119, code lost:
        throw null;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m13259b(char r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p384e.p391y.C10174a.m13259b(char):java.lang.String");
    }

    /* renamed from: b */
    public void mo13260b() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 1) {
            m13258b(3);
            this.f22913h = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + mo13272F() + m13247j());
    }

    /* renamed from: b */
    public final void m13258b(int i) {
        int i2 = this.f22918m;
        int[] iArr = this.f22917l;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.f22917l = Arrays.copyOf(iArr, i3);
            this.f22920o = Arrays.copyOf(this.f22920o, i3);
            this.f22919n = (String[]) Arrays.copyOf(this.f22919n, i3);
        }
        int[] iArr2 = this.f22917l;
        int i4 = this.f22918m;
        this.f22918m = i4 + 1;
        iArr2[i4] = i;
    }

    /* renamed from: b */
    public final void m13256b(boolean z) {
        this.f22907b = z;
    }

    /* renamed from: c */
    public final void m13255c() throws IOException {
        if (!this.f22907b) {
            m13257b("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw null;
        }
    }

    /* renamed from: c */
    public final void m13254c(char c) throws IOException {
        char[] cArr = this.f22908c;
        do {
            int i = this.f22909d;
            int i2 = this.f22910e;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.f22909d = i3;
                    return;
                } else if (c2 == '\\') {
                    this.f22909d = i3;
                    m13269I();
                    i = this.f22909d;
                    i2 = this.f22910e;
                } else {
                    if (c2 == '\n') {
                        this.f22911f++;
                        this.f22912g = i3;
                    }
                    i = i3;
                }
            }
            this.f22909d = i;
        } while (m13263a(1));
        m13257b("Unterminated string");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f22913h = 0;
        this.f22917l[0] = 8;
        this.f22918m = 1;
        this.f22906a.close();
    }

    /* renamed from: d */
    public final void m13253d() throws IOException {
        m13261a(true);
        this.f22909d--;
        int i = this.f22909d;
        char[] cArr = f22905p;
        if (i + cArr.length <= this.f22910e || m13263a(cArr.length)) {
            int i2 = 0;
            while (true) {
                char[] cArr2 = f22905p;
                if (i2 >= cArr2.length) {
                    this.f22909d += cArr2.length;
                    return;
                } else if (this.f22908c[this.f22909d + i2] == cArr2[i2]) {
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: e */
    public int m13252e() throws IOException {
        int a;
        int[] iArr = this.f22917l;
        int i = this.f22918m;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int a2 = m13261a(true);
            if (a2 != 44) {
                if (a2 == 59) {
                    m13255c();
                } else if (a2 == 93) {
                    this.f22913h = 4;
                    return 4;
                } else {
                    m13257b("Unterminated array");
                    throw null;
                }
            }
        } else if (i2 == 3 || i2 == 5) {
            this.f22917l[this.f22918m - 1] = 4;
            if (i2 == 5 && (a = m13261a(true)) != 44) {
                if (a == 59) {
                    m13255c();
                } else if (a == 125) {
                    this.f22913h = 2;
                    return 2;
                } else {
                    m13257b("Unterminated object");
                    throw null;
                }
            }
            int a3 = m13261a(true);
            if (a3 == 34) {
                this.f22913h = 13;
                return 13;
            } else if (a3 == 39) {
                m13255c();
                this.f22913h = 12;
                return 12;
            } else if (a3 != 125) {
                m13255c();
                this.f22909d--;
                if (m13264a((char) a3)) {
                    this.f22913h = 14;
                    return 14;
                }
                m13257b("Expected name");
                throw null;
            } else if (i2 != 5) {
                this.f22913h = 2;
                return 2;
            } else {
                m13257b("Expected name");
                throw null;
            }
        } else if (i2 == 4) {
            iArr[i - 1] = 5;
            int a4 = m13261a(true);
            if (a4 != 58) {
                if (a4 == 61) {
                    m13255c();
                    if (this.f22909d < this.f22910e || m13263a(1)) {
                        char[] cArr = this.f22908c;
                        int i3 = this.f22909d;
                        if (cArr[i3] == '>') {
                            this.f22909d = i3 + 1;
                        }
                    }
                } else {
                    m13257b("Expected ':'");
                    throw null;
                }
            }
        } else if (i2 == 6) {
            if (this.f22907b) {
                m13253d();
            }
            this.f22917l[this.f22918m - 1] = 7;
        } else if (i2 == 7) {
            if (m13261a(false) == -1) {
                this.f22913h = 17;
                return 17;
            }
            m13255c();
            this.f22909d--;
        } else if (i2 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int a5 = m13261a(true);
        if (a5 == 34) {
            this.f22913h = 9;
            return 9;
        } else if (a5 != 39) {
            if (!(a5 == 44 || a5 == 59)) {
                if (a5 == 91) {
                    this.f22913h = 3;
                    return 3;
                } else if (a5 != 93) {
                    if (a5 != 123) {
                        this.f22909d--;
                        int G = m13271G();
                        if (G != 0) {
                            return G;
                        }
                        int H = m13270H();
                        if (H != 0) {
                            return H;
                        }
                        if (m13264a(this.f22908c[this.f22909d])) {
                            m13255c();
                            this.f22913h = 10;
                            return 10;
                        }
                        m13257b("Expected value");
                        throw null;
                    }
                    this.f22913h = 1;
                    return 1;
                } else if (i2 == 1) {
                    this.f22913h = 4;
                    return 4;
                }
            }
            if (i2 == 1 || i2 == 2) {
                m13255c();
                this.f22909d--;
                this.f22913h = 7;
                return 7;
            }
            m13257b("Unexpected value");
            throw null;
        } else {
            m13255c();
            this.f22913h = 8;
            return 8;
        }
    }

    /* renamed from: f */
    public void mo13251f() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 4) {
            this.f22918m--;
            int[] iArr = this.f22920o;
            int i3 = this.f22918m - 1;
            iArr[i3] = iArr[i3] + 1;
            this.f22913h = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + mo13272F() + m13247j());
    }

    /* renamed from: g */
    public void mo13250g() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 2) {
            this.f22918m--;
            String[] strArr = this.f22919n;
            int i3 = this.f22918m;
            strArr[i3] = null;
            int[] iArr = this.f22920o;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f22913h = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + mo13272F() + m13247j());
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = this.f22918m;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f22917l[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.f22920o[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String[] strArr = this.f22919n;
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: h */
    public boolean mo13249h() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    /* renamed from: i */
    public final boolean m13248i() {
        return this.f22907b;
    }

    /* renamed from: j */
    public String m13247j() {
        int i = this.f22911f;
        int i2 = this.f22909d;
        int i3 = this.f22912g;
        return " at line " + (i + 1) + " column " + ((i2 - i3) + 1) + " path " + getPath();
    }

    /* renamed from: k */
    public boolean mo13246k() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 5) {
            this.f22913h = 0;
            int[] iArr = this.f22920o;
            int i3 = this.f22918m - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.f22913h = 0;
            int[] iArr2 = this.f22920o;
            int i4 = this.f22918m - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + mo13272F() + m13247j());
        }
    }

    /* renamed from: l */
    public double mo13245l() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 15) {
            this.f22913h = 0;
            int[] iArr = this.f22920o;
            int i3 = this.f22918m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f22914i;
        }
        if (i2 == 16) {
            this.f22916k = new String(this.f22908c, this.f22909d, this.f22915j);
            this.f22909d += this.f22915j;
        } else if (i2 == 8 || i2 == 9) {
            this.f22916k = m13259b(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.f22916k = m13273C();
        } else if (i2 != 11) {
            throw new IllegalStateException("Expected a double but was " + mo13272F() + m13247j());
        }
        this.f22913h = 11;
        double parseDouble = Double.parseDouble(this.f22916k);
        if (this.f22907b || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
            this.f22916k = null;
            this.f22913h = 0;
            int[] iArr2 = this.f22920o;
            int i4 = this.f22918m - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        }
        throw new C10178d("JSON forbids NaN and infinities: " + parseDouble + m13247j());
    }

    /* renamed from: m */
    public int mo13244m() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 15) {
            long j = this.f22914i;
            int i3 = (int) j;
            if (j == i3) {
                this.f22913h = 0;
                int[] iArr = this.f22920o;
                int i4 = this.f22918m - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            throw new NumberFormatException("Expected an int but was " + this.f22914i + m13247j());
        }
        if (i2 == 16) {
            this.f22916k = new String(this.f22908c, this.f22909d, this.f22915j);
            this.f22909d += this.f22915j;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.f22916k = m13273C();
            } else {
                this.f22916k = m13259b(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.f22916k);
                this.f22913h = 0;
                int[] iArr2 = this.f22920o;
                int i5 = this.f22918m - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + mo13272F() + m13247j());
        }
        this.f22913h = 11;
        double parseDouble = Double.parseDouble(this.f22916k);
        int i6 = (int) parseDouble;
        if (i6 == parseDouble) {
            this.f22916k = null;
            this.f22913h = 0;
            int[] iArr3 = this.f22920o;
            int i7 = this.f22918m - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        throw new NumberFormatException("Expected an int but was " + this.f22916k + m13247j());
    }

    /* renamed from: n */
    public long mo13243n() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 15) {
            this.f22913h = 0;
            int[] iArr = this.f22920o;
            int i3 = this.f22918m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f22914i;
        }
        if (i2 == 16) {
            this.f22916k = new String(this.f22908c, this.f22909d, this.f22915j);
            this.f22909d += this.f22915j;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.f22916k = m13273C();
            } else {
                this.f22916k = m13259b(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.f22916k);
                this.f22913h = 0;
                int[] iArr2 = this.f22920o;
                int i4 = this.f22918m - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + mo13272F() + m13247j());
        }
        this.f22913h = 11;
        double parseDouble = Double.parseDouble(this.f22916k);
        long j = (long) parseDouble;
        if (j == parseDouble) {
            this.f22916k = null;
            this.f22913h = 0;
            int[] iArr3 = this.f22920o;
            int i5 = this.f22918m - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j;
        }
        throw new NumberFormatException("Expected a long but was " + this.f22916k + m13247j());
    }

    /* renamed from: o */
    public String mo13242o() throws IOException {
        String str;
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 14) {
            str = m13273C();
        } else if (i2 == 12) {
            str = m13259b('\'');
        } else if (i2 == 13) {
            str = m13259b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + mo13272F() + m13247j());
        }
        this.f22913h = 0;
        this.f22919n[this.f22918m - 1] = str;
        return str;
    }

    /* renamed from: p */
    public void mo13241p() throws IOException {
        int i = this.f22913h;
        int i2 = i;
        if (i == 0) {
            i2 = m13252e();
        }
        if (i2 == 7) {
            this.f22913h = 0;
            int[] iArr = this.f22920o;
            int i3 = this.f22918m - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + mo13272F() + m13247j());
    }

    public String toString() {
        return getClass().getSimpleName() + m13247j();
    }
}
