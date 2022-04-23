package p131c.p161d.p354f.p361v;

import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import p131c.p161d.p354f.p356t.AbstractC6156e;
import p131c.p161d.p354f.p356t.p357k.C6175e;
/* renamed from: c.d.f.v.a */
/* loaded from: classes2-dex2jar.jar:c/d/f/v/a.class */
public class C6240a implements Closeable {

    /* renamed from: p */
    public static final char[] f19817p = ")]}'\n".toCharArray();

    /* renamed from: a */
    public final Reader f19818a;

    /* renamed from: i */
    public long f19826i;

    /* renamed from: j */
    public int f19827j;

    /* renamed from: k */
    public String f19828k;

    /* renamed from: l */
    public int[] f19829l;

    /* renamed from: m */
    public int f19830m;

    /* renamed from: b */
    public boolean f19819b = false;

    /* renamed from: c */
    public final char[] f19820c = new char[1024];

    /* renamed from: d */
    public int f19821d = 0;

    /* renamed from: e */
    public int f19822e = 0;

    /* renamed from: f */
    public int f19823f = 0;

    /* renamed from: g */
    public int f19824g = 0;

    /* renamed from: h */
    public int f19825h = 0;

    /* renamed from: n */
    public String[] f19831n = new String[32];

    /* renamed from: o */
    public int[] f19832o = new int[32];

    /* renamed from: c.d.f.v.a$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/v/a$a.class */
    public class C6241a extends AbstractC6156e {
        @Override // p131c.p161d.p354f.p356t.AbstractC6156e
        /* renamed from: a */
        public void mo21796a(C6240a aVar) throws IOException {
            if (aVar instanceof C6175e) {
                ((C6175e) aVar).m21899D();
                return;
            }
            int i = aVar.f19825h;
            int i2 = i;
            if (i == 0) {
                i2 = aVar.m21817e();
            }
            if (i2 == 13) {
                aVar.f19825h = 9;
            } else if (i2 == 12) {
                aVar.f19825h = 8;
            } else if (i2 == 14) {
                aVar.f19825h = 10;
            } else {
                throw new IllegalStateException("Expected a name but was " + aVar.mo21802u() + aVar.m21811k());
            }
        }
    }

    static {
        AbstractC6156e.f19673a = new C6241a();
    }

    public C6240a(Reader reader) {
        int[] iArr = new int[32];
        this.f19829l = iArr;
        this.f19830m = 0;
        this.f19830m = 0 + 1;
        iArr[0] = 6;
        if (reader != null) {
            this.f19818a = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    /* renamed from: A */
    public void mo21831A() throws IOException {
        int i;
        int i2 = 0;
        do {
            int i3 = this.f19825h;
            int i4 = i3;
            if (i3 == 0) {
                i4 = m21817e();
            }
            if (i4 == 3) {
                m21823b(1);
            } else if (i4 == 1) {
                m21823b(3);
            } else {
                if (i4 == 4) {
                    this.f19830m--;
                } else if (i4 == 2) {
                    this.f19830m--;
                } else {
                    if (i4 == 14 || i4 == 10) {
                        m21797z();
                        i = i2;
                    } else if (i4 == 8 || i4 == 12) {
                        m21819c('\'');
                        i = i2;
                    } else if (i4 == 9 || i4 == 13) {
                        m21819c('\"');
                        i = i2;
                    } else {
                        i = i2;
                        if (i4 == 16) {
                            this.f19821d += this.f19827j;
                            i = i2;
                        }
                    }
                    this.f19825h = 0;
                    i2 = i;
                }
                i = i2 - 1;
                this.f19825h = 0;
                i2 = i;
            }
            i = i2 + 1;
            this.f19825h = 0;
            i2 = i;
        } while (i != 0);
        int[] iArr = this.f19832o;
        int i5 = this.f19830m;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.f19831n[i5 - 1] = "null";
    }

    /* renamed from: a */
    public final int m21826a(boolean z) throws IOException {
        char[] cArr = this.f19820c;
        int i = this.f19821d;
        int i2 = this.f19822e;
        while (true) {
            int i3 = i;
            int i4 = i2;
            if (i == i2) {
                this.f19821d = i;
                if (m21828a(1)) {
                    i3 = this.f19821d;
                    i4 = this.f19822e;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException("End of input" + m21811k());
                }
            }
            i = i3 + 1;
            char c = cArr[i3];
            if (c == '\n') {
                this.f19823f++;
                this.f19824g = i;
            } else if (!(c == ' ' || c == '\r' || c == '\t')) {
                if (c == '/') {
                    this.f19821d = i;
                    if (i == i4) {
                        this.f19821d = i - 1;
                        boolean a = m21828a(2);
                        this.f19821d++;
                        if (!a) {
                            return c;
                        }
                    }
                    m21820c();
                    int i5 = this.f19821d;
                    char c2 = cArr[i5];
                    if (c2 == '*') {
                        this.f19821d = i5 + 1;
                        if (m21827a("*/")) {
                            i = this.f19821d + 2;
                            i2 = this.f19822e;
                        } else {
                            m21822b("Unterminated comment");
                            throw null;
                        }
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.f19821d = i5 + 1;
                        m21798y();
                        i = this.f19821d;
                        i2 = this.f19822e;
                    }
                } else if (c == '#') {
                    this.f19821d = i;
                    m21820c();
                    m21798y();
                    i = this.f19821d;
                    i2 = this.f19822e;
                } else {
                    this.f19821d = i;
                    return c;
                }
            }
            i2 = i4;
        }
    }

    /* renamed from: a */
    public void mo21830a() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 3) {
            m21823b(1);
            this.f19832o[this.f19830m - 1] = 0;
            this.f19825h = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + mo21802u() + m21811k());
    }

    /* renamed from: a */
    public final boolean m21829a(char c) throws IOException {
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
        m21820c();
        return false;
    }

    /* renamed from: a */
    public final boolean m21828a(int i) throws IOException {
        int i2;
        char[] cArr = this.f19820c;
        int i3 = this.f19824g;
        int i4 = this.f19821d;
        this.f19824g = i3 - i4;
        int i5 = this.f19822e;
        if (i5 != i4) {
            int i6 = i5 - i4;
            this.f19822e = i6;
            System.arraycopy(cArr, i4, cArr, 0, i6);
        } else {
            this.f19822e = 0;
        }
        this.f19821d = 0;
        do {
            Reader reader = this.f19818a;
            int i7 = this.f19822e;
            int read = reader.read(cArr, i7, cArr.length - i7);
            if (read == -1) {
                return false;
            }
            int i8 = this.f19822e + read;
            this.f19822e = i8;
            i2 = i;
            if (this.f19823f == 0) {
                int i9 = this.f19824g;
                i2 = i;
                if (i9 == 0) {
                    i2 = i;
                    if (i8 > 0) {
                        i2 = i;
                        if (cArr[0] == 65279) {
                            this.f19821d++;
                            this.f19824g = i9 + 1;
                            i2 = i + 1;
                        }
                    }
                }
            }
            i = i2;
        } while (this.f19822e < i2);
        return true;
    }

    /* renamed from: a */
    public final boolean m21827a(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f19821d + length > this.f19822e && !m21828a(length)) {
                return false;
            }
            char[] cArr = this.f19820c;
            int i = this.f19821d;
            if (cArr[i] == '\n') {
                this.f19823f++;
                this.f19824g = i + 1;
            } else {
                for (int i2 = 0; i2 < length; i2++) {
                    if (this.f19820c[this.f19821d + i2] != str.charAt(i2)) {
                        break;
                    }
                }
                return true;
            }
            this.f19821d++;
        }
    }

    /* renamed from: b */
    public final IOException m21822b(String str) throws IOException {
        throw new MalformedJsonException(str + m21811k());
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
        r6.f19821d = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0107, code lost:
        if (m21828a(1) == false) goto L_0x0110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0110, code lost:
        m21822b("Unterminated string");
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x011b, code lost:
        throw null;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m21824b(char r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p354f.p361v.C6240a.m21824b(char):java.lang.String");
    }

    /* renamed from: b */
    public void mo21825b() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 1) {
            m21823b(3);
            this.f19825h = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + mo21802u() + m21811k());
    }

    /* renamed from: b */
    public final void m21823b(int i) {
        int i2 = this.f19830m;
        int[] iArr = this.f19829l;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.f19829l = Arrays.copyOf(iArr, i3);
            this.f19832o = Arrays.copyOf(this.f19832o, i3);
            this.f19831n = (String[]) Arrays.copyOf(this.f19831n, i3);
        }
        int[] iArr2 = this.f19829l;
        int i4 = this.f19830m;
        this.f19830m = i4 + 1;
        iArr2[i4] = i;
    }

    /* renamed from: b */
    public final void m21821b(boolean z) {
        this.f19819b = z;
    }

    /* renamed from: c */
    public final void m21820c() throws IOException {
        if (!this.f19819b) {
            m21822b("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw null;
        }
    }

    /* renamed from: c */
    public final void m21819c(char c) throws IOException {
        char[] cArr = this.f19820c;
        do {
            int i = this.f19821d;
            int i2 = this.f19822e;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.f19821d = i3;
                    return;
                } else if (c2 == '\\') {
                    this.f19821d = i3;
                    m21799x();
                    i = this.f19821d;
                    i2 = this.f19822e;
                } else {
                    if (c2 == '\n') {
                        this.f19823f++;
                        this.f19824g = i3;
                    }
                    i = i3;
                }
            }
            this.f19821d = i;
        } while (m21828a(1));
        m21822b("Unterminated string");
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f19825h = 0;
        this.f19829l[0] = 8;
        this.f19830m = 1;
        this.f19818a.close();
    }

    /* renamed from: d */
    public final void m21818d() throws IOException {
        m21826a(true);
        int i = this.f19821d - 1;
        this.f19821d = i;
        char[] cArr = f19817p;
        if (i + cArr.length <= this.f19822e || m21828a(cArr.length)) {
            int i2 = 0;
            while (true) {
                char[] cArr2 = f19817p;
                if (i2 >= cArr2.length) {
                    this.f19821d += cArr2.length;
                    return;
                } else if (this.f19820c[this.f19821d + i2] == cArr2[i2]) {
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: e */
    public int m21817e() throws IOException {
        int a;
        int[] iArr = this.f19829l;
        int i = this.f19830m;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int a2 = m21826a(true);
            if (a2 != 44) {
                if (a2 == 59) {
                    m21820c();
                } else if (a2 == 93) {
                    this.f19825h = 4;
                    return 4;
                } else {
                    m21822b("Unterminated array");
                    throw null;
                }
            }
        } else if (i2 == 3 || i2 == 5) {
            this.f19829l[this.f19830m - 1] = 4;
            if (i2 == 5 && (a = m21826a(true)) != 44) {
                if (a == 59) {
                    m21820c();
                } else if (a == 125) {
                    this.f19825h = 2;
                    return 2;
                } else {
                    m21822b("Unterminated object");
                    throw null;
                }
            }
            int a3 = m21826a(true);
            if (a3 == 34) {
                this.f19825h = 13;
                return 13;
            } else if (a3 == 39) {
                m21820c();
                this.f19825h = 12;
                return 12;
            } else if (a3 != 125) {
                m21820c();
                this.f19821d--;
                if (m21829a((char) a3)) {
                    this.f19825h = 14;
                    return 14;
                }
                m21822b("Expected name");
                throw null;
            } else if (i2 != 5) {
                this.f19825h = 2;
                return 2;
            } else {
                m21822b("Expected name");
                throw null;
            }
        } else if (i2 == 4) {
            iArr[i - 1] = 5;
            int a4 = m21826a(true);
            if (a4 != 58) {
                if (a4 == 61) {
                    m21820c();
                    if (this.f19821d < this.f19822e || m21828a(1)) {
                        char[] cArr = this.f19820c;
                        int i3 = this.f19821d;
                        if (cArr[i3] == '>') {
                            this.f19821d = i3 + 1;
                        }
                    }
                } else {
                    m21822b("Expected ':'");
                    throw null;
                }
            }
        } else if (i2 == 6) {
            if (this.f19819b) {
                m21818d();
            }
            this.f19829l[this.f19830m - 1] = 7;
        } else if (i2 == 7) {
            if (m21826a(false) == -1) {
                this.f19825h = 17;
                return 17;
            }
            m21820c();
            this.f19821d--;
        } else if (i2 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int a5 = m21826a(true);
        if (a5 == 34) {
            this.f19825h = 9;
            return 9;
        } else if (a5 != 39) {
            if (!(a5 == 44 || a5 == 59)) {
                if (a5 == 91) {
                    this.f19825h = 3;
                    return 3;
                } else if (a5 != 93) {
                    if (a5 != 123) {
                        this.f19821d--;
                        int v = m21801v();
                        if (v != 0) {
                            return v;
                        }
                        int w = m21800w();
                        if (w != 0) {
                            return w;
                        }
                        if (m21829a(this.f19820c[this.f19821d])) {
                            m21820c();
                            this.f19825h = 10;
                            return 10;
                        }
                        m21822b("Expected value");
                        throw null;
                    }
                    this.f19825h = 1;
                    return 1;
                } else if (i2 == 1) {
                    this.f19825h = 4;
                    return 4;
                }
            }
            if (i2 == 1 || i2 == 2) {
                m21820c();
                this.f19821d--;
                this.f19825h = 7;
                return 7;
            }
            m21822b("Unexpected value");
            throw null;
        } else {
            m21820c();
            this.f19825h = 8;
            return 8;
        }
    }

    /* renamed from: f */
    public void mo21816f() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 4) {
            int i3 = this.f19830m - 1;
            this.f19830m = i3;
            int[] iArr = this.f19832o;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f19825h = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + mo21802u() + m21811k());
    }

    /* renamed from: g */
    public void mo21815g() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 2) {
            int i3 = this.f19830m - 1;
            this.f19830m = i3;
            this.f19831n[i3] = null;
            int[] iArr = this.f19832o;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f19825h = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + mo21802u() + m21811k());
    }

    /* renamed from: h */
    public String mo21814h() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = this.f19830m;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f19829l[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.f19832o[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String[] strArr = this.f19831n;
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: i */
    public boolean mo21813i() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    /* renamed from: j */
    public final boolean m21812j() {
        return this.f19819b;
    }

    /* renamed from: k */
    public String m21811k() {
        int i = this.f19823f;
        int i2 = this.f19821d;
        int i3 = this.f19824g;
        return " at line " + (i + 1) + " column " + ((i2 - i3) + 1) + " path " + mo21814h();
    }

    /* renamed from: l */
    public boolean mo21810l() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 5) {
            this.f19825h = 0;
            int[] iArr = this.f19832o;
            int i3 = this.f19830m - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.f19825h = 0;
            int[] iArr2 = this.f19832o;
            int i4 = this.f19830m - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + mo21802u() + m21811k());
        }
    }

    /* renamed from: m */
    public double mo21809m() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 15) {
            this.f19825h = 0;
            int[] iArr = this.f19832o;
            int i3 = this.f19830m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f19826i;
        }
        if (i2 == 16) {
            this.f19828k = new String(this.f19820c, this.f19821d, this.f19827j);
            this.f19821d += this.f19827j;
        } else if (i2 == 8 || i2 == 9) {
            this.f19828k = m21824b(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.f19828k = m21803t();
        } else if (i2 != 11) {
            throw new IllegalStateException("Expected a double but was " + mo21802u() + m21811k());
        }
        this.f19825h = 11;
        double parseDouble = Double.parseDouble(this.f19828k);
        if (this.f19819b || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
            this.f19828k = null;
            this.f19825h = 0;
            int[] iArr2 = this.f19832o;
            int i4 = this.f19830m - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + m21811k());
    }

    /* renamed from: n */
    public int mo21808n() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 15) {
            long j = this.f19826i;
            int i3 = (int) j;
            if (j == i3) {
                this.f19825h = 0;
                int[] iArr = this.f19832o;
                int i4 = this.f19830m - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            throw new NumberFormatException("Expected an int but was " + this.f19826i + m21811k());
        }
        if (i2 == 16) {
            this.f19828k = new String(this.f19820c, this.f19821d, this.f19827j);
            this.f19821d += this.f19827j;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.f19828k = m21803t();
            } else {
                this.f19828k = m21824b(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.f19828k);
                this.f19825h = 0;
                int[] iArr2 = this.f19832o;
                int i5 = this.f19830m - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + mo21802u() + m21811k());
        }
        this.f19825h = 11;
        double parseDouble = Double.parseDouble(this.f19828k);
        int i6 = (int) parseDouble;
        if (i6 == parseDouble) {
            this.f19828k = null;
            this.f19825h = 0;
            int[] iArr3 = this.f19832o;
            int i7 = this.f19830m - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        throw new NumberFormatException("Expected an int but was " + this.f19828k + m21811k());
    }

    /* renamed from: p */
    public long mo21807p() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 15) {
            this.f19825h = 0;
            int[] iArr = this.f19832o;
            int i3 = this.f19830m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f19826i;
        }
        if (i2 == 16) {
            this.f19828k = new String(this.f19820c, this.f19821d, this.f19827j);
            this.f19821d += this.f19827j;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.f19828k = m21803t();
            } else {
                this.f19828k = m21824b(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.f19828k);
                this.f19825h = 0;
                int[] iArr2 = this.f19832o;
                int i4 = this.f19830m - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + mo21802u() + m21811k());
        }
        this.f19825h = 11;
        double parseDouble = Double.parseDouble(this.f19828k);
        long j = (long) parseDouble;
        if (j == parseDouble) {
            this.f19828k = null;
            this.f19825h = 0;
            int[] iArr3 = this.f19832o;
            int i5 = this.f19830m - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j;
        }
        throw new NumberFormatException("Expected a long but was " + this.f19828k + m21811k());
    }

    /* renamed from: q */
    public String mo21806q() throws IOException {
        String str;
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 14) {
            str = m21803t();
        } else if (i2 == 12) {
            str = m21824b('\'');
        } else if (i2 == 13) {
            str = m21824b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + mo21802u() + m21811k());
        }
        this.f19825h = 0;
        this.f19831n[this.f19830m - 1] = str;
        return str;
    }

    /* renamed from: r */
    public void mo21805r() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 7) {
            this.f19825h = 0;
            int[] iArr = this.f19832o;
            int i3 = this.f19830m - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + mo21802u() + m21811k());
    }

    /* renamed from: s */
    public String mo21804s() throws IOException {
        String str;
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        if (i2 == 10) {
            str = m21803t();
        } else if (i2 == 8) {
            str = m21824b('\'');
        } else if (i2 == 9) {
            str = m21824b('\"');
        } else if (i2 == 11) {
            str = this.f19828k;
            this.f19828k = null;
        } else if (i2 == 15) {
            str = Long.toString(this.f19826i);
        } else if (i2 == 16) {
            str = new String(this.f19820c, this.f19821d, this.f19827j);
            this.f19821d += this.f19827j;
        } else {
            throw new IllegalStateException("Expected a string but was " + mo21802u() + m21811k());
        }
        this.f19825h = 0;
        int[] iArr = this.f19832o;
        int i3 = this.f19830m - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        m21820c();
     */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m21803t() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p354f.p361v.C6240a.m21803t():java.lang.String");
    }

    public String toString() {
        return getClass().getSimpleName() + m21811k();
    }

    /* renamed from: u */
    public JsonToken mo21802u() throws IOException {
        int i = this.f19825h;
        int i2 = i;
        if (i == 0) {
            i2 = m21817e();
        }
        switch (i2) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: v */
    public final int m21801v() throws IOException {
        String str;
        String str2;
        int i;
        char c = this.f19820c[this.f19821d];
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
            str2 = "null";
            str = "NULL";
        }
        int length = str2.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.f19821d + i2 >= this.f19822e && !m21828a(i2 + 1)) {
                return 0;
            }
            char c2 = this.f19820c[this.f19821d + i2];
            if (!(c2 == str2.charAt(i2) || c2 == str.charAt(i2))) {
                return 0;
            }
        }
        if ((this.f19821d + length < this.f19822e || m21828a(length + 1)) && m21829a(this.f19820c[this.f19821d + length])) {
            return 0;
        }
        this.f19821d += length;
        this.f19825h = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0101, code lost:
        if (r10 == 6) goto L_0x0111;
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
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m21800w() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p354f.p361v.C6240a.m21800w():int");
    }

    /* renamed from: x */
    public final char m21799x() throws IOException {
        int i;
        int i2;
        if (this.f19821d != this.f19822e || m21828a(1)) {
            char[] cArr = this.f19820c;
            int i3 = this.f19821d;
            int i4 = i3 + 1;
            this.f19821d = i4;
            char c = cArr[i3];
            if (c == '\n') {
                this.f19823f++;
                this.f19824g = i4;
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
                    m21822b("Invalid escape sequence");
                    throw null;
                } else if (i4 + 4 <= this.f19822e || m21828a(4)) {
                    char c2 = 0;
                    int i5 = this.f19821d;
                    for (int i6 = i5; i6 < i5 + 4; i6++) {
                        char c3 = this.f19820c[i6];
                        char c4 = (char) (c2 << 4);
                        if (c3 < '0' || c3 > '9') {
                            if (c3 >= 'a' && c3 <= 'f') {
                                i = c3 - 'a';
                            } else if (c3 < 'A' || c3 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.f19820c, this.f19821d, 4));
                            } else {
                                i = c3 - 'A';
                            }
                            i2 = i + 10;
                        } else {
                            i2 = c3 - '0';
                        }
                        c2 = (char) (c4 + i2);
                    }
                    this.f19821d += 4;
                    return c2;
                } else {
                    m21822b("Unterminated escape sequence");
                    throw null;
                }
            }
            return c;
        }
        m21822b("Unterminated escape sequence");
        throw null;
    }

    /* renamed from: y */
    public final void m21798y() throws IOException {
        char c;
        do {
            if (this.f19821d < this.f19822e || m21828a(1)) {
                char[] cArr = this.f19820c;
                int i = this.f19821d;
                int i2 = i + 1;
                this.f19821d = i2;
                c = cArr[i];
                if (c == '\n') {
                    this.f19823f++;
                    this.f19824g = i2;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    /* renamed from: z */
    public final void m21797z() throws IOException {
        do {
            int i = 0;
            while (true) {
                int i2 = this.f19821d;
                if (i2 + i < this.f19822e) {
                    char c = this.f19820c[i2 + i];
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
                    this.f19821d = i2 + i;
                }
            }
            m21820c();
            this.f19821d += i;
            return;
        } while (m21828a(1));
    }
}
