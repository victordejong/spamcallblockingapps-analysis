package com.bytedance.sdk.openadsdk.preload.a.d;

import com.bytedance.sdk.openadsdk.preload.a.b.a.e;
import com.bytedance.sdk.openadsdk.preload.a.b.f;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.d;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/a/d/a.class */
public class a implements Closeable {

    /* renamed from: b  reason: collision with root package name */
    private final Reader f10064b;
    private long i;
    private int j;
    private String k;
    private int[] l;
    private int m;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10065c = false;

    /* renamed from: d  reason: collision with root package name */
    private final char[] f10066d = new char[1024];
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;

    /* renamed from: a  reason: collision with root package name */
    int f10063a = 0;
    private String[] n = new String[32];
    private int[] o = new int[32];

    static {
        f.f10030a = new f() { // from class: com.bytedance.sdk.openadsdk.preload.a.d.a.1
            @Override // com.bytedance.sdk.openadsdk.preload.a.b.f
            public final void a(a aVar) throws IOException {
                if (aVar instanceof e) {
                    ((e) aVar).o();
                    return;
                }
                int i = aVar.f10063a;
                int i2 = i;
                if (i == 0) {
                    i2 = aVar.r();
                }
                if (i2 == 13) {
                    aVar.f10063a = 9;
                } else if (i2 == 12) {
                    aVar.f10063a = 8;
                } else if (i2 == 14) {
                    aVar.f10063a = 10;
                } else {
                    throw new IllegalStateException("Expected a name but was " + aVar.f() + aVar.s());
                }
            }
        };
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.l = iArr;
        this.m = 0;
        this.m = 0 + 1;
        iArr[0] = 6;
        Objects.requireNonNull(reader, "in == null");
        this.f10064b = reader;
    }

    private void a(int i) {
        int i2 = this.m;
        int[] iArr = this.l;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.l = Arrays.copyOf(iArr, i3);
            this.o = Arrays.copyOf(this.o, i3);
            this.n = (String[]) Arrays.copyOf(this.n, i3);
        }
        int[] iArr2 = this.l;
        int i4 = this.m;
        this.m = i4 + 1;
        iArr2[i4] = i;
    }

    private boolean a(char c2) throws IOException {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (!(c2 == '/' || c2 == '=')) {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
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
        w();
        return false;
    }

    private boolean a(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.e + length > this.f && !b(length)) {
                return false;
            }
            char[] cArr = this.f10066d;
            int i = this.e;
            if (cArr[i] == '\n') {
                this.g++;
                this.h = i + 1;
            } else {
                for (int i2 = 0; i2 < length; i2++) {
                    if (this.f10066d[this.e + i2] == str.charAt(i2)) {
                    }
                }
                return true;
            }
            this.e++;
        }
    }

    private int b(boolean z) throws IOException {
        char[] cArr = this.f10066d;
        int i = this.e;
        int i2 = this.f;
        while (true) {
            int i3 = i;
            int i4 = i2;
            if (i == i2) {
                this.e = i;
                if (b(1)) {
                    i3 = this.e;
                    i4 = this.f;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException("End of input" + s());
                }
            }
            i = i3 + 1;
            char c2 = cArr[i3];
            if (c2 == '\n') {
                this.g++;
                this.h = i;
            } else if (!(c2 == ' ' || c2 == '\r' || c2 == '\t')) {
                if (c2 == '/') {
                    this.e = i;
                    if (i == i4) {
                        this.e = i - 1;
                        boolean b2 = b(2);
                        this.e++;
                        if (!b2) {
                            return c2;
                        }
                    }
                    w();
                    int i5 = this.e;
                    char c3 = cArr[i5];
                    if (c3 == '*') {
                        this.e = i5 + 1;
                        if (a("*/")) {
                            i = this.e + 2;
                            i2 = this.f;
                        } else {
                            throw b("Unterminated comment");
                        }
                    } else if (c3 != '/') {
                        return c2;
                    } else {
                        this.e = i5 + 1;
                        x();
                        i = this.e;
                        i2 = this.f;
                    }
                } else if (c2 == '#') {
                    this.e = i;
                    w();
                    x();
                    i = this.e;
                    i2 = this.f;
                } else {
                    this.e = i;
                    return c2;
                }
            }
            i2 = i4;
        }
    }

    private IOException b(String str) throws IOException {
        throw new d(str + s());
    }

    private String b(char c2) throws IOException {
        char[] cArr = this.f10066d;
        StringBuilder sb = null;
        while (true) {
            int i = this.e;
            int i2 = this.f;
            int i3 = i;
            while (true) {
                if (i3 < i2) {
                    int i4 = i3 + 1;
                    char c3 = cArr[i3];
                    if (c3 == c2) {
                        this.e = i4;
                        int i5 = (i4 - i) - 1;
                        if (sb == null) {
                            return new String(cArr, i, i5);
                        }
                        sb.append(cArr, i, i5);
                        return sb.toString();
                    } else if (c3 == '\\') {
                        this.e = i4;
                        int i6 = (i4 - i) - 1;
                        StringBuilder sb2 = sb;
                        if (sb == null) {
                            sb2 = new StringBuilder(Math.max((i6 + 1) * 2, 16));
                        }
                        sb2.append(cArr, i, i6);
                        sb2.append(y());
                        sb = sb2;
                    } else {
                        if (c3 == '\n') {
                            this.g++;
                            this.h = i4;
                        }
                        i3 = i4;
                    }
                } else {
                    StringBuilder sb3 = sb;
                    if (sb == null) {
                        sb3 = new StringBuilder(Math.max((i3 - i) * 2, 16));
                    }
                    sb3.append(cArr, i, i3 - i);
                    this.e = i3;
                    if (b(1)) {
                        sb = sb3;
                    } else {
                        throw b("Unterminated string");
                    }
                }
            }
        }
    }

    private boolean b(int i) throws IOException {
        int i2;
        int i3;
        char[] cArr = this.f10066d;
        int i4 = this.h;
        int i5 = this.e;
        this.h = i4 - i5;
        int i6 = this.f;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.f = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.f = 0;
        }
        this.e = 0;
        do {
            Reader reader = this.f10064b;
            int i8 = this.f;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.f + read;
            this.f = i2;
            i3 = i;
            if (this.g == 0) {
                int i9 = this.h;
                i3 = i;
                if (i9 == 0) {
                    i3 = i;
                    if (i2 > 0) {
                        i3 = i;
                        if (cArr[0] == 65279) {
                            this.e++;
                            this.h = i9 + 1;
                            i3 = i + 1;
                        }
                    }
                }
            }
            i = i3;
        } while (i2 < i3);
        return true;
    }

    private void c(char c2) throws IOException {
        char[] cArr = this.f10066d;
        while (true) {
            int i = this.e;
            int i2 = this.f;
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    char c3 = cArr[i];
                    if (c3 == c2) {
                        this.e = i3;
                        return;
                    } else if (c3 == '\\') {
                        this.e = i3;
                        y();
                        break;
                    } else {
                        if (c3 == '\n') {
                            this.g++;
                            this.h = i3;
                        }
                        i = i3;
                    }
                } else {
                    this.e = i;
                    if (!b(1)) {
                        throw b("Unterminated string");
                    }
                }
            }
        }
    }

    private int o() throws IOException {
        String str;
        String str2;
        int i;
        char c2 = this.f10066d[this.e];
        if (c2 == 't' || c2 == 'T') {
            i = 5;
            str2 = "true";
            str = "TRUE";
        } else if (c2 == 'f' || c2 == 'F') {
            i = 6;
            str2 = "false";
            str = "FALSE";
        } else if (c2 != 'n' && c2 != 'N') {
            return 0;
        } else {
            i = 7;
            str2 = JsonReaderKt.NULL;
            str = "NULL";
        }
        int length = str2.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.e + i2 >= this.f && !b(i2 + 1)) {
                return 0;
            }
            char c3 = this.f10066d[this.e + i2];
            if (!(c3 == str2.charAt(i2) || c3 == str.charAt(i2))) {
                return 0;
            }
        }
        if ((this.e + length < this.f || b(length + 1)) && a(this.f10066d[this.e + length])) {
            return 0;
        }
        this.e += length;
        this.f10063a = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fb, code lost:
        if (r10 == 6) goto L_0x010b;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int t() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.a.d.a.t():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        w();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String u() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.preload.a.d.a.u():java.lang.String");
    }

    private void v() throws IOException {
        do {
            int i = 0;
            while (true) {
                int i2 = this.e;
                if (i2 + i < this.f) {
                    char c2 = this.f10066d[i2 + i];
                    if (!(c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ')) {
                        if (c2 != '#') {
                            if (c2 != ',') {
                                if (!(c2 == '/' || c2 == '=')) {
                                    if (!(c2 == '{' || c2 == '}' || c2 == ':')) {
                                        if (c2 != ';') {
                                            switch (c2) {
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
                    this.e = i2 + i;
                }
            }
            w();
            this.e += i;
            return;
        } while (b(1));
    }

    private void w() throws IOException {
        if (!this.f10065c) {
            throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void x() throws IOException {
        char c2;
        do {
            if (this.e < this.f || b(1)) {
                char[] cArr = this.f10066d;
                int i = this.e;
                int i2 = i + 1;
                this.e = i2;
                c2 = cArr[i];
                if (c2 == '\n') {
                    this.g++;
                    this.h = i2;
                    return;
                }
            } else {
                return;
            }
        } while (c2 != '\r');
    }

    private char y() throws IOException {
        int i;
        int i2;
        if (this.e != this.f || b(1)) {
            char[] cArr = this.f10066d;
            int i3 = this.e;
            int i4 = i3 + 1;
            this.e = i4;
            char c2 = cArr[i3];
            if (c2 == '\n') {
                this.g++;
                this.h = i4;
            } else if (!(c2 == '\"' || c2 == '\'' || c2 == '/' || c2 == '\\')) {
                if (c2 == 'b') {
                    return '\b';
                }
                if (c2 == 'f') {
                    return '\f';
                }
                if (c2 == 'n') {
                    return '\n';
                }
                if (c2 == 'r') {
                    return '\r';
                }
                if (c2 == 't') {
                    return '\t';
                }
                if (c2 != 'u') {
                    throw b("Invalid escape sequence");
                } else if (i4 + 4 <= this.f || b(4)) {
                    char c3 = 0;
                    int i5 = this.e;
                    for (int i6 = i5; i6 < i5 + 4; i6++) {
                        char c4 = this.f10066d[i6];
                        char c5 = (char) (c3 << 4);
                        if (c4 < '0' || c4 > '9') {
                            if (c4 >= 'a' && c4 <= 'f') {
                                i = c4 - 'a';
                            } else if (c4 < 'A' || c4 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.f10066d, this.e, 4));
                            } else {
                                i = c4 - 'A';
                            }
                            i2 = i + 10;
                        } else {
                            i2 = c4 - '0';
                        }
                        c3 = (char) (c5 + i2);
                    }
                    this.e += 4;
                    return c3;
                } else {
                    throw b("Unterminated escape sequence");
                }
            }
            return c2;
        }
        throw b("Unterminated escape sequence");
    }

    private void z() throws IOException {
        b(true);
        int i = this.e - 1;
        this.e = i;
        if (i + 5 <= this.f || b(5)) {
            char[] cArr = this.f10066d;
            if (cArr[i] == ')' && cArr[i + 1] == ']' && cArr[i + 2] == '}' && cArr[i + 3] == '\'' && cArr[i + 4] == '\n') {
                this.e += 5;
            }
        }
    }

    public void a() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 3) {
            a(1);
            this.o[this.m - 1] = 0;
            this.f10063a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + s());
    }

    public final void a(boolean z) {
        this.f10065c = z;
    }

    public void b() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 4) {
            int i3 = this.m - 1;
            this.m = i3;
            int[] iArr = this.o;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f10063a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + f() + s());
    }

    public void c() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 1) {
            a(3);
            this.f10063a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + s());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10063a = 0;
        this.l[0] = 8;
        this.m = 1;
        this.f10064b.close();
    }

    public void d() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 2) {
            int i3 = this.m - 1;
            this.m = i3;
            this.n[i3] = null;
            int[] iArr = this.o;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f10063a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + f() + s());
    }

    public boolean e() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    public b f() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        switch (i2) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public String g() throws IOException {
        String str;
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 14) {
            str = u();
        } else if (i2 == 12) {
            str = b('\'');
        } else if (i2 == 13) {
            str = b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + f() + s());
        }
        this.f10063a = 0;
        this.n[this.m - 1] = str;
        return str;
    }

    public String h() throws IOException {
        String str;
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 10) {
            str = u();
        } else if (i2 == 8) {
            str = b('\'');
        } else if (i2 == 9) {
            str = b('\"');
        } else if (i2 == 11) {
            str = this.k;
            this.k = null;
        } else if (i2 == 15) {
            str = Long.toString(this.i);
        } else if (i2 == 16) {
            str = new String(this.f10066d, this.e, this.j);
            this.e += this.j;
        } else {
            throw new IllegalStateException("Expected a string but was " + f() + s());
        }
        this.f10063a = 0;
        int[] iArr = this.o;
        int i3 = this.m - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    public boolean i() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 5) {
            this.f10063a = 0;
            int[] iArr = this.o;
            int i3 = this.m - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.f10063a = 0;
            int[] iArr2 = this.o;
            int i4 = this.m - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + f() + s());
        }
    }

    public void j() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 7) {
            this.f10063a = 0;
            int[] iArr = this.o;
            int i3 = this.m - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + f() + s());
    }

    public double k() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 15) {
            this.f10063a = 0;
            int[] iArr = this.o;
            int i3 = this.m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.i;
        }
        if (i2 == 16) {
            this.k = new String(this.f10066d, this.e, this.j);
            this.e += this.j;
        } else if (i2 == 8 || i2 == 9) {
            this.k = b(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.k = u();
        } else if (i2 != 11) {
            throw new IllegalStateException("Expected a double but was " + f() + s());
        }
        this.f10063a = 11;
        double parseDouble = Double.parseDouble(this.k);
        if (this.f10065c || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
            this.k = null;
            this.f10063a = 0;
            int[] iArr2 = this.o;
            int i4 = this.m - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        }
        throw new d("JSON forbids NaN and infinities: " + parseDouble + s());
    }

    public long l() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 15) {
            this.f10063a = 0;
            int[] iArr = this.o;
            int i3 = this.m - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.i;
        }
        if (i2 == 16) {
            this.k = new String(this.f10066d, this.e, this.j);
            this.e += this.j;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.k = u();
            } else {
                this.k = b(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.k);
                this.f10063a = 0;
                int[] iArr2 = this.o;
                int i4 = this.m - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + f() + s());
        }
        this.f10063a = 11;
        double parseDouble = Double.parseDouble(this.k);
        long j = (long) parseDouble;
        if (j == parseDouble) {
            this.k = null;
            this.f10063a = 0;
            int[] iArr3 = this.o;
            int i5 = this.m - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j;
        }
        throw new NumberFormatException("Expected a long but was " + this.k + s());
    }

    public int m() throws IOException {
        int i = this.f10063a;
        int i2 = i;
        if (i == 0) {
            i2 = r();
        }
        if (i2 == 15) {
            long j = this.i;
            int i3 = (int) j;
            if (j == i3) {
                this.f10063a = 0;
                int[] iArr = this.o;
                int i4 = this.m - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            throw new NumberFormatException("Expected an int but was " + this.i + s());
        }
        if (i2 == 16) {
            this.k = new String(this.f10066d, this.e, this.j);
            this.e += this.j;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.k = u();
            } else {
                this.k = b(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.k);
                this.f10063a = 0;
                int[] iArr2 = this.o;
                int i5 = this.m - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + f() + s());
        }
        this.f10063a = 11;
        double parseDouble = Double.parseDouble(this.k);
        int i6 = (int) parseDouble;
        if (i6 == parseDouble) {
            this.k = null;
            this.f10063a = 0;
            int[] iArr3 = this.o;
            int i7 = this.m - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        throw new NumberFormatException("Expected an int but was " + this.k + s());
    }

    public void n() throws IOException {
        int i;
        int i2 = 0;
        do {
            int i3 = this.f10063a;
            int i4 = i3;
            if (i3 == 0) {
                i4 = r();
            }
            if (i4 == 3) {
                a(1);
            } else if (i4 == 1) {
                a(3);
            } else {
                if (i4 == 4) {
                    this.m--;
                } else if (i4 == 2) {
                    this.m--;
                } else {
                    if (i4 == 14 || i4 == 10) {
                        v();
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
                            this.e += this.j;
                            i = i2;
                        }
                    }
                    this.f10063a = 0;
                    i2 = i;
                }
                i = i2 - 1;
                this.f10063a = 0;
                i2 = i;
            }
            i = i2 + 1;
            this.f10063a = 0;
            i2 = i;
        } while (i != 0);
        int[] iArr = this.o;
        int i5 = this.m;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.n[i5 - 1] = JsonReaderKt.NULL;
    }

    public String p() {
        StringBuilder sb = new StringBuilder(d.f39169b);
        int i = this.m;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.l[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.o[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String[] strArr = this.n;
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    public final boolean q() {
        return this.f10065c;
    }

    int r() throws IOException {
        int b2;
        int[] iArr = this.l;
        int i = this.m;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int b3 = b(true);
            if (b3 != 44) {
                if (b3 == 59) {
                    w();
                } else if (b3 == 93) {
                    this.f10063a = 4;
                    return 4;
                } else {
                    throw b("Unterminated array");
                }
            }
        } else if (i2 == 3 || i2 == 5) {
            iArr[i - 1] = 4;
            if (i2 == 5 && (b2 = b(true)) != 44) {
                if (b2 == 59) {
                    w();
                } else if (b2 == 125) {
                    this.f10063a = 2;
                    return 2;
                } else {
                    throw b("Unterminated object");
                }
            }
            int b4 = b(true);
            if (b4 == 34) {
                this.f10063a = 13;
                return 13;
            } else if (b4 == 39) {
                w();
                this.f10063a = 12;
                return 12;
            } else if (b4 != 125) {
                w();
                this.e--;
                if (a((char) b4)) {
                    this.f10063a = 14;
                    return 14;
                }
                throw b("Expected name");
            } else if (i2 != 5) {
                this.f10063a = 2;
                return 2;
            } else {
                throw b("Expected name");
            }
        } else if (i2 == 4) {
            iArr[i - 1] = 5;
            int b5 = b(true);
            if (b5 != 58) {
                if (b5 == 61) {
                    w();
                    if (this.e < this.f || b(1)) {
                        char[] cArr = this.f10066d;
                        int i3 = this.e;
                        if (cArr[i3] == '>') {
                            this.e = i3 + 1;
                        }
                    }
                } else {
                    throw b("Expected ':'");
                }
            }
        } else if (i2 == 6) {
            if (this.f10065c) {
                z();
            }
            this.l[this.m - 1] = 7;
        } else if (i2 == 7) {
            if (b(false) == -1) {
                this.f10063a = 17;
                return 17;
            }
            w();
            this.e--;
        } else if (i2 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int b6 = b(true);
        if (b6 == 34) {
            this.f10063a = 9;
            return 9;
        } else if (b6 != 39) {
            if (!(b6 == 44 || b6 == 59)) {
                if (b6 == 91) {
                    this.f10063a = 3;
                    return 3;
                } else if (b6 != 93) {
                    if (b6 != 123) {
                        this.e--;
                        int o = o();
                        if (o != 0) {
                            return o;
                        }
                        int t = t();
                        if (t != 0) {
                            return t;
                        }
                        if (a(this.f10066d[this.e])) {
                            w();
                            this.f10063a = 10;
                            return 10;
                        }
                        throw b("Expected value");
                    }
                    this.f10063a = 1;
                    return 1;
                } else if (i2 == 1) {
                    this.f10063a = 4;
                    return 4;
                }
            }
            if (i2 == 1 || i2 == 2) {
                w();
                this.e--;
                this.f10063a = 7;
                return 7;
            }
            throw b("Unexpected value");
        } else {
            w();
            this.f10063a = 8;
            return 8;
        }
    }

    String s() {
        int i = this.g;
        int i2 = this.e;
        int i3 = this.h;
        return " at line " + (i + 1) + " column " + ((i2 - i3) + 1) + " path " + p();
    }

    public String toString() {
        return getClass().getSimpleName() + s();
    }
}
