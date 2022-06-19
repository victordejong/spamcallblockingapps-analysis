package com.bytedance.sdk.openadsdk.preload.p193a.p200d;

import com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5214f;
import com.bytedance.sdk.openadsdk.preload.p193a.p195b.p196a.C5127e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.C20753d;
/* renamed from: com.bytedance.sdk.openadsdk.preload.a.d.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/d/a.class */
public class C5244a implements Closeable {

    /* renamed from: b */
    private final Reader f18619b;

    /* renamed from: i */
    private long f18626i;

    /* renamed from: j */
    private int f18627j;

    /* renamed from: k */
    private String f18628k;

    /* renamed from: l */
    private int[] f18629l;

    /* renamed from: m */
    private int f18630m;

    /* renamed from: c */
    private boolean f18620c = false;

    /* renamed from: d */
    private final char[] f18621d = new char[1024];

    /* renamed from: e */
    private int f18622e = 0;

    /* renamed from: f */
    private int f18623f = 0;

    /* renamed from: g */
    private int f18624g = 0;

    /* renamed from: h */
    private int f18625h = 0;

    /* renamed from: a */
    int f18618a = 0;

    /* renamed from: n */
    private String[] f18631n = new String[32];

    /* renamed from: o */
    private int[] f18632o = new int[32];

    static {
        AbstractC5214f.f18572a = new AbstractC5214f() { // from class: com.bytedance.sdk.openadsdk.preload.a.d.a.1
            @Override // com.bytedance.sdk.openadsdk.preload.p193a.p195b.AbstractC5214f
            /* renamed from: a */
            public final void mo32766a(C5244a c5244a) throws IOException {
                if (c5244a instanceof C5127e) {
                    ((C5127e) c5244a).m32973o();
                    return;
                }
                int i = c5244a.f18618a;
                int i2 = i;
                if (i == 0) {
                    i2 = c5244a.m32775r();
                }
                if (i2 == 13) {
                    c5244a.f18618a = 9;
                } else if (i2 == 12) {
                    c5244a.f18618a = 8;
                } else if (i2 == 14) {
                    c5244a.f18618a = 10;
                } else {
                    throw new IllegalStateException("Expected a name but was " + c5244a.mo32787f() + c5244a.m32774s());
                }
            }
        };
    }

    public C5244a(Reader reader) {
        int[] iArr = new int[32];
        this.f18629l = iArr;
        this.f18630m = 0;
        this.f18630m = 0 + 1;
        iArr[0] = 6;
        Objects.requireNonNull(reader, "in == null");
        this.f18619b = reader;
    }

    /* renamed from: a */
    private void m32799a(int i) {
        int i2 = this.f18630m;
        int[] iArr = this.f18629l;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.f18629l = Arrays.copyOf(iArr, i3);
            this.f18632o = Arrays.copyOf(this.f18632o, i3);
            this.f18631n = (String[]) Arrays.copyOf(this.f18631n, i3);
        }
        int[] iArr2 = this.f18629l;
        int i4 = this.f18630m;
        this.f18630m = i4 + 1;
        iArr2[i4] = i;
    }

    /* renamed from: a */
    private boolean m32800a(char c) throws IOException {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
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
        m32770w();
        return false;
    }

    /* renamed from: a */
    private boolean m32798a(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f18622e + length <= this.f18623f || m32794b(length)) {
                char[] cArr = this.f18621d;
                int i = this.f18622e;
                if (cArr[i] != '\n') {
                    for (int i2 = 0; i2 < length; i2++) {
                        if (this.f18621d[this.f18622e + i2] == str.charAt(i2)) {
                        }
                    }
                    return true;
                }
                this.f18624g++;
                this.f18625h = i + 1;
                this.f18622e++;
            } else {
                return false;
            }
        }
    }

    /* renamed from: b */
    private int m32792b(boolean z) throws IOException {
        char[] cArr = this.f18621d;
        int i = this.f18622e;
        int i2 = this.f18623f;
        while (true) {
            int i3 = i2;
            int i4 = i;
            int i5 = i3;
            if (i == i3) {
                this.f18622e = i;
                if (!m32794b(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + m32774s());
                }
                i4 = this.f18622e;
                i5 = this.f18623f;
            }
            i = i4 + 1;
            char c = cArr[i4];
            if (c == '\n') {
                this.f18624g++;
                this.f18625h = i;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.f18622e = i;
                    if (i == i5) {
                        this.f18622e = i - 1;
                        boolean m32794b = m32794b(2);
                        this.f18622e++;
                        if (!m32794b) {
                            return c;
                        }
                    }
                    m32770w();
                    int i6 = this.f18622e;
                    char c2 = cArr[i6];
                    if (c2 == '*') {
                        this.f18622e = i6 + 1;
                        if (!m32798a("*/")) {
                            throw m32793b("Unterminated comment");
                        }
                        i = this.f18622e + 2;
                        i2 = this.f18623f;
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.f18622e = i6 + 1;
                        m32769x();
                        i = this.f18622e;
                        i2 = this.f18623f;
                    }
                } else if (c != '#') {
                    this.f18622e = i;
                    return c;
                } else {
                    this.f18622e = i;
                    m32770w();
                    m32769x();
                    i = this.f18622e;
                    i2 = this.f18623f;
                }
            }
            i2 = i5;
        }
    }

    /* renamed from: b */
    private IOException m32793b(String str) throws IOException {
        throw new C5248d(str + m32774s());
    }

    /* renamed from: b */
    private String m32795b(char c) throws IOException {
        char[] cArr = this.f18621d;
        StringBuilder sb = null;
        while (true) {
            StringBuilder sb2 = sb;
            int i = this.f18622e;
            int i2 = this.f18623f;
            int i3 = i;
            while (true) {
                int i4 = i3;
                if (i4 < i2) {
                    int i5 = i4 + 1;
                    char c2 = cArr[i4];
                    if (c2 == c) {
                        this.f18622e = i5;
                        int i6 = (i5 - i) - 1;
                        if (sb2 == null) {
                            return new String(cArr, i, i6);
                        }
                        sb2.append(cArr, i, i6);
                        return sb2.toString();
                    } else if (c2 == '\\') {
                        this.f18622e = i5;
                        int i7 = (i5 - i) - 1;
                        StringBuilder sb3 = sb2;
                        if (sb2 == null) {
                            sb3 = new StringBuilder(Math.max((i7 + 1) * 2, 16));
                        }
                        sb3.append(cArr, i, i7);
                        sb3.append(m32768y());
                        sb = sb3;
                    } else {
                        if (c2 == '\n') {
                            this.f18624g++;
                            this.f18625h = i5;
                        }
                        i3 = i5;
                    }
                } else {
                    StringBuilder sb4 = sb2;
                    if (sb2 == null) {
                        sb4 = new StringBuilder(Math.max((i4 - i) * 2, 16));
                    }
                    sb4.append(cArr, i, i4 - i);
                    this.f18622e = i4;
                    if (!m32794b(1)) {
                        throw m32793b("Unterminated string");
                    }
                    sb = sb4;
                }
            }
        }
    }

    /* renamed from: b */
    private boolean m32794b(int i) throws IOException {
        int i2;
        int i3;
        char[] cArr = this.f18621d;
        int i4 = this.f18625h;
        int i5 = this.f18622e;
        this.f18625h = i4 - i5;
        int i6 = this.f18623f;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.f18623f = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.f18623f = 0;
        }
        this.f18622e = 0;
        do {
            Reader reader = this.f18619b;
            int i8 = this.f18623f;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.f18623f + read;
            this.f18623f = i2;
            i3 = i;
            if (this.f18624g == 0) {
                int i9 = this.f18625h;
                i3 = i;
                if (i9 == 0) {
                    i3 = i;
                    if (i2 > 0) {
                        i3 = i;
                        if (cArr[0] == 65279) {
                            this.f18622e++;
                            this.f18625h = i9 + 1;
                            i3 = i + 1;
                        }
                    }
                }
            }
            i = i3;
        } while (i2 < i3);
        return true;
    }

    /* renamed from: c */
    private void m32790c(char c) throws IOException {
        char[] cArr = this.f18621d;
        while (true) {
            int i = this.f18622e;
            int i2 = this.f18623f;
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    char c2 = cArr[i];
                    if (c2 == c) {
                        this.f18622e = i3;
                        return;
                    } else if (c2 == '\\') {
                        this.f18622e = i3;
                        m32768y();
                        break;
                    } else {
                        if (c2 == '\n') {
                            this.f18624g++;
                            this.f18625h = i3;
                        }
                        i = i3;
                    }
                } else {
                    this.f18622e = i;
                    if (!m32794b(1)) {
                        throw m32793b("Unterminated string");
                    }
                }
            }
        }
    }

    /* renamed from: o */
    private int m32778o() throws IOException {
        String str;
        String str2;
        int i;
        char c = this.f18621d[this.f18622e];
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
            str2 = JsonReaderKt.NULL;
            str = "NULL";
        }
        int length = str2.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.f18622e + i2 >= this.f18623f && !m32794b(i2 + 1)) {
                return 0;
            }
            char c2 = this.f18621d[this.f18622e + i2];
            if (c2 != str2.charAt(i2) && c2 != str.charAt(i2)) {
                return 0;
            }
        }
        if ((this.f18622e + length < this.f18623f || m32794b(length + 1)) && m32800a(this.f18621d[this.f18622e + length])) {
            return 0;
        }
        this.f18622e += length;
        this.f18618a = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fb, code lost:
        if (r10 == true) goto L51;
     */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m32773t() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a.m32773t():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        m32770w();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /* renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m32772u() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.p193a.p200d.C5244a.m32772u():java.lang.String");
    }

    /* renamed from: v */
    private void m32771v() throws IOException {
        do {
            int i = 0;
            while (true) {
                int i2 = this.f18622e;
                if (i2 + i < this.f18623f) {
                    char c = this.f18621d[i2 + i];
                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                        if (c != '#') {
                            if (c != ',') {
                                if (c != '/' && c != '=') {
                                    if (c != '{' && c != '}' && c != ':') {
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
                    this.f18622e = i2 + i;
                }
            }
            m32770w();
            this.f18622e += i;
            return;
        } while (m32794b(1));
    }

    /* renamed from: w */
    private void m32770w() throws IOException {
        if (this.f18620c) {
            return;
        }
        throw m32793b("Use JsonReader.setLenient(true) to accept malformed JSON");
    }

    /* renamed from: x */
    private void m32769x() throws IOException {
        char c;
        do {
            if (this.f18622e >= this.f18623f && !m32794b(1)) {
                return;
            }
            char[] cArr = this.f18621d;
            int i = this.f18622e;
            int i2 = i + 1;
            this.f18622e = i2;
            c = cArr[i];
            if (c == '\n') {
                this.f18624g++;
                this.f18625h = i2;
                return;
            }
        } while (c != '\r');
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* renamed from: y */
    private char m32768y() throws IOException {
        int i;
        int i2;
        if (this.f18622e != this.f18623f || m32794b(1)) {
            char[] cArr = this.f18621d;
            int i3 = this.f18622e;
            int i4 = i3 + 1;
            this.f18622e = i4;
            char c = cArr[i3];
            if (c == '\n') {
                this.f18624g++;
                this.f18625h = i4;
            } else if (c != '\"' && c != '\'' && c != '/' && c != '\\') {
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
                    throw m32793b("Invalid escape sequence");
                }
                if (i4 + 4 > this.f18623f && !m32794b(4)) {
                    throw m32793b("Unterminated escape sequence");
                }
                int i5 = this.f18622e;
                int i6 = i5;
                char c2 = 0;
                while (true) {
                    char c3 = c2;
                    int i7 = i6;
                    if (i7 >= i5 + 4) {
                        this.f18622e += 4;
                        return c3;
                    }
                    char c4 = this.f18621d[i7];
                    char c5 = (char) (c3 << 4);
                    if (c4 < '0' || c4 > '9') {
                        if (c4 >= 'a' && c4 <= 'f') {
                            i = c4 - 'a';
                        } else if (c4 < 'A' || c4 > 'F') {
                            break;
                        } else {
                            i = c4 - 'A';
                        }
                        i2 = i + 10;
                    } else {
                        i2 = c4 - '0';
                    }
                    char c6 = (char) (c5 + i2);
                    i6 = i7 + 1;
                    c2 = c6;
                }
                throw new NumberFormatException("\\u" + new String(this.f18621d, this.f18622e, 4));
            }
            return c;
        }
        throw m32793b("Unterminated escape sequence");
    }

    /* renamed from: z */
    private void m32767z() throws IOException {
        m32792b(true);
        int i = this.f18622e - 1;
        this.f18622e = i;
        if (i + 5 <= this.f18623f || m32794b(5)) {
            char[] cArr = this.f18621d;
            if (cArr[i] != ')' || cArr[i + 1] != ']' || cArr[i + 2] != '}' || cArr[i + 3] != '\'' || cArr[i + 4] != '\n') {
                return;
            }
            this.f18622e += 5;
        }
    }

    /* renamed from: a */
    public void mo32801a() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 == 3) {
            m32799a(1);
            this.f18632o[this.f18630m - 1] = 0;
            this.f18618a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + mo32787f() + m32774s());
    }

    /* renamed from: a */
    public final void m32797a(boolean z) {
        this.f18620c = z;
    }

    /* renamed from: b */
    public void mo32796b() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + mo32787f() + m32774s());
        }
        int i3 = this.f18630m - 1;
        this.f18630m = i3;
        int[] iArr = this.f18632o;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.f18618a = 0;
    }

    /* renamed from: c */
    public void mo32791c() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 == 1) {
            m32799a(3);
            this.f18618a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + mo32787f() + m32774s());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f18618a = 0;
        this.f18629l[0] = 8;
        this.f18630m = 1;
        this.f18619b.close();
    }

    /* renamed from: d */
    public void mo32789d() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + mo32787f() + m32774s());
        }
        int i3 = this.f18630m - 1;
        this.f18630m = i3;
        this.f18631n[i3] = null;
        int[] iArr = this.f18632o;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.f18618a = 0;
    }

    /* renamed from: e */
    public boolean mo32788e() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    /* renamed from: f */
    public EnumC5246b mo32787f() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        switch (i2) {
            case 1:
                return EnumC5246b.BEGIN_OBJECT;
            case 2:
                return EnumC5246b.END_OBJECT;
            case 3:
                return EnumC5246b.BEGIN_ARRAY;
            case 4:
                return EnumC5246b.END_ARRAY;
            case 5:
            case 6:
                return EnumC5246b.BOOLEAN;
            case 7:
                return EnumC5246b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return EnumC5246b.STRING;
            case 12:
            case 13:
            case 14:
                return EnumC5246b.NAME;
            case 15:
            case 16:
                return EnumC5246b.NUMBER;
            case 17:
                return EnumC5246b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: g */
    public String mo32786g() throws IOException {
        String str;
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 == 14) {
            str = m32772u();
        } else if (i2 == 12) {
            str = m32795b('\'');
        } else if (i2 != 13) {
            throw new IllegalStateException("Expected a name but was " + mo32787f() + m32774s());
        } else {
            str = m32795b('\"');
        }
        this.f18618a = 0;
        this.f18631n[this.f18630m - 1] = str;
        return str;
    }

    /* renamed from: h */
    public String mo32785h() throws IOException {
        String str;
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 == 10) {
            str = m32772u();
        } else if (i2 == 8) {
            str = m32795b('\'');
        } else if (i2 == 9) {
            str = m32795b('\"');
        } else if (i2 == 11) {
            str = this.f18628k;
            this.f18628k = null;
        } else if (i2 == 15) {
            str = Long.toString(this.f18626i);
        } else if (i2 != 16) {
            throw new IllegalStateException("Expected a string but was " + mo32787f() + m32774s());
        } else {
            str = new String(this.f18621d, this.f18622e, this.f18627j);
            this.f18622e += this.f18627j;
        }
        this.f18618a = 0;
        int[] iArr = this.f18632o;
        int i3 = this.f18630m - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* renamed from: i */
    public boolean mo32784i() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 == 5) {
            this.f18618a = 0;
            int[] iArr = this.f18632o;
            int i3 = this.f18630m - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 != 6) {
            throw new IllegalStateException("Expected a boolean but was " + mo32787f() + m32774s());
        } else {
            this.f18618a = 0;
            int[] iArr2 = this.f18632o;
            int i4 = this.f18630m - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        }
    }

    /* renamed from: j */
    public void mo32783j() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 != 7) {
            throw new IllegalStateException("Expected null but was " + mo32787f() + m32774s());
        }
        this.f18618a = 0;
        int[] iArr = this.f18632o;
        int i3 = this.f18630m - 1;
        iArr[i3] = iArr[i3] + 1;
    }

    /* renamed from: k */
    public double mo32782k() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 == 15) {
            this.f18618a = 0;
            int[] iArr = this.f18632o;
            int i3 = this.f18630m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f18626i;
        }
        if (i2 == 16) {
            this.f18628k = new String(this.f18621d, this.f18622e, this.f18627j);
            this.f18622e += this.f18627j;
        } else if (i2 == 8 || i2 == 9) {
            this.f18628k = m32795b(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.f18628k = m32772u();
        } else if (i2 != 11) {
            throw new IllegalStateException("Expected a double but was " + mo32787f() + m32774s());
        }
        this.f18618a = 11;
        double parseDouble = Double.parseDouble(this.f18628k);
        if (!this.f18620c && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new C5248d("JSON forbids NaN and infinities: " + parseDouble + m32774s());
        }
        this.f18628k = null;
        this.f18618a = 0;
        int[] iArr2 = this.f18632o;
        int i4 = this.f18630m - 1;
        iArr2[i4] = iArr2[i4] + 1;
        return parseDouble;
    }

    /* renamed from: l */
    public long mo32781l() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 == 15) {
            this.f18618a = 0;
            int[] iArr = this.f18632o;
            int i3 = this.f18630m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f18626i;
        }
        if (i2 == 16) {
            this.f18628k = new String(this.f18621d, this.f18622e, this.f18627j);
            this.f18622e += this.f18627j;
        } else if (i2 != 8 && i2 != 9 && i2 != 10) {
            throw new IllegalStateException("Expected a long but was " + mo32787f() + m32774s());
        } else {
            if (i2 == 10) {
                this.f18628k = m32772u();
            } else {
                this.f18628k = m32795b(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.f18628k);
                this.f18618a = 0;
                int[] iArr2 = this.f18632o;
                int i4 = this.f18630m - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        }
        this.f18618a = 11;
        double parseDouble = Double.parseDouble(this.f18628k);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.f18628k + m32774s());
        }
        this.f18628k = null;
        this.f18618a = 0;
        int[] iArr3 = this.f18632o;
        int i5 = this.f18630m - 1;
        iArr3[i5] = iArr3[i5] + 1;
        return j;
    }

    /* renamed from: m */
    public int mo32780m() throws IOException {
        int i = this.f18618a;
        int i2 = i;
        if (i == 0) {
            i2 = m32775r();
        }
        if (i2 == 15) {
            long j = this.f18626i;
            int i3 = (int) j;
            if (j != i3) {
                throw new NumberFormatException("Expected an int but was " + this.f18626i + m32774s());
            }
            this.f18618a = 0;
            int[] iArr = this.f18632o;
            int i4 = this.f18630m - 1;
            iArr[i4] = iArr[i4] + 1;
            return i3;
        }
        if (i2 == 16) {
            this.f18628k = new String(this.f18621d, this.f18622e, this.f18627j);
            this.f18622e += this.f18627j;
        } else if (i2 != 8 && i2 != 9 && i2 != 10) {
            throw new IllegalStateException("Expected an int but was " + mo32787f() + m32774s());
        } else {
            if (i2 == 10) {
                this.f18628k = m32772u();
            } else {
                this.f18628k = m32795b(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.f18628k);
                this.f18618a = 0;
                int[] iArr2 = this.f18632o;
                int i5 = this.f18630m - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        }
        this.f18618a = 11;
        double parseDouble = Double.parseDouble(this.f18628k);
        int i6 = (int) parseDouble;
        if (i6 != parseDouble) {
            throw new NumberFormatException("Expected an int but was " + this.f18628k + m32774s());
        }
        this.f18628k = null;
        this.f18618a = 0;
        int[] iArr3 = this.f18632o;
        int i7 = this.f18630m - 1;
        iArr3[i7] = iArr3[i7] + 1;
        return i6;
    }

    /* renamed from: n */
    public void mo32779n() throws IOException {
        int i;
        int i2 = 0;
        do {
            int i3 = this.f18618a;
            int i4 = i3;
            if (i3 == 0) {
                i4 = m32775r();
            }
            if (i4 == 3) {
                m32799a(1);
            } else if (i4 == 1) {
                m32799a(3);
            } else {
                if (i4 == 4) {
                    this.f18630m--;
                } else if (i4 == 2) {
                    this.f18630m--;
                } else {
                    if (i4 == 14 || i4 == 10) {
                        m32771v();
                        i = i2;
                    } else if (i4 == 8 || i4 == 12) {
                        m32790c('\'');
                        i = i2;
                    } else if (i4 == 9 || i4 == 13) {
                        m32790c('\"');
                        i = i2;
                    } else {
                        i = i2;
                        if (i4 == 16) {
                            this.f18622e += this.f18627j;
                            i = i2;
                        }
                    }
                    this.f18618a = 0;
                    i2 = i;
                }
                i = i2 - 1;
                this.f18618a = 0;
                i2 = i;
            }
            i = i2 + 1;
            this.f18618a = 0;
            i2 = i;
        } while (i != 0);
        int[] iArr = this.f18632o;
        int i5 = this.f18630m;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.f18631n[i5 - 1] = JsonReaderKt.NULL;
    }

    /* renamed from: p */
    public String mo32777p() {
        StringBuilder sb = new StringBuilder(C20753d.f67243b);
        int i = this.f18630m;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f18629l[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.f18632o[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String[] strArr = this.f18631n;
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: q */
    public final boolean m32776q() {
        return this.f18620c;
    }

    /* renamed from: r */
    int m32775r() throws IOException {
        int m32792b;
        int[] iArr = this.f18629l;
        int i = this.f18630m;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int m32792b2 = m32792b(true);
            if (m32792b2 != 44) {
                if (m32792b2 != 59) {
                    if (m32792b2 != 93) {
                        throw m32793b("Unterminated array");
                    }
                    this.f18618a = 4;
                    return 4;
                }
                m32770w();
            }
        } else if (i2 == 3 || i2 == 5) {
            iArr[i - 1] = 4;
            if (i2 == 5 && (m32792b = m32792b(true)) != 44) {
                if (m32792b != 59) {
                    if (m32792b != 125) {
                        throw m32793b("Unterminated object");
                    }
                    this.f18618a = 2;
                    return 2;
                }
                m32770w();
            }
            int m32792b3 = m32792b(true);
            if (m32792b3 == 34) {
                this.f18618a = 13;
                return 13;
            } else if (m32792b3 == 39) {
                m32770w();
                this.f18618a = 12;
                return 12;
            } else if (m32792b3 == 125) {
                if (i2 == 5) {
                    throw m32793b("Expected name");
                }
                this.f18618a = 2;
                return 2;
            } else {
                m32770w();
                this.f18622e--;
                if (!m32800a((char) m32792b3)) {
                    throw m32793b("Expected name");
                }
                this.f18618a = 14;
                return 14;
            }
        } else if (i2 == 4) {
            iArr[i - 1] = 5;
            int m32792b4 = m32792b(true);
            if (m32792b4 != 58) {
                if (m32792b4 != 61) {
                    throw m32793b("Expected ':'");
                }
                m32770w();
                if (this.f18622e < this.f18623f || m32794b(1)) {
                    char[] cArr = this.f18621d;
                    int i3 = this.f18622e;
                    if (cArr[i3] == '>') {
                        this.f18622e = i3 + 1;
                    }
                }
            }
        } else if (i2 == 6) {
            if (this.f18620c) {
                m32767z();
            }
            this.f18629l[this.f18630m - 1] = 7;
        } else if (i2 == 7) {
            if (m32792b(false) == -1) {
                this.f18618a = 17;
                return 17;
            }
            m32770w();
            this.f18622e--;
        } else if (i2 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int m32792b5 = m32792b(true);
        if (m32792b5 == 34) {
            this.f18618a = 9;
            return 9;
        } else if (m32792b5 == 39) {
            m32770w();
            this.f18618a = 8;
            return 8;
        } else {
            if (m32792b5 != 44 && m32792b5 != 59) {
                if (m32792b5 == 91) {
                    this.f18618a = 3;
                    return 3;
                } else if (m32792b5 != 93) {
                    if (m32792b5 == 123) {
                        this.f18618a = 1;
                        return 1;
                    }
                    this.f18622e--;
                    int m32778o = m32778o();
                    if (m32778o != 0) {
                        return m32778o;
                    }
                    int m32773t = m32773t();
                    if (m32773t != 0) {
                        return m32773t;
                    }
                    if (!m32800a(this.f18621d[this.f18622e])) {
                        throw m32793b("Expected value");
                    }
                    m32770w();
                    this.f18618a = 10;
                    return 10;
                } else if (i2 == 1) {
                    this.f18618a = 4;
                    return 4;
                }
            }
            if (i2 != 1 && i2 != 2) {
                throw m32793b("Unexpected value");
            }
            m32770w();
            this.f18622e--;
            this.f18618a = 7;
            return 7;
        }
    }

    /* renamed from: s */
    String m32774s() {
        int i = this.f18624g;
        int i2 = this.f18622e;
        int i3 = this.f18625h;
        return " at line " + (i + 1) + " column " + ((i2 - i3) + 1) + " path " + mo32777p();
    }

    public String toString() {
        return getClass().getSimpleName() + m32774s();
    }
}
