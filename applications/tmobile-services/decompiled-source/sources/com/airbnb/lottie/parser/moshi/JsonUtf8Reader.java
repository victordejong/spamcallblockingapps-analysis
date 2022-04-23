package com.airbnb.lottie.parser.moshi;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/parser/moshi/JsonUtf8Reader.class */
public final class JsonUtf8Reader extends JsonReader {

    /* renamed from: s */
    private static final ByteString f6344s = ByteString.m174g("'\\");

    /* renamed from: t */
    private static final ByteString f6345t = ByteString.m174g("\"\\");

    /* renamed from: u */
    private static final ByteString f6346u = ByteString.m174g("{}[]:, \n\t\r\f/\\;#=");

    /* renamed from: v */
    private static final ByteString f6347v = ByteString.m174g("\n\r");

    /* renamed from: w */
    private static final ByteString f6348w = ByteString.m174g("*/");

    /* renamed from: m */
    private final BufferedSource f6349m;

    /* renamed from: n */
    private final Buffer f6350n;

    /* renamed from: o */
    private int f6351o = 0;

    /* renamed from: p */
    private long f6352p;

    /* renamed from: q */
    private int f6353q;
    @Nullable

    /* renamed from: r */
    private String f6354r;

    /* JADX INFO: Access modifiers changed from: package-private */
    public JsonUtf8Reader(BufferedSource bufferedSource) {
        if (bufferedSource != null) {
            this.f6349m = bufferedSource;
            this.f6350n = bufferedSource.mo70j();
            m15810I(6);
            return;
        }
        throw new NullPointerException("source == null");
    }

    /* renamed from: W */
    private void m15798W() throws IOException {
        if (!this.f6340j) {
            m15808V("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw null;
        }
    }

    /* renamed from: X */
    private int m15797X() throws IOException {
        int[] iArr = this.f6337g;
        int i = this.f6336f;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int b0 = m15793b0(true);
            this.f6350n.readByte();
            if (b0 != 44) {
                if (b0 == 59) {
                    m15798W();
                } else if (b0 == 93) {
                    this.f6351o = 4;
                    return 4;
                } else {
                    m15808V("Unterminated array");
                    throw null;
                }
            }
        } else if (i2 == 3 || i2 == 5) {
            this.f6337g[this.f6336f - 1] = 4;
            if (i2 == 5) {
                int b02 = m15793b0(true);
                this.f6350n.readByte();
                if (b02 != 44) {
                    if (b02 == 59) {
                        m15798W();
                    } else if (b02 == 125) {
                        this.f6351o = 2;
                        return 2;
                    } else {
                        m15808V("Unterminated object");
                        throw null;
                    }
                }
            }
            int b03 = m15793b0(true);
            if (b03 == 34) {
                this.f6350n.readByte();
                this.f6351o = 13;
                return 13;
            } else if (b03 == 39) {
                this.f6350n.readByte();
                m15798W();
                this.f6351o = 12;
                return 12;
            } else if (b03 != 125) {
                m15798W();
                if (m15795Z((char) b03)) {
                    this.f6351o = 14;
                    return 14;
                }
                m15808V("Expected name");
                throw null;
            } else if (i2 != 5) {
                this.f6350n.readByte();
                this.f6351o = 2;
                return 2;
            } else {
                m15808V("Expected name");
                throw null;
            }
        } else if (i2 == 4) {
            iArr[i - 1] = 5;
            int b04 = m15793b0(true);
            this.f6350n.readByte();
            if (b04 != 58) {
                if (b04 == 61) {
                    m15798W();
                    if (this.f6349m.request(1L) && this.f6350n.m192p(0L) == 62) {
                        this.f6350n.readByte();
                    }
                } else {
                    m15808V("Expected ':'");
                    throw null;
                }
            }
        } else if (i2 == 6) {
            iArr[i - 1] = 7;
        } else if (i2 == 7) {
            if (m15793b0(false) == -1) {
                this.f6351o = 18;
                return 18;
            }
            m15798W();
        } else if (i2 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int b05 = m15793b0(true);
        if (b05 == 34) {
            this.f6350n.readByte();
            this.f6351o = 9;
            return 9;
        } else if (b05 != 39) {
            if (!(b05 == 44 || b05 == 59)) {
                if (b05 == 91) {
                    this.f6350n.readByte();
                    this.f6351o = 3;
                    return 3;
                } else if (b05 != 93) {
                    if (b05 != 123) {
                        int i0 = m15787i0();
                        if (i0 != 0) {
                            return i0;
                        }
                        int j0 = m15786j0();
                        if (j0 != 0) {
                            return j0;
                        }
                        if (m15795Z(this.f6350n.m192p(0L))) {
                            m15798W();
                            this.f6351o = 10;
                            return 10;
                        }
                        m15808V("Expected value");
                        throw null;
                    }
                    this.f6350n.readByte();
                    this.f6351o = 1;
                    return 1;
                } else if (i2 == 1) {
                    this.f6350n.readByte();
                    this.f6351o = 4;
                    return 4;
                }
            }
            if (i2 == 1 || i2 == 2) {
                m15798W();
                this.f6351o = 7;
                return 7;
            }
            m15808V("Unexpected value");
            throw null;
        } else {
            m15798W();
            this.f6350n.readByte();
            this.f6351o = 8;
            return 8;
        }
    }

    /* renamed from: Y */
    private int m15796Y(String str, JsonReader.Options options) {
        int length = options.f6342a.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(options.f6342a[i])) {
                this.f6351o = 0;
                this.f6338h[this.f6336f - 1] = str;
                return i;
            }
        }
        return -1;
    }

    /* renamed from: Z */
    private boolean m15795Z(int i) throws IOException {
        if (i == 9 || i == 10 || i == 12 || i == 13 || i == 32) {
            return false;
        }
        if (i != 35) {
            if (i == 44) {
                return false;
            }
            if (!(i == 47 || i == 61)) {
                if (i == 123 || i == 125 || i == 58) {
                    return false;
                }
                if (i != 59) {
                    switch (i) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        m15798W();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        r4.f6350n.skip(r0 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
        if (r0 != 47) goto L_0x00b8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
        if (r4.f6349m.request(2) != false) goto L_0x0060;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005f, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0060, code lost:
        m15798W();
        r0 = r4.f6350n.m192p(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0072, code lost:
        if (r0 == 42) goto L_0x0095;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0079, code lost:
        if (r0 == 47) goto L_0x007e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007d, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007e, code lost:
        r4.f6350n.readByte();
        r4.f6350n.readByte();
        m15776w0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0095, code lost:
        r4.f6350n.readByte();
        r4.f6350n.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a9, code lost:
        if (m15777v0() == false) goto L_0x00af;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00af, code lost:
        m15808V("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b7, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bb, code lost:
        if (r0 != 35) goto L_0x00c9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00be, code lost:
        m15798W();
        m15776w0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ca, code lost:
        return r0;
     */
    /* renamed from: b0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m15793b0(boolean r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonUtf8Reader.m15793b0(boolean):int");
    }

    /* renamed from: d0 */
    private String m15791d0(ByteString byteString) throws IOException {
        StringBuilder sb = null;
        while (true) {
            long E = this.f6349m.mo85E(byteString);
            if (E == -1) {
                m15808V("Unterminated string");
                throw null;
            } else if (this.f6350n.m192p(E) == 92) {
                StringBuilder sb2 = sb;
                if (sb == null) {
                    sb2 = new StringBuilder();
                }
                sb2.append(this.f6350n.m197i0(E));
                this.f6350n.readByte();
                sb2.append(m15781o0());
                sb = sb2;
            } else if (sb == null) {
                String i0 = this.f6350n.m197i0(E);
                this.f6350n.readByte();
                return i0;
            } else {
                sb.append(this.f6350n.m197i0(E));
                this.f6350n.readByte();
                return sb.toString();
            }
        }
    }

    /* renamed from: e0 */
    private String m15789e0() throws IOException {
        long E = this.f6349m.mo85E(f6346u);
        return E != -1 ? this.f6350n.m197i0(E) : this.f6350n.m199e0();
    }

    /* renamed from: i0 */
    private int m15787i0() throws IOException {
        String str;
        String str2;
        int i;
        byte p = this.f6350n.m192p(0L);
        if (p == 116 || p == 84) {
            i = 5;
            str2 = "true";
            str = "TRUE";
        } else if (p == 102 || p == 70) {
            i = 6;
            str2 = "false";
            str = "FALSE";
        } else if (p != 110 && p != 78) {
            return 0;
        } else {
            i = 7;
            str2 = "null";
            str = "NULL";
        }
        int length = str2.length();
        int i2 = 1;
        while (i2 < length) {
            int i3 = i2 + 1;
            if (!this.f6349m.request(i3)) {
                return 0;
            }
            byte p2 = this.f6350n.m192p(i2);
            if (p2 != str2.charAt(i2) && p2 != str.charAt(i2)) {
                return 0;
            }
            i2 = i3;
        }
        if (this.f6349m.request(length + 1) && m15795Z(this.f6350n.m192p(length))) {
            return 0;
        }
        this.f6350n.skip(length);
        this.f6351o = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00dd, code lost:
        if (r10 == 6) goto L_0x00ef;
     */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [long] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: j0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m15786j0() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.JsonUtf8Reader.m15786j0():int");
    }

    /* renamed from: o0 */
    private char m15781o0() throws IOException {
        int i;
        int i2;
        if (this.f6349m.request(1L)) {
            byte readByte = this.f6350n.readByte();
            if (readByte == 10 || readByte == 34 || readByte == 39 || readByte == 47 || readByte == 92) {
                return (char) readByte;
            }
            if (readByte == 98) {
                return '\b';
            }
            if (readByte == 102) {
                return '\f';
            }
            if (readByte == 110) {
                return '\n';
            }
            if (readByte == 114) {
                return '\r';
            }
            if (readByte == 116) {
                return '\t';
            }
            if (readByte != 117) {
                if (this.f6340j) {
                    return (char) readByte;
                }
                m15808V("Invalid escape sequence: \\" + ((char) readByte));
                throw null;
            } else if (this.f6349m.request(4L)) {
                char c = 0;
                for (int i3 = 0; i3 < 4; i3++) {
                    byte p = this.f6350n.m192p(i3);
                    char c2 = (char) (c << 4);
                    if (p < 48 || p > 57) {
                        if (p >= 97 && p <= 102) {
                            i = p - 97;
                        } else if (p < 65 || p > 70) {
                            m15808V("\\u" + this.f6350n.m197i0(4L));
                            throw null;
                        } else {
                            i = p - 65;
                        }
                        i2 = i + 10;
                    } else {
                        i2 = p - 48;
                    }
                    c = (char) (c2 + i2);
                }
                this.f6350n.skip(4L);
                return c;
            } else {
                throw new EOFException("Unterminated escape sequence at path " + m15806i());
            }
        } else {
            m15808V("Unterminated escape sequence");
            throw null;
        }
    }

    /* renamed from: u0 */
    private void m15778u0(ByteString byteString) throws IOException {
        while (true) {
            long E = this.f6349m.mo85E(byteString);
            if (E == -1) {
                m15808V("Unterminated string");
                throw null;
            } else if (this.f6350n.m192p(E) == 92) {
                this.f6350n.skip(E + 1);
                m15781o0();
            } else {
                this.f6350n.skip(E + 1);
                return;
            }
        }
    }

    /* renamed from: v0 */
    private boolean m15777v0() throws IOException {
        long y = this.f6349m.mo61y(f6348w);
        boolean z = y != -1;
        Buffer buffer = this.f6350n;
        buffer.skip(z ? y + f6348w.m178C() : buffer.m188v0());
        return z;
    }

    /* renamed from: w0 */
    private void m15776w0() throws IOException {
        long E = this.f6349m.mo85E(f6347v);
        Buffer buffer = this.f6350n;
        buffer.skip(E != -1 ? E + 1 : buffer.m188v0());
    }

    /* renamed from: x0 */
    private void m15775x0() throws IOException {
        long E = this.f6349m.mo85E(f6346u);
        Buffer buffer = this.f6350n;
        if (E == -1) {
            E = buffer.m188v0();
        }
        buffer.skip(E);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: B */
    public JsonReader.Token mo15802B() throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        switch (i2) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: J */
    public int mo15801J(JsonReader.Options options) throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 < 12 || i2 > 15) {
            return -1;
        }
        if (i2 == 15) {
            return m15796Y(this.f6354r, options);
        }
        int t0 = this.f6349m.mo63t0(options.f6343b);
        if (t0 != -1) {
            this.f6351o = 0;
            this.f6338h[this.f6336f - 1] = options.f6342a[t0];
            return t0;
        }
        String str = this.f6338h[this.f6336f - 1];
        String p = mo15780p();
        int Y = m15796Y(p, options);
        if (Y == -1) {
            this.f6351o = 15;
            this.f6354r = p;
            this.f6338h[this.f6336f - 1] = str;
        }
        return Y;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: K */
    public void mo15800K() throws IOException {
        if (!this.f6341k) {
            int i = this.f6351o;
            int i2 = i;
            if (i == 0) {
                i2 = m15797X();
            }
            if (i2 == 14) {
                m15775x0();
            } else if (i2 == 13) {
                m15778u0(f6345t);
            } else if (i2 == 12) {
                m15778u0(f6344s);
            } else if (i2 != 15) {
                throw new JsonDataException("Expected a name but was " + mo15802B() + " at path " + m15806i());
            }
            this.f6351o = 0;
            this.f6338h[this.f6336f - 1] = "null";
            return;
        }
        throw new JsonDataException("Cannot skip unexpected " + mo15802B() + " at " + m15806i());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: L */
    public void mo15799L() throws IOException {
        int i;
        if (!this.f6341k) {
            int i2 = 0;
            do {
                int i3 = this.f6351o;
                int i4 = i3;
                if (i3 == 0) {
                    i4 = m15797X();
                }
                if (i4 == 3) {
                    m15810I(1);
                } else if (i4 == 1) {
                    m15810I(3);
                } else {
                    if (i4 == 4) {
                        i = i2 - 1;
                        if (i >= 0) {
                            this.f6336f--;
                        } else {
                            throw new JsonDataException("Expected a value but was " + mo15802B() + " at path " + m15806i());
                        }
                    } else if (i4 == 2) {
                        i = i2 - 1;
                        if (i >= 0) {
                            this.f6336f--;
                        } else {
                            throw new JsonDataException("Expected a value but was " + mo15802B() + " at path " + m15806i());
                        }
                    } else if (i4 == 14 || i4 == 10) {
                        m15775x0();
                        i = i2;
                    } else if (i4 == 9 || i4 == 13) {
                        m15778u0(f6345t);
                        i = i2;
                    } else if (i4 == 8 || i4 == 12) {
                        m15778u0(f6344s);
                        i = i2;
                    } else if (i4 == 17) {
                        this.f6350n.skip(this.f6353q);
                        i = i2;
                    } else if (i4 != 18) {
                        i = i2;
                    } else {
                        throw new JsonDataException("Expected a value but was " + mo15802B() + " at path " + m15806i());
                    }
                    this.f6351o = 0;
                    i2 = i;
                }
                i = i2 + 1;
                this.f6351o = 0;
                i2 = i;
            } while (i != 0);
            int[] iArr = this.f6339i;
            int i5 = this.f6336f;
            int i6 = i5 - 1;
            iArr[i6] = iArr[i6] + 1;
            this.f6338h[i5 - 1] = "null";
            return;
        }
        throw new JsonDataException("Cannot skip unexpected " + mo15802B() + " at " + m15806i());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: b */
    public void mo15794b() throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 == 3) {
            m15810I(1);
            this.f6339i[this.f6336f - 1] = 0;
            this.f6351o = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_ARRAY but was " + mo15802B() + " at path " + m15806i());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6351o = 0;
        this.f6337g[0] = 8;
        this.f6336f = 1;
        this.f6350n.m203a();
        this.f6349m.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: d */
    public void mo15792d() throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 == 1) {
            m15810I(3);
            this.f6351o = 0;
            return;
        }
        throw new JsonDataException("Expected BEGIN_OBJECT but was " + mo15802B() + " at path " + m15806i());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: e */
    public void mo15790e() throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 == 4) {
            int i3 = this.f6336f - 1;
            this.f6336f = i3;
            int[] iArr = this.f6339i;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f6351o = 0;
            return;
        }
        throw new JsonDataException("Expected END_ARRAY but was " + mo15802B() + " at path " + m15806i());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: h */
    public void mo15788h() throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 == 2) {
            int i3 = this.f6336f - 1;
            this.f6336f = i3;
            this.f6338h[i3] = null;
            int[] iArr = this.f6339i;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f6351o = 0;
            return;
        }
        throw new JsonDataException("Expected END_OBJECT but was " + mo15802B() + " at path " + m15806i());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: k */
    public boolean mo15785k() throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        return (i2 == 2 || i2 == 4 || i2 == 18) ? false : true;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: l */
    public boolean mo15784l() throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 == 5) {
            this.f6351o = 0;
            int[] iArr = this.f6339i;
            int i3 = this.f6336f - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.f6351o = 0;
            int[] iArr2 = this.f6339i;
            int i4 = this.f6336f - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            throw new JsonDataException("Expected a boolean but was " + mo15802B() + " at path " + m15806i());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: m */
    public double mo15783m() throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 == 16) {
            this.f6351o = 0;
            int[] iArr = this.f6339i;
            int i3 = this.f6336f - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f6352p;
        }
        if (i2 == 17) {
            this.f6354r = this.f6350n.m197i0(this.f6353q);
        } else if (i2 == 9) {
            this.f6354r = m15791d0(f6345t);
        } else if (i2 == 8) {
            this.f6354r = m15791d0(f6344s);
        } else if (i2 == 10) {
            this.f6354r = m15789e0();
        } else if (i2 != 11) {
            throw new JsonDataException("Expected a double but was " + mo15802B() + " at path " + m15806i());
        }
        this.f6351o = 11;
        try {
            double parseDouble = Double.parseDouble(this.f6354r);
            if (this.f6340j || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
                this.f6354r = null;
                this.f6351o = 0;
                int[] iArr2 = this.f6339i;
                int i4 = this.f6336f - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseDouble;
            }
            throw new JsonEncodingException("JSON forbids NaN and infinities: " + parseDouble + " at path " + m15806i());
        } catch (NumberFormatException e) {
            throw new JsonDataException("Expected a double but was " + this.f6354r + " at path " + m15806i());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: o */
    public int mo15782o() throws IOException {
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 == 16) {
            long j = this.f6352p;
            int i3 = (int) j;
            if (j == i3) {
                this.f6351o = 0;
                int[] iArr = this.f6339i;
                int i4 = this.f6336f - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            throw new JsonDataException("Expected an int but was " + this.f6352p + " at path " + m15806i());
        }
        if (i2 == 17) {
            this.f6354r = this.f6350n.m197i0(this.f6353q);
        } else if (i2 == 9 || i2 == 8) {
            String d0 = i2 == 9 ? m15791d0(f6345t) : m15791d0(f6344s);
            this.f6354r = d0;
            try {
                int parseInt = Integer.parseInt(d0);
                this.f6351o = 0;
                int[] iArr2 = this.f6339i;
                int i5 = this.f6336f - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        } else if (i2 != 11) {
            throw new JsonDataException("Expected an int but was " + mo15802B() + " at path " + m15806i());
        }
        this.f6351o = 11;
        try {
            double parseDouble = Double.parseDouble(this.f6354r);
            int i6 = (int) parseDouble;
            if (i6 == parseDouble) {
                this.f6354r = null;
                this.f6351o = 0;
                int[] iArr3 = this.f6339i;
                int i7 = this.f6336f - 1;
                iArr3[i7] = iArr3[i7] + 1;
                return i6;
            }
            throw new JsonDataException("Expected an int but was " + this.f6354r + " at path " + m15806i());
        } catch (NumberFormatException e2) {
            throw new JsonDataException("Expected an int but was " + this.f6354r + " at path " + m15806i());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: p */
    public String mo15780p() throws IOException {
        String str;
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 == 14) {
            str = m15789e0();
        } else if (i2 == 13) {
            str = m15791d0(f6345t);
        } else if (i2 == 12) {
            str = m15791d0(f6344s);
        } else if (i2 == 15) {
            str = this.f6354r;
        } else {
            throw new JsonDataException("Expected a name but was " + mo15802B() + " at path " + m15806i());
        }
        this.f6351o = 0;
        this.f6338h[this.f6336f - 1] = str;
        return str;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    /* renamed from: q */
    public String mo15779q() throws IOException {
        String str;
        int i = this.f6351o;
        int i2 = i;
        if (i == 0) {
            i2 = m15797X();
        }
        if (i2 == 10) {
            str = m15789e0();
        } else if (i2 == 9) {
            str = m15791d0(f6345t);
        } else if (i2 == 8) {
            str = m15791d0(f6344s);
        } else if (i2 == 11) {
            str = this.f6354r;
            this.f6354r = null;
        } else if (i2 == 16) {
            str = Long.toString(this.f6352p);
        } else if (i2 == 17) {
            str = this.f6350n.m197i0(this.f6353q);
        } else {
            throw new JsonDataException("Expected a string but was " + mo15802B() + " at path " + m15806i());
        }
        this.f6351o = 0;
        int[] iArr = this.f6339i;
        int i3 = this.f6336f - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    public String toString() {
        return "JsonReader(" + this.f6349m + ")";
    }
}
