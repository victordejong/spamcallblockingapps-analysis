package com.google.android.gms.internal.firebase_remote_config;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfj.class */
public final class zzfj implements Closeable {
    private static final char[] zznf = ")]}'\n".toCharArray();

    /* renamed from: in */
    private final Reader f3837in;
    private long zznl;
    private int zznm;
    private String zznn;
    private int zznp;
    private boolean zzng = false;
    private final char[] zznh = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int zzni = 0;
    private int zznj = 0;
    private int zznk = 0;
    private int[] zzno = new int[32];
    private String[] zznq = new String[32];
    private int[] zznr = new int[32];

    static {
        zzfk.zzns = new zzfm();
    }

    public zzfj(Reader reader) {
        this.zznp = 0;
        int[] iArr = this.zzno;
        int i = this.zznp;
        this.zznp = i + 1;
        iArr[i] = 6;
        if (reader != null) {
            this.f3837in = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    private final int zzb(boolean z) {
        boolean z2;
        char[] cArr = this.zznh;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            int i3 = i2;
            int i4 = i;
            int i5 = i3;
            if (i == i3) {
                this.pos = i;
                if (!zzp(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + zzed());
                }
                i4 = this.pos;
                i5 = this.limit;
            }
            i = i4 + 1;
            char c = cArr[i4];
            if (c == '\n') {
                this.zzni++;
                this.zznj = i;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.pos = i;
                    if (i == i5) {
                        this.pos--;
                        boolean zzp = zzp(2);
                        this.pos++;
                        if (!zzp) {
                            return c;
                        }
                    }
                    zzeb();
                    int i6 = this.pos;
                    char c2 = cArr[i6];
                    if (c2 == '*') {
                        this.pos = i6 + 1;
                        while (true) {
                            int i7 = 0;
                            if (this.pos + 2 > this.limit && !zzp(2)) {
                                z2 = false;
                                break;
                            }
                            char[] cArr2 = this.zznh;
                            int i8 = this.pos;
                            if (cArr2[i8] != '\n') {
                                while (true) {
                                    z2 = true;
                                    if (i7 >= 2) {
                                        break;
                                    } else if (this.zznh[this.pos + i7] == "*/".charAt(i7)) {
                                        i7++;
                                    }
                                }
                            } else {
                                this.zzni++;
                                this.zznj = i8 + 1;
                            }
                            this.pos++;
                        }
                        if (!z2) {
                            throw zzbe("Unterminated comment");
                        }
                        i = this.pos + 2;
                        i2 = this.limit;
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.pos = i6 + 1;
                        zzec();
                        i = this.pos;
                        i2 = this.limit;
                    }
                } else if (c != '#') {
                    this.pos = i;
                    return c;
                } else {
                    this.pos = i;
                    zzeb();
                    zzec();
                    i = this.pos;
                    i2 = this.limit;
                }
            }
            i2 = i5;
        }
    }

    private final IOException zzbe(String str) {
        throw new zzfn(str + zzed());
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x038e, code lost:
        if (r7 == true) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x03c2, code lost:
        if (zze(r0) == false) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x03ca, code lost:
        if (r7 != true) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x03ce, code lost:
        if (r8 == false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x03d7, code lost:
        if (r14 != Long.MIN_VALUE) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x03dc, code lost:
        if (r17 == false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x03e3, code lost:
        if (r14 != 0) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x03e8, code lost:
        if (r17 != false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x03ed, code lost:
        if (r17 == false) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x03f3, code lost:
        r14 = -r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x03f8, code lost:
        r5.zznl = r14;
        r5.pos += r16;
        r7 = 15;
        r5.zznk = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0417, code lost:
        if (r7 == true) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x041c, code lost:
        if (r7 == true) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0422, code lost:
        if (r7 != true) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x042d, code lost:
        r5.zznm = r16;
        r7 = 16;
        r5.zznk = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x048b  */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v141, types: [long] */
    /* JADX WARN: Type inference failed for: r0v86, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzdz() {
        /*
            Method dump skipped, instructions count: 1466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzfj.zzdz():int");
    }

    private final boolean zze(char c) {
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
        zzeb();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        zzeb();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zzea() {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzfj.zzea():java.lang.String");
    }

    private final void zzeb() {
        if (this.zzng) {
            return;
        }
        throw zzbe("Use JsonReader.setLenient(true) to accept malformed JSON");
    }

    private final void zzec() {
        char c;
        do {
            if (this.pos >= this.limit && !zzp(1)) {
                return;
            }
            char[] cArr = this.zznh;
            int i = this.pos;
            this.pos = i + 1;
            c = cArr[i];
            if (c == '\n') {
                this.zzni++;
                this.zznj = this.pos;
                return;
            }
        } while (c != '\r');
    }

    private final String zzed() {
        int i = this.zzni;
        int i2 = this.pos;
        int i3 = this.zznj;
        StringBuilder sb = new StringBuilder(" at line ");
        sb.append(i + 1);
        sb.append(" column ");
        sb.append((i2 - i3) + 1);
        sb.append(" path ");
        StringBuilder sb2 = new StringBuilder("$");
        int i4 = this.zznp;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = this.zzno[i5];
            if (i6 == 1 || i6 == 2) {
                sb2.append('[');
                sb2.append(this.zznr[i5]);
                sb2.append(']');
            } else if (i6 == 3 || i6 == 4 || i6 == 5) {
                sb2.append('.');
                String[] strArr = this.zznq;
                if (strArr[i5] != null) {
                    sb2.append(strArr[i5]);
                }
            }
        }
        sb.append(sb2.toString());
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v8 */
    private final char zzee() {
        int i;
        int i2;
        if (this.pos != this.limit || zzp(1)) {
            char[] cArr = this.zznh;
            int i3 = this.pos;
            this.pos = i3 + 1;
            char c = cArr[i3];
            if (c == '\n') {
                this.zzni++;
                this.zznj = this.pos;
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
                    throw zzbe("Invalid escape sequence");
                }
                if (this.pos + 4 > this.limit && !zzp(4)) {
                    throw zzbe("Unterminated escape sequence");
                }
                int i4 = this.pos;
                int i5 = i4;
                char c2 = 0;
                while (true) {
                    char c3 = c2;
                    int i6 = i5;
                    if (i6 >= i4 + 4) {
                        this.pos += 4;
                        return c3;
                    }
                    char c4 = this.zznh[i6];
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
                    i5 = i6 + 1;
                    c2 = c6;
                }
                throw new NumberFormatException("\\u" + new String(this.zznh, this.pos, 4));
            }
            return c;
        }
        throw zzbe("Unterminated escape sequence");
    }

    private final String zzf(char c) {
        char[] cArr = this.zznh;
        StringBuilder sb = null;
        while (true) {
            StringBuilder sb2 = sb;
            int i = this.pos;
            int i2 = this.limit;
            int i3 = i;
            while (true) {
                int i4 = i3;
                if (i4 < i2) {
                    int i5 = i4 + 1;
                    char c2 = cArr[i4];
                    if (c2 == c) {
                        this.pos = i5;
                        int i6 = (i5 - i) - 1;
                        if (sb2 == null) {
                            return new String(cArr, i, i6);
                        }
                        sb2.append(cArr, i, i6);
                        return sb2.toString();
                    } else if (c2 == '\\') {
                        this.pos = i5;
                        int i7 = (i5 - i) - 1;
                        StringBuilder sb3 = sb2;
                        if (sb2 == null) {
                            sb3 = new StringBuilder(Math.max((i7 + 1) << 1, 16));
                        }
                        sb3.append(cArr, i, i7);
                        sb3.append(zzee());
                        sb = sb3;
                    } else {
                        if (c2 == '\n') {
                            this.zzni++;
                            this.zznj = i5;
                        }
                        i3 = i5;
                    }
                } else {
                    StringBuilder sb4 = sb2;
                    if (sb2 == null) {
                        sb4 = new StringBuilder(Math.max((i4 - i) << 1, 16));
                    }
                    sb4.append(cArr, i, i4 - i);
                    this.pos = i4;
                    if (!zzp(1)) {
                        throw zzbe("Unterminated string");
                    }
                    sb = sb4;
                }
            }
        }
    }

    private final void zzg(char c) {
        char[] cArr = this.zznh;
        while (true) {
            int i = this.pos;
            int i2 = this.limit;
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    char c2 = cArr[i];
                    if (c2 == c) {
                        this.pos = i3;
                        return;
                    } else if (c2 == '\\') {
                        this.pos = i3;
                        zzee();
                        break;
                    } else {
                        if (c2 == '\n') {
                            this.zzni++;
                            this.zznj = i3;
                        }
                        i = i3;
                    }
                } else {
                    this.pos = i;
                    if (!zzp(1)) {
                        throw zzbe("Unterminated string");
                    }
                }
            }
        }
    }

    private final void zzo(int i) {
        int i2 = this.zznp;
        int[] iArr = this.zzno;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 << 1];
            int[] iArr3 = new int[i2 << 1];
            String[] strArr = new String[i2 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.zznr, 0, iArr3, 0, this.zznp);
            System.arraycopy(this.zznq, 0, strArr, 0, this.zznp);
            this.zzno = iArr2;
            this.zznr = iArr3;
            this.zznq = strArr;
        }
        int[] iArr4 = this.zzno;
        int i3 = this.zznp;
        this.zznp = i3 + 1;
        iArr4[i3] = i;
    }

    private final boolean zzp(int i) {
        int i2;
        char[] cArr = this.zznh;
        int i3 = this.zznj;
        int i4 = this.pos;
        this.zznj = i3 - i4;
        int i5 = this.limit;
        if (i5 != i4) {
            this.limit = i5 - i4;
            System.arraycopy(cArr, i4, cArr, 0, this.limit);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.f3837in;
            int i6 = this.limit;
            int read = reader.read(cArr, i6, cArr.length - i6);
            if (read == -1) {
                return false;
            }
            this.limit += read;
            i2 = i;
            if (this.zzni == 0) {
                int i7 = this.zznj;
                i2 = i;
                if (i7 == 0) {
                    i2 = i;
                    if (this.limit > 0) {
                        i2 = i;
                        if (cArr[0] == 65279) {
                            this.pos++;
                            this.zznj = i7 + 1;
                            i2 = i + 1;
                        }
                    }
                }
            }
            i = i2;
        } while (this.limit < i2);
        return true;
    }

    public final void beginArray() {
        int i = this.zznk;
        int i2 = i;
        if (i == 0) {
            i2 = zzdz();
        }
        if (i2 == 3) {
            zzo(1);
            this.zznr[this.zznp - 1] = 0;
            this.zznk = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + zzdy() + zzed());
    }

    public final void beginObject() {
        int i = this.zznk;
        int i2 = i;
        if (i == 0) {
            i2 = zzdz();
        }
        if (i2 == 1) {
            zzo(3);
            this.zznk = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + zzdy() + zzed());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zznk = 0;
        this.zzno[0] = 8;
        this.zznp = 1;
        this.f3837in.close();
    }

    public final void endArray() {
        int i = this.zznk;
        int i2 = i;
        if (i == 0) {
            i2 = zzdz();
        }
        if (i2 != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + zzdy() + zzed());
        }
        this.zznp--;
        int[] iArr = this.zznr;
        int i3 = this.zznp - 1;
        iArr[i3] = iArr[i3] + 1;
        this.zznk = 0;
    }

    public final void endObject() {
        int i = this.zznk;
        int i2 = i;
        if (i == 0) {
            i2 = zzdz();
        }
        if (i2 != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + zzdy() + zzed());
        }
        this.zznp--;
        String[] strArr = this.zznq;
        int i3 = this.zznp;
        strArr[i3] = null;
        int[] iArr = this.zznr;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.zznk = 0;
    }

    public final boolean nextBoolean() {
        int i = this.zznk;
        int i2 = i;
        if (i == 0) {
            i2 = zzdz();
        }
        if (i2 == 5) {
            this.zznk = 0;
            int[] iArr = this.zznr;
            int i3 = this.zznp - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 != 6) {
            throw new IllegalStateException("Expected a boolean but was " + zzdy() + zzed());
        } else {
            this.zznk = 0;
            int[] iArr2 = this.zznr;
            int i4 = this.zznp - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        }
    }

    public final String nextName() {
        String str;
        int i = this.zznk;
        int i2 = i;
        if (i == 0) {
            i2 = zzdz();
        }
        if (i2 == 14) {
            str = zzea();
        } else if (i2 == 12) {
            str = zzf('\'');
        } else if (i2 != 13) {
            throw new IllegalStateException("Expected a name but was " + zzdy() + zzed());
        } else {
            str = zzf('\"');
        }
        this.zznk = 0;
        this.zznq[this.zznp - 1] = str;
        return str;
    }

    public final void nextNull() {
        int i = this.zznk;
        int i2 = i;
        if (i == 0) {
            i2 = zzdz();
        }
        if (i2 != 7) {
            throw new IllegalStateException("Expected null but was " + zzdy() + zzed());
        }
        this.zznk = 0;
        int[] iArr = this.zznr;
        int i3 = this.zznp - 1;
        iArr[i3] = iArr[i3] + 1;
    }

    public final String nextString() {
        int i = this.zznk;
        int i2 = i;
        if (i == 0) {
            i2 = zzdz();
        }
        String str = null;
        if (i2 == 10) {
            str = zzea();
        } else if (i2 == 8) {
            str = zzf('\'');
        } else if (i2 == 9) {
            str = zzf('\"');
        } else if (i2 == 11) {
            this.zznn = null;
        } else if (i2 == 15) {
            str = Long.toString(this.zznl);
        } else if (i2 != 16) {
            throw new IllegalStateException("Expected a string but was " + zzdy() + zzed());
        } else {
            str = new String(this.zznh, this.pos, this.zznm);
            this.pos += this.zznm;
        }
        this.zznk = 0;
        int[] iArr = this.zznr;
        int i3 = this.zznp - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    public final void setLenient(boolean z) {
        this.zzng = true;
    }

    public final void skipValue() {
        int i;
        int i2 = 0;
        do {
            int i3 = this.zznk;
            int i4 = i3;
            if (i3 == 0) {
                i4 = zzdz();
            }
            if (i4 == 3) {
                zzo(1);
            } else if (i4 == 1) {
                zzo(3);
            } else {
                if (i4 == 4) {
                    this.zznp--;
                } else if (i4 == 2) {
                    this.zznp--;
                } else {
                    if (i4 == 14 || i4 == 10) {
                        do {
                            int i5 = 0;
                            while (true) {
                                int i6 = this.pos;
                                if (i6 + i5 < this.limit) {
                                    char c = this.zznh[i6 + i5];
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
                                                                    i5++;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    this.pos = i6 + i5;
                                }
                            }
                            zzeb();
                            this.pos += i5;
                            i = i2;
                        } while (zzp(1));
                        i = i2;
                    } else if (i4 == 8 || i4 == 12) {
                        zzg('\'');
                        i = i2;
                    } else if (i4 == 9 || i4 == 13) {
                        zzg('\"');
                        i = i2;
                    } else {
                        i = i2;
                        if (i4 == 16) {
                            this.pos += this.zznm;
                            i = i2;
                        }
                    }
                    this.zznk = 0;
                    i2 = i;
                }
                i = i2 - 1;
                this.zznk = 0;
                i2 = i;
            }
            i = i2 + 1;
            this.zznk = 0;
            i2 = i;
        } while (i != 0);
        int[] iArr = this.zznr;
        int i7 = this.zznp;
        int i8 = i7 - 1;
        iArr[i8] = iArr[i8] + 1;
        this.zznq[i7 - 1] = "null";
    }

    public final String toString() {
        return getClass().getSimpleName() + zzed();
    }

    public final zzfl zzdy() {
        int i = this.zznk;
        int i2 = i;
        if (i == 0) {
            i2 = zzdz();
        }
        switch (i2) {
            case 1:
                return zzfl.BEGIN_OBJECT;
            case 2:
                return zzfl.END_OBJECT;
            case 3:
                return zzfl.BEGIN_ARRAY;
            case 4:
                return zzfl.END_ARRAY;
            case 5:
            case 6:
                return zzfl.BOOLEAN;
            case 7:
                return zzfl.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return zzfl.STRING;
            case 12:
            case 13:
            case 14:
                return zzfl.NAME;
            case 15:
            case 16:
                return zzfl.NUMBER;
            case 17:
                return zzfl.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }
}
