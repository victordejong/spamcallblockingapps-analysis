package com.google.android.gms.internal.mlkit_translate;

import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzgd.class */
public final class zzgd implements Closeable, Flushable {
    private static final String[] zza = new String[128];
    private static final String[] zzb;
    private final Writer zzc;
    private boolean zzg;
    private String zzh;
    private int[] zzd = new int[32];
    private int zze = 0;
    private String zzf = StringConstant.COLON;
    private boolean zzi = true;

    static {
        for (int i = 0; i <= 31; i++) {
            zza[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        String[] strArr = zza;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        zzb = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public zzgd(Writer writer) {
        zza(6);
        this.zzc = writer;
    }

    private final zzgd zza(int i, int i2, String str) throws IOException {
        int zzf = zzf();
        if (zzf == i2 || zzf == i) {
            if (this.zzh == null) {
                this.zze--;
                this.zzc.write(str);
                return this;
            }
            throw new IllegalStateException("Dangling name: " + this.zzh);
        }
        throw new IllegalStateException("Nesting problem.");
    }

    private final zzgd zza(int i, String str) throws IOException {
        zzh();
        zza(i);
        this.zzc.write(str);
        return this;
    }

    private final void zza(int i) {
        int i2 = this.zze;
        int[] iArr = this.zzd;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 << 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.zzd = iArr2;
        }
        int[] iArr3 = this.zzd;
        int i3 = this.zze;
        this.zze = i3 + 1;
        iArr3[i3] = i;
    }

    private final void zzb(int i) {
        this.zzd[this.zze - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzc(java.lang.String r7) throws java.io.IOException {
        /*
            r6 = this;
            java.lang.String[] r0 = com.google.android.gms.internal.mlkit_translate.zzgd.zza
            r8 = r0
            r0 = r6
            java.io.Writer r0 = r0.zzc
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
            java.io.Writer r0 = r0.zzc
            r1 = r7
            r2 = r11
            r3 = r10
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        L79:
            r0 = r6
            java.io.Writer r0 = r0.zzc
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
            java.io.Writer r0 = r0.zzc
            r1 = r7
            r2 = r11
            r3 = r9
            r4 = r11
            int r3 = r3 - r4
            r0.write(r1, r2, r3)
        La6:
            r0 = r6
            java.io.Writer r0 = r0.zzc
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzgd.zzc(java.lang.String):void");
    }

    private final int zzf() {
        int i = this.zze;
        if (i != 0) {
            return this.zzd[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    private final void zzg() throws IOException {
        if (this.zzh != null) {
            int zzf = zzf();
            if (zzf == 5) {
                this.zzc.write(44);
            } else if (zzf != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            zzb(4);
            zzc(this.zzh);
            this.zzh = null;
        }
    }

    private final void zzh() throws IOException {
        int zzf = zzf();
        if (zzf == 1) {
            zzb(2);
        } else if (zzf == 2) {
            this.zzc.append(',');
        } else if (zzf == 4) {
            this.zzc.append((CharSequence) this.zzf);
            zzb(5);
        } else {
            if (zzf != 6) {
                if (zzf != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.zzg) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
            zzb(7);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.zzc.close();
        int i = this.zze;
        if (i > 1 || (i == 1 && this.zzd[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.zze = 0;
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        if (this.zze != 0) {
            this.zzc.flush();
            return;
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final zzgd zza() throws IOException {
        zzg();
        return zza(1, "[");
    }

    public final zzgd zza(long j) throws IOException {
        zzg();
        zzh();
        this.zzc.write(Long.toString(j));
        return this;
    }

    public final zzgd zza(Boolean bool) throws IOException {
        if (bool == null) {
            return zze();
        }
        zzg();
        zzh();
        this.zzc.write(bool.booleanValue() ? "true" : "false");
        return this;
    }

    public final zzgd zza(Number number) throws IOException {
        if (number == null) {
            return zze();
        }
        zzg();
        String obj = number.toString();
        if (this.zzg || (!obj.equals("-Infinity") && !obj.equals("Infinity") && !obj.equals("NaN"))) {
            zzh();
            this.zzc.append((CharSequence) obj);
            return this;
        }
        throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
    }

    public final zzgd zza(String str) throws IOException {
        Objects.requireNonNull(str, "name == null");
        if (this.zzh == null) {
            if (this.zze == 0) {
                throw new IllegalStateException("JsonWriter is closed.");
            }
            this.zzh = str;
            return this;
        }
        throw new IllegalStateException();
    }

    public final void zza(boolean z) {
        this.zzg = true;
    }

    public final zzgd zzb() throws IOException {
        return zza(1, 2, "]");
    }

    public final zzgd zzb(String str) throws IOException {
        if (str == null) {
            return zze();
        }
        zzg();
        zzh();
        zzc(str);
        return this;
    }

    public final zzgd zzb(boolean z) throws IOException {
        zzg();
        zzh();
        this.zzc.write(z ? "true" : "false");
        return this;
    }

    public final zzgd zzc() throws IOException {
        zzg();
        return zza(3, "{");
    }

    public final zzgd zzd() throws IOException {
        return zza(3, 5, "}");
    }

    public final zzgd zze() throws IOException {
        if (this.zzh != null) {
            if (!this.zzi) {
                this.zzh = null;
                return this;
            }
            zzg();
        }
        zzh();
        this.zzc.write(AnalyticsConstants.NULL);
        return this;
    }
}
