package com.google.android.gms.internal.mlkit_translate;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfy.class */
public final class zzfy implements Closeable {
    private static final char[] zza = ")]}'\n".toCharArray();
    private final Reader zzb;
    private long zzj;
    private int zzk;
    private String zzl;
    private int[] zzm;
    private int zzn;
    private boolean zzc = false;
    private final char[] zzd = new char[1024];
    private int zze = 0;
    private int zzf = 0;
    private int zzg = 0;
    private int zzh = 0;
    private int zzi = 0;
    private String[] zzo = new String[32];
    private int[] zzp = new int[32];

    static {
        zzef.zza = new zzgb();
    }

    public zzfy(Reader reader) {
        int[] iArr = new int[32];
        this.zzm = iArr;
        this.zzn = 0;
        this.zzn = 0 + 1;
        iArr[0] = 6;
        Objects.requireNonNull(reader, "in == null");
        this.zzb = reader;
    }

    private final IOException zza(String str) throws IOException {
        StringBuilder m8728C = C22128a.m8728C(str);
        m8728C.append(zzs());
        throw new zzgc(m8728C.toString());
    }

    private final void zza(int i) {
        int i2 = this.zzn;
        int[] iArr = this.zzm;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 << 1];
            int[] iArr3 = new int[i2 << 1];
            String[] strArr = new String[i2 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.zzp, 0, iArr3, 0, this.zzn);
            System.arraycopy(this.zzo, 0, strArr, 0, this.zzn);
            this.zzm = iArr2;
            this.zzp = iArr3;
            this.zzo = strArr;
        }
        int[] iArr4 = this.zzm;
        int i3 = this.zzn;
        this.zzn = i3 + 1;
        iArr4[i3] = i;
    }

    private final boolean zza(char c) throws IOException {
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
        zzq();
        return false;
    }

    private final int zzb(boolean z) throws IOException {
        boolean z2;
        char[] cArr = this.zzd;
        int i = this.zze;
        int i2 = this.zzf;
        while (true) {
            int i3 = i2;
            int i4 = i;
            int i5 = i3;
            if (i == i3) {
                this.zze = i;
                if (!zzb(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + zzs());
                }
                i4 = this.zze;
                i5 = this.zzf;
            }
            i = i4 + 1;
            char c = cArr[i4];
            if (c == '\n') {
                this.zzg++;
                this.zzh = i;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.zze = i;
                    if (i == i5) {
                        this.zze = i - 1;
                        boolean zzb = zzb(2);
                        this.zze++;
                        if (!zzb) {
                            return c;
                        }
                    }
                    zzq();
                    int i6 = this.zze;
                    char c2 = cArr[i6];
                    if (c2 == '*') {
                        this.zze = i6 + 1;
                        while (true) {
                            int i7 = 0;
                            if (this.zze + 2 > this.zzf && !zzb(2)) {
                                z2 = false;
                                break;
                            }
                            char[] cArr2 = this.zzd;
                            int i8 = this.zze;
                            if (cArr2[i8] != '\n') {
                                while (true) {
                                    z2 = true;
                                    if (i7 >= 2) {
                                        break;
                                    } else if (this.zzd[this.zze + i7] == "*/".charAt(i7)) {
                                        i7++;
                                    }
                                }
                            } else {
                                this.zzg++;
                                this.zzh = i8 + 1;
                            }
                            this.zze++;
                        }
                        if (!z2) {
                            throw zza("Unterminated comment");
                        }
                        i = this.zze + 2;
                        i2 = this.zzf;
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.zze = i6 + 1;
                        zzr();
                        i = this.zze;
                        i2 = this.zzf;
                    }
                } else if (c != '#') {
                    this.zze = i;
                    return c;
                } else {
                    this.zze = i;
                    zzq();
                    zzr();
                    i = this.zze;
                    i2 = this.zzf;
                }
            }
            i2 = i5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x01fd, code lost:
        throw new java.lang.NumberFormatException("\\u" + new java.lang.String(r7.zzd, r7.zze, 4));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v20 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zzb(char r8) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 711
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzfy.zzb(char):java.lang.String");
    }

    private final boolean zzb(int i) throws IOException {
        int i2;
        int i3;
        char[] cArr = this.zzd;
        int i4 = this.zzh;
        int i5 = this.zze;
        this.zzh = i4 - i5;
        int i6 = this.zzf;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.zzf = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.zzf = 0;
        }
        this.zze = 0;
        do {
            Reader reader = this.zzb;
            int i8 = this.zzf;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.zzf + read;
            this.zzf = i2;
            i3 = i;
            if (this.zzg == 0) {
                int i9 = this.zzh;
                i3 = i;
                if (i9 == 0) {
                    i3 = i;
                    if (i2 > 0) {
                        i3 = i;
                        if (cArr[0] == 65279) {
                            this.zze++;
                            this.zzh = i9 + 1;
                            i3 = i + 1;
                        }
                    }
                }
            }
            i = i3;
        } while (i2 < i3);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x0391, code lost:
        if (r10 == true) goto L161;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x03c2, code lost:
        if (zza(r0) == false) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x03cb, code lost:
        if (r10 != true) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x03cf, code lost:
        if (r8 == false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x03d8, code lost:
        if (r16 != Long.MIN_VALUE) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x03dd, code lost:
        if (r15 == false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x03e4, code lost:
        if (r16 != 0) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x03e9, code lost:
        if (r15 != false) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x03ee, code lost:
        if (r15 == false) goto L180;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x03f4, code lost:
        r16 = -r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x03f9, code lost:
        r5.zzj = r16;
        r5.zze += r18;
        r7 = 15;
        r5.zzi = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0419, code lost:
        if (r10 == true) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x041f, code lost:
        if (r10 == true) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0426, code lost:
        if (r10 != true) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0431, code lost:
        r5.zzk = r18;
        r7 = 16;
        r5.zzi = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0496  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0498  */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v147, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzo() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzfy.zzo():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        zzq();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String zzp() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzfy.zzp():java.lang.String");
    }

    private final void zzq() throws IOException {
        if (this.zzc) {
            return;
        }
        throw zza("Use JsonReader.setLenient(true) to accept malformed JSON");
    }

    private final void zzr() throws IOException {
        char c;
        do {
            if (this.zze >= this.zzf && !zzb(1)) {
                return;
            }
            char[] cArr = this.zzd;
            int i = this.zze;
            int i2 = i + 1;
            this.zze = i2;
            c = cArr[i];
            if (c == '\n') {
                this.zzg++;
                this.zzh = i2;
                return;
            }
        } while (c != '\r');
    }

    private final String zzs() {
        int i = this.zzg;
        int i2 = this.zze;
        int i3 = this.zzh;
        StringBuilder sb = new StringBuilder(" at line ");
        sb.append(i + 1);
        sb.append(" column ");
        sb.append((i2 - i3) + 1);
        sb.append(" path ");
        StringBuilder sb2 = new StringBuilder("$");
        int i4 = this.zzn;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = this.zzm[i5];
            if (i6 == 1 || i6 == 2) {
                sb2.append('[');
                sb2.append(this.zzp[i5]);
                sb2.append(']');
            } else if (i6 == 3 || i6 == 4 || i6 == 5) {
                sb2.append('.');
                String[] strArr = this.zzo;
                if (strArr[i5] != null) {
                    sb2.append(strArr[i5]);
                }
            }
        }
        sb.append(sb2.toString());
        return sb.toString();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zzi = 0;
        this.zzm[0] = 8;
        this.zzn = 1;
        this.zzb.close();
    }

    public final String toString() {
        return zzfy.class.getSimpleName() + zzs();
    }

    public final void zza(boolean z) {
        this.zzc = z;
    }

    public final boolean zza() {
        return this.zzc;
    }

    public final void zzb() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 == 3) {
            zza(1);
            this.zzp[this.zzn - 1] = 0;
            this.zzi = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + zzg() + zzs());
    }

    public final void zzc() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + zzg() + zzs());
        }
        int i3 = this.zzn - 1;
        this.zzn = i3;
        int[] iArr = this.zzp;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.zzi = 0;
    }

    public final void zzd() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 == 1) {
            zza(3);
            this.zzi = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + zzg() + zzs());
    }

    public final void zze() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + zzg() + zzs());
        }
        int i3 = this.zzn - 1;
        this.zzn = i3;
        this.zzo[i3] = null;
        int[] iArr = this.zzp;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.zzi = 0;
    }

    public final boolean zzf() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    public final zzga zzg() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        switch (i2) {
            case 1:
                return zzga.BEGIN_OBJECT;
            case 2:
                return zzga.END_OBJECT;
            case 3:
                return zzga.BEGIN_ARRAY;
            case 4:
                return zzga.END_ARRAY;
            case 5:
            case 6:
                return zzga.BOOLEAN;
            case 7:
                return zzga.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return zzga.STRING;
            case 12:
            case 13:
            case 14:
                return zzga.NAME;
            case 15:
            case 16:
                return zzga.NUMBER;
            case 17:
                return zzga.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    public final String zzh() throws IOException {
        String str;
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 == 14) {
            str = zzp();
        } else if (i2 == 12) {
            str = zzb('\'');
        } else if (i2 != 13) {
            throw new IllegalStateException("Expected a name but was " + zzg() + zzs());
        } else {
            str = zzb('\"');
        }
        this.zzi = 0;
        this.zzo[this.zzn - 1] = str;
        return str;
    }

    public final String zzi() throws IOException {
        String str;
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 == 10) {
            str = zzp();
        } else if (i2 == 8) {
            str = zzb('\'');
        } else if (i2 == 9) {
            str = zzb('\"');
        } else if (i2 == 11) {
            str = this.zzl;
            this.zzl = null;
        } else if (i2 == 15) {
            str = Long.toString(this.zzj);
        } else if (i2 != 16) {
            throw new IllegalStateException("Expected a string but was " + zzg() + zzs());
        } else {
            str = new String(this.zzd, this.zze, this.zzk);
            this.zze += this.zzk;
        }
        this.zzi = 0;
        int[] iArr = this.zzp;
        int i3 = this.zzn - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    public final boolean zzj() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 == 5) {
            this.zzi = 0;
            int[] iArr = this.zzp;
            int i3 = this.zzn - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 != 6) {
            throw new IllegalStateException("Expected a boolean but was " + zzg() + zzs());
        } else {
            this.zzi = 0;
            int[] iArr2 = this.zzp;
            int i4 = this.zzn - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        }
    }

    public final void zzk() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 != 7) {
            throw new IllegalStateException("Expected null but was " + zzg() + zzs());
        }
        this.zzi = 0;
        int[] iArr = this.zzp;
        int i3 = this.zzn - 1;
        iArr[i3] = iArr[i3] + 1;
    }

    public final double zzl() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 == 15) {
            this.zzi = 0;
            int[] iArr = this.zzp;
            int i3 = this.zzn - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.zzj;
        }
        if (i2 == 16) {
            this.zzl = new String(this.zzd, this.zze, this.zzk);
            this.zze += this.zzk;
        } else if (i2 == 8 || i2 == 9) {
            this.zzl = zzb(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.zzl = zzp();
        } else if (i2 != 11) {
            throw new IllegalStateException("Expected a double but was " + zzg() + zzs());
        }
        this.zzi = 11;
        double parseDouble = Double.parseDouble(this.zzl);
        if (!this.zzc && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw new zzgc("JSON forbids NaN and infinities: " + parseDouble + zzs());
        }
        this.zzl = null;
        this.zzi = 0;
        int[] iArr2 = this.zzp;
        int i4 = this.zzn - 1;
        iArr2[i4] = iArr2[i4] + 1;
        return parseDouble;
    }

    public final long zzm() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 == 15) {
            this.zzi = 0;
            int[] iArr = this.zzp;
            int i3 = this.zzn - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.zzj;
        }
        if (i2 == 16) {
            this.zzl = new String(this.zzd, this.zze, this.zzk);
            this.zze += this.zzk;
        } else if (i2 != 8 && i2 != 9 && i2 != 10) {
            throw new IllegalStateException("Expected a long but was " + zzg() + zzs());
        } else {
            if (i2 == 10) {
                this.zzl = zzp();
            } else {
                this.zzl = zzb(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.zzl);
                this.zzi = 0;
                int[] iArr2 = this.zzp;
                int i4 = this.zzn - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        }
        this.zzi = 11;
        double parseDouble = Double.parseDouble(this.zzl);
        long j = (long) parseDouble;
        if (j != parseDouble) {
            throw new NumberFormatException("Expected a long but was " + this.zzl + zzs());
        }
        this.zzl = null;
        this.zzi = 0;
        int[] iArr3 = this.zzp;
        int i5 = this.zzn - 1;
        iArr3[i5] = iArr3[i5] + 1;
        return j;
    }

    public final int zzn() throws IOException {
        int i = this.zzi;
        int i2 = i;
        if (i == 0) {
            i2 = zzo();
        }
        if (i2 == 15) {
            long j = this.zzj;
            int i3 = (int) j;
            if (j != i3) {
                throw new NumberFormatException("Expected an int but was " + this.zzj + zzs());
            }
            this.zzi = 0;
            int[] iArr = this.zzp;
            int i4 = this.zzn - 1;
            iArr[i4] = iArr[i4] + 1;
            return i3;
        }
        if (i2 == 16) {
            this.zzl = new String(this.zzd, this.zze, this.zzk);
            this.zze += this.zzk;
        } else if (i2 != 8 && i2 != 9 && i2 != 10) {
            throw new IllegalStateException("Expected an int but was " + zzg() + zzs());
        } else {
            if (i2 == 10) {
                this.zzl = zzp();
            } else {
                this.zzl = zzb(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.zzl);
                this.zzi = 0;
                int[] iArr2 = this.zzp;
                int i5 = this.zzn - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        }
        this.zzi = 11;
        double parseDouble = Double.parseDouble(this.zzl);
        int i6 = (int) parseDouble;
        if (i6 != parseDouble) {
            throw new NumberFormatException("Expected an int but was " + this.zzl + zzs());
        }
        this.zzl = null;
        this.zzi = 0;
        int[] iArr3 = this.zzp;
        int i7 = this.zzn - 1;
        iArr3[i7] = iArr3[i7] + 1;
        return i6;
    }
}
