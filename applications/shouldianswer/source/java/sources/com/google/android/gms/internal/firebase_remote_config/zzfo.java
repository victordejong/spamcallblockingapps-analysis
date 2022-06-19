package com.google.android.gms.internal.firebase_remote_config;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzfo.class */
public final class zzfo implements Closeable, Flushable {
    private static final String[] zzoe = new String[128];
    private static final String[] zzof;
    private final Writer out;
    private boolean zzng;
    private String zzog;
    private String zzoh;
    private int[] zzno = new int[32];
    private int zznp = 0;
    private String separator = ":";
    private boolean zzoi = true;

    static {
        for (int i = 0; i <= 31; i++) {
            zzoe[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = zzoe;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        zzof = strArr2;
        strArr2[60] = "\\u003c";
        String[] strArr3 = zzof;
        strArr3[62] = "\\u003e";
        strArr3[38] = "\\u0026";
        strArr3[61] = "\\u003d";
        strArr3[39] = "\\u0027";
    }

    public zzfo(Writer writer) {
        zzo(6);
        this.out = writer;
    }

    private final zzfo zza(int i, String str) {
        zzen();
        zzo(i);
        this.out.write(str);
        return this;
    }

    private final zzfo zzb(int i, int i2, String str) {
        int zzej = zzej();
        if (zzej == i2 || zzej == i) {
            if (this.zzoh != null) {
                throw new IllegalStateException("Dangling name: " + this.zzoh);
            }
            this.zznp--;
            if (zzej == i2) {
                zzem();
            }
            this.out.write(str);
            return this;
        }
        throw new IllegalStateException("Nesting problem.");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzbh(java.lang.String r7) {
        /*
            r6 = this;
            java.lang.String[] r0 = com.google.android.gms.internal.firebase_remote_config.zzfo.zzoe
            r8 = r0
            r0 = r6
            java.io.Writer r0 = r0.out
            java.lang.String r1 = "\""
            r0.write(r1)
            r0 = r7
            int r0 = r0.length()
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = 0
            r11 = r0
        L18:
            r0 = r10
            r1 = r9
            if (r0 >= r1) goto L92
            r0 = r7
            r1 = r10
            char r0 = r0.charAt(r1)
            r12 = r0
            r0 = r12
            r1 = 128(0x80, float:1.794E-43)
            if (r0 >= r1) goto L44
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            r13 = r0
            r0 = r13
            r14 = r0
            r0 = r13
            if (r0 != 0) goto L63
            r0 = r11
            r15 = r0
            goto L88
        L44:
            r0 = r12
            r1 = 8232(0x2028, float:1.1535E-41)
            if (r0 != r1) goto L53
            java.lang.String r0 = "\\u2028"
            r14 = r0
            goto L63
        L53:
            r0 = r11
            r15 = r0
            r0 = r12
            r1 = 8233(0x2029, float:1.1537E-41)
            if (r0 != r1) goto L88
            java.lang.String r0 = "\\u2029"
            r14 = r0
        L63:
            r0 = r11
            r1 = r10
            if (r0 >= r1) goto L79
            r0 = r6
            java.io.Writer r0 = r0.out
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L79:
            r0 = r6
            java.io.Writer r0 = r0.out
            r1 = r14
            r0.write(r1)
            r0 = r10
            r1 = 1
            int r0 = r0 + r1
            r15 = r0
        L88:
            int r10 = r10 + 1
            r0 = r15
            r11 = r0
            goto L18
        L92:
            r0 = r11
            r1 = r9
            if (r0 >= r1) goto La6
            r0 = r6
            java.io.Writer r0 = r0.out
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        La6:
            r0 = r6
            java.io.Writer r0 = r0.out
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zzfo.zzbh(java.lang.String):void");
    }

    private final int zzej() {
        int i = this.zznp;
        if (i != 0) {
            return this.zzno[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private final void zzek() {
        if (this.zzoh != null) {
            int zzej = zzej();
            if (zzej == 5) {
                this.out.write(44);
            } else if (zzej != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            zzem();
            zzq(4);
            zzbh(this.zzoh);
            this.zzoh = null;
        }
    }

    private final void zzem() {
        if (this.zzog == null) {
            return;
        }
        this.out.write("\n");
        int i = this.zznp;
        for (int i2 = 1; i2 < i; i2++) {
            this.out.write(this.zzog);
        }
    }

    private final void zzen() {
        int zzej = zzej();
        if (zzej == 1) {
            zzq(2);
            zzem();
        } else if (zzej == 2) {
            this.out.append(',');
            zzem();
        } else if (zzej == 4) {
            this.out.append((CharSequence) this.separator);
            zzq(5);
        } else {
            if (zzej != 6) {
                if (zzej != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.zzng) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            zzq(7);
        }
    }

    private final void zzo(int i) {
        int i2 = this.zznp;
        int[] iArr = this.zzno;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.zzno = iArr2;
        }
        int[] iArr3 = this.zzno;
        int i3 = this.zznp;
        this.zznp = i3 + 1;
        iArr3[i3] = i;
    }

    private final void zzq(int i) {
        this.zzno[this.zznp - 1] = i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.out.close();
        int i = this.zznp;
        if (i > 1 || (i == 1 && this.zzno[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.zznp = 0;
    }

    @Override // java.io.Flushable
    public final void flush() {
        if (this.zznp != 0) {
            this.out.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.zzog = null;
            this.separator = ":";
            return;
        }
        this.zzog = str;
        this.separator = ": ";
    }

    public final void setLenient(boolean z) {
        this.zzng = true;
    }

    public final zzfo zza(Number number) {
        if (number == null) {
            return zzel();
        }
        zzek();
        String obj = number.toString();
        if (this.zzng || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            zzen();
            this.out.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    public final zzfo zzb(double d) {
        zzek();
        if (this.zzng || (!Double.isNaN(d) && !Double.isInfinite(d))) {
            zzen();
            this.out.append((CharSequence) Double.toString(d));
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + d);
    }

    public final zzfo zzbf(String str) {
        if (str != null) {
            if (this.zzoh != null) {
                throw new IllegalStateException();
            }
            if (this.zznp == 0) {
                throw new IllegalStateException("JsonWriter is closed.");
            }
            this.zzoh = str;
            return this;
        }
        throw new NullPointerException("name == null");
    }

    public final zzfo zzbg(String str) {
        if (str == null) {
            return zzel();
        }
        zzek();
        zzen();
        zzbh(str);
        return this;
    }

    public final zzfo zzc(boolean z) {
        zzek();
        zzen();
        this.out.write(z ? "true" : "false");
        return this;
    }

    public final zzfo zzd(long j) {
        zzek();
        zzen();
        this.out.write(Long.toString(j));
        return this;
    }

    public final zzfo zzef() {
        zzek();
        return zza(1, "[");
    }

    public final zzfo zzeg() {
        return zzb(1, 2, "]");
    }

    public final zzfo zzeh() {
        zzek();
        return zza(3, "{");
    }

    public final zzfo zzei() {
        return zzb(3, 5, "}");
    }

    public final zzfo zzel() {
        if (this.zzoh != null) {
            if (!this.zzoi) {
                this.zzoh = null;
                return this;
            }
            zzek();
        }
        zzen();
        this.out.write("null");
        return this;
    }
}
