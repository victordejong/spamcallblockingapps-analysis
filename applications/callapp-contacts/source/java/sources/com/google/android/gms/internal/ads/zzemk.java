package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzemk.class */
public abstract class zzemk extends dlt {

    /* renamed from: b */
    private static final Logger f50217b = Logger.getLogger(zzemk.class.getName());

    /* renamed from: c */
    private static final boolean f50218c = dqm.m15996a();

    /* renamed from: a */
    dms f50219a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.zzemk$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzemk$a.class */
    public static final class C13114a extends zzemk {

        /* renamed from: b */
        private final byte[] f50220b;

        /* renamed from: c */
        private final int f50221c;

        /* renamed from: d */
        private final int f50222d;

        /* renamed from: e */
        private int f50223e;

        C13114a(byte[] bArr, int i, int i2) {
            super();
            Objects.requireNonNull(bArr, "buffer");
            if ((i2 | 0 | (bArr.length - i2)) >= 0) {
                this.f50220b = bArr;
                this.f50221c = 0;
                this.f50223e = 0;
                this.f50222d = i2;
                return;
            }
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i2)));
        }

        /* renamed from: b */
        private final void m13642b(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.f50220b, this.f50223e, i2);
                this.f50223e += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50223e), Integer.valueOf(this.f50222d), Integer.valueOf(i2)), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13660a(byte b) throws IOException {
            try {
                byte[] bArr = this.f50220b;
                int i = this.f50223e;
                this.f50223e = i + 1;
                bArr[i] = b;
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50223e), Integer.valueOf(this.f50222d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13659a(int i) throws IOException {
            if (i >= 0) {
                mo13645b(i);
            } else {
                mo13651a(i);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13658a(int i, int i2) throws IOException {
            mo13645b((i << 3) | i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13657a(int i, long j) throws IOException {
            mo13658a(i, 0);
            mo13651a(j);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13656a(int i, dlw dlwVar) throws IOException {
            mo13658a(i, 2);
            mo13650a(dlwVar);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13655a(int i, dot dotVar) throws IOException {
            mo13658a(1, 3);
            mo13641c(2, i);
            mo13658a(3, 2);
            mo13649a(dotVar);
            mo13658a(1, 4);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13654a(int i, dot dotVar, dpp dppVar) throws IOException {
            mo13658a(i, 2);
            dln dlnVar = (dln) dotVar;
            int mo16336h = dlnVar.mo16336h();
            int i2 = mo16336h;
            if (mo16336h == -1) {
                i2 = dppVar.mo16118b(dlnVar);
                dlnVar.mo16352a(i2);
            }
            mo13645b(i2);
            dppVar.mo16121a((dpp) dotVar, (drd) this.f50219a);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13653a(int i, String str) throws IOException {
            mo13658a(i, 2);
            mo13648a(str);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13652a(int i, boolean z) throws IOException {
            mo13658a(i, 0);
            mo13660a(z ? (byte) 1 : (byte) 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v18, types: [long] */
        /* JADX WARN: Type inference failed for: r0v39, types: [long] */
        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13651a(long j) throws IOException {
            char c = j;
            if (zzemk.f50218c) {
                c = j;
                char c2 = j;
                if (mo13636h() >= 10) {
                    while ((c2 & 65408) != 0) {
                        byte[] bArr = this.f50220b;
                        int i = this.f50223e;
                        this.f50223e = i + 1;
                        dqm.m15984a(bArr, i, (byte) ((c2 & 127) | 128));
                        c2 >>>= 7;
                    }
                    byte[] bArr2 = this.f50220b;
                    int i2 = this.f50223e;
                    this.f50223e = i2 + 1;
                    dqm.m15984a(bArr2, i2, (byte) c2);
                    return;
                }
            }
            while ((c & 65408) != 0) {
                try {
                    byte[] bArr3 = this.f50220b;
                    int i3 = this.f50223e;
                    this.f50223e = i3 + 1;
                    bArr3[i3] = (byte) ((c & 127) | 128);
                    c >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50223e), Integer.valueOf(this.f50222d), 1), e);
                }
            }
            byte[] bArr4 = this.f50220b;
            int i4 = this.f50223e;
            this.f50223e = i4 + 1;
            bArr4[i4] = (byte) c;
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13650a(dlw dlwVar) throws IOException {
            mo13645b(dlwVar.mo16138b());
            dlwVar.mo16142a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13649a(dot dotVar) throws IOException {
            mo13645b(dotVar.mo16255l());
            dotVar.mo16258a(this);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13648a(String str) throws IOException {
            int i = this.f50223e;
            try {
                int n = m13665n(str.length() * 3);
                int n2 = m13665n(str.length());
                if (n2 != n) {
                    mo13645b(dqp.m15943a(str));
                    this.f50223e = dqp.m15942a(str, this.f50220b, this.f50223e, mo13636h());
                    return;
                }
                int i2 = i + n2;
                this.f50223e = i2;
                int m15942a = dqp.m15942a(str, this.f50220b, i2, mo13636h());
                this.f50223e = i;
                mo13645b((m15942a - i) - n2);
                this.f50223e = m15942a;
            } catch (dqs e) {
                this.f50223e = i;
                m13712a(str, e);
            } catch (IndexOutOfBoundsException e2) {
                throw new zza(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: a */
        public final void mo13647a(byte[] bArr, int i) throws IOException {
            mo13645b(i);
            m13642b(bArr, 0, i);
        }

        @Override // com.google.android.gms.internal.ads.dlt
        /* renamed from: a */
        public final void mo13646a(byte[] bArr, int i, int i2) throws IOException {
            m13642b(bArr, i, i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: b */
        public final void mo13645b(int i) throws IOException {
            int i2 = i;
            if (zzemk.f50218c) {
                i2 = i;
                if (!dlp.m16504a()) {
                    i2 = i;
                    if (mo13636h() >= 5) {
                        if ((i & (-128)) == 0) {
                            byte[] bArr = this.f50220b;
                            int i3 = this.f50223e;
                            this.f50223e = i3 + 1;
                            dqm.m15984a(bArr, i3, (byte) i);
                            return;
                        }
                        byte[] bArr2 = this.f50220b;
                        int i4 = this.f50223e;
                        this.f50223e = i4 + 1;
                        dqm.m15984a(bArr2, i4, (byte) (i | 128));
                        int i5 = i >>> 7;
                        if ((i5 & (-128)) == 0) {
                            byte[] bArr3 = this.f50220b;
                            int i6 = this.f50223e;
                            this.f50223e = i6 + 1;
                            dqm.m15984a(bArr3, i6, (byte) i5);
                            return;
                        }
                        byte[] bArr4 = this.f50220b;
                        int i7 = this.f50223e;
                        this.f50223e = i7 + 1;
                        dqm.m15984a(bArr4, i7, (byte) (i5 | 128));
                        int i8 = i5 >>> 7;
                        if ((i8 & (-128)) == 0) {
                            byte[] bArr5 = this.f50220b;
                            int i9 = this.f50223e;
                            this.f50223e = i9 + 1;
                            dqm.m15984a(bArr5, i9, (byte) i8);
                            return;
                        }
                        byte[] bArr6 = this.f50220b;
                        int i10 = this.f50223e;
                        this.f50223e = i10 + 1;
                        dqm.m15984a(bArr6, i10, (byte) (i8 | 128));
                        int i11 = i8 >>> 7;
                        if ((i11 & (-128)) == 0) {
                            byte[] bArr7 = this.f50220b;
                            int i12 = this.f50223e;
                            this.f50223e = i12 + 1;
                            dqm.m15984a(bArr7, i12, (byte) i11);
                            return;
                        }
                        byte[] bArr8 = this.f50220b;
                        int i13 = this.f50223e;
                        this.f50223e = i13 + 1;
                        dqm.m15984a(bArr8, i13, (byte) (i11 | 128));
                        byte[] bArr9 = this.f50220b;
                        int i14 = this.f50223e;
                        this.f50223e = i14 + 1;
                        dqm.m15984a(bArr9, i14, (byte) (i11 >>> 7));
                        return;
                    }
                }
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr10 = this.f50220b;
                    int i15 = this.f50223e;
                    this.f50223e = i15 + 1;
                    bArr10[i15] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50223e), Integer.valueOf(this.f50222d), 1), e);
                }
            }
            byte[] bArr11 = this.f50220b;
            int i16 = this.f50223e;
            this.f50223e = i16 + 1;
            bArr11[i16] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: b */
        public final void mo13644b(int i, int i2) throws IOException {
            mo13658a(i, 0);
            mo13659a(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: b */
        public final void mo13643b(int i, dlw dlwVar) throws IOException {
            mo13658a(1, 3);
            mo13641c(2, i);
            mo13656a(3, dlwVar);
            mo13658a(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: c */
        public final void mo13641c(int i, int i2) throws IOException {
            mo13658a(i, 0);
            mo13645b(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: c */
        public final void mo13640c(int i, long j) throws IOException {
            mo13658a(i, 1);
            mo13639c(j);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: c */
        public final void mo13639c(long j) throws IOException {
            try {
                byte[] bArr = this.f50220b;
                int i = this.f50223e;
                int i2 = i + 1;
                this.f50223e = i2;
                bArr[i] = (byte) j;
                int i3 = i2 + 1;
                this.f50223e = i3;
                bArr[i2] = (byte) (j >> 8);
                int i4 = i3 + 1;
                this.f50223e = i4;
                bArr[i3] = (byte) (j >> 16);
                int i5 = i4 + 1;
                this.f50223e = i5;
                bArr[i4] = (byte) (j >> 24);
                int i6 = i5 + 1;
                this.f50223e = i6;
                bArr[i5] = (byte) (j >> 32);
                int i7 = i6 + 1;
                this.f50223e = i7;
                bArr[i6] = (byte) (j >> 40);
                int i8 = i7 + 1;
                this.f50223e = i8;
                bArr[i7] = (byte) (j >> 48);
                this.f50223e = i8 + 1;
                bArr[i8] = (byte) (j >> 56);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50223e), Integer.valueOf(this.f50222d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: d */
        public final void mo13638d(int i) throws IOException {
            try {
                byte[] bArr = this.f50220b;
                int i2 = this.f50223e;
                int i3 = i2 + 1;
                this.f50223e = i3;
                bArr[i2] = (byte) i;
                int i4 = i3 + 1;
                this.f50223e = i4;
                bArr[i3] = (byte) (i >> 8);
                int i5 = i4 + 1;
                this.f50223e = i5;
                bArr[i4] = (byte) (i >> 16);
                this.f50223e = i5 + 1;
                bArr[i5] = (byte) (i >>> 24);
            } catch (IndexOutOfBoundsException e) {
                throw new zza(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f50223e), Integer.valueOf(this.f50222d), 1), e);
            }
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: e */
        public final void mo13637e(int i, int i2) throws IOException {
            mo13658a(i, 5);
            mo13638d(i2);
        }

        @Override // com.google.android.gms.internal.ads.zzemk
        /* renamed from: h */
        public final int mo13636h() {
            return this.f50222d - this.f50223e;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzemk$zza.class */
    public static final class zza extends IOException {
        zza() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        zza(java.lang.String r5, java.lang.Throwable r6) {
            /*
                r4 = this;
                r0 = r5
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r5 = r0
                r0 = r5
                int r0 = r0.length()
                if (r0 == 0) goto L16
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1 = r5
                java.lang.String r0 = r0.concat(r1)
                r5 = r0
                goto L20
            L16:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                r1.<init>(r2)
                r5 = r0
            L20:
                r0 = r4
                r1 = r5
                r2 = r6
                r0.<init>(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzemk.zza.<init>(java.lang.String, java.lang.Throwable):void");
        }

        zza(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    private zzemk() {
    }

    /* renamed from: a */
    public static int m13720a() {
        return 4;
    }

    /* renamed from: a */
    public static int m13715a(int i, dnx dnxVar) {
        int m13665n = m13665n(i << 3);
        int m16300b = dnxVar.m16300b();
        return m13665n + m13665n(m16300b) + m16300b;
    }

    /* renamed from: a */
    public static int m13714a(dnx dnxVar) {
        int m16300b = dnxVar.m16300b();
        return m13665n(m16300b) + m16300b;
    }

    /* renamed from: a */
    public static int m13713a(dot dotVar, dpp dppVar) {
        dln dlnVar = (dln) dotVar;
        int mo16336h = dlnVar.mo16336h();
        int i = mo16336h;
        if (mo16336h == -1) {
            i = dppVar.mo16118b(dlnVar);
            dlnVar.mo16352a(i);
        }
        return m13665n(i) + i;
    }

    /* renamed from: a */
    public static zzemk m13710a(byte[] bArr) {
        return new C13114a(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m13709b() {
        return 4;
    }

    /* renamed from: b */
    public static int m13707b(int i, dnx dnxVar) {
        return (m13665n(8) << 1) + m13677g(2, i) + m13715a(3, dnxVar);
    }

    /* renamed from: b */
    public static int m13706b(int i, dot dotVar) {
        return (m13665n(8) << 1) + m13677g(2, i) + m13665n(24) + m13701b(dotVar);
    }

    /* renamed from: b */
    public static int m13705b(int i, dot dotVar, dpp dppVar) {
        return m13665n(i << 3) + m13713a(dotVar, dppVar);
    }

    /* renamed from: b */
    public static int m13704b(int i, String str) {
        return m13665n(i << 3) + m13700b(str);
    }

    /* renamed from: b */
    public static int m13702b(dlw dlwVar) {
        int mo16138b = dlwVar.mo16138b();
        return m13665n(mo16138b) + mo16138b;
    }

    /* renamed from: b */
    public static int m13701b(dot dotVar) {
        int mo16255l = dotVar.mo16255l();
        return m13665n(mo16255l) + mo16255l;
    }

    /* renamed from: b */
    public static int m13700b(String str) {
        int i;
        try {
            i = dqp.m15943a(str);
        } catch (dqs e) {
            i = str.getBytes(dnj.f47286a).length;
        }
        return m13665n(i) + i;
    }

    /* renamed from: b */
    public static int m13699b(byte[] bArr) {
        int length = bArr.length;
        return m13665n(length) + length;
    }

    /* renamed from: c */
    public static int m13698c() {
        return 8;
    }

    /* renamed from: c */
    public static int m13696c(int i, dlw dlwVar) {
        int m13665n = m13665n(i << 3);
        int mo16138b = dlwVar.mo16138b();
        return m13665n + m13665n(mo16138b) + mo16138b;
    }

    @Deprecated
    /* renamed from: c */
    public static int m13695c(int i, dot dotVar, dpp dppVar) {
        int m13665n = m13665n(i << 3);
        dln dlnVar = (dln) dotVar;
        int mo16336h = dlnVar.mo16336h();
        int i2 = mo16336h;
        if (mo16336h == -1) {
            i2 = dppVar.mo16118b(dlnVar);
            dlnVar.mo16352a(i2);
        }
        return (m13665n << 1) + i2;
    }

    @Deprecated
    /* renamed from: c */
    public static int m13694c(dot dotVar) {
        return dotVar.mo16255l();
    }

    /* renamed from: d */
    public static int m13693d() {
        return 8;
    }

    /* renamed from: d */
    public static int m13691d(int i, long j) {
        return m13665n(i << 3) + m13685e(j);
    }

    /* renamed from: d */
    public static int m13690d(int i, dlw dlwVar) {
        return (m13665n(8) << 1) + m13677g(2, i) + m13696c(3, dlwVar);
    }

    /* renamed from: d */
    public static int m13689d(long j) {
        return m13685e(j);
    }

    /* renamed from: e */
    public static int m13688e() {
        return 4;
    }

    /* renamed from: e */
    public static int m13687e(int i) {
        return m13665n(i << 3) + 4;
    }

    /* renamed from: e */
    public static int m13686e(int i, long j) {
        return m13665n(i << 3) + m13685e(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: e */
    public static int m13685e(long j) {
        int i;
        ?? r5;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            i = 6;
            r5 = j >>> 28;
        } else {
            i = 2;
            r5 = j;
        }
        int i2 = i;
        byte b = r5;
        if ((0 & r5) != 0) {
            i2 = i + 2;
            b = r5 >>> 14;
        }
        int i3 = i2;
        if ((b & (-16384)) != 0) {
            i3 = i2 + 1;
        }
        return i3;
    }

    /* renamed from: f */
    public static int m13684f() {
        return 8;
    }

    /* renamed from: f */
    public static int m13683f(int i) {
        return m13665n(i << 3) + 4;
    }

    /* renamed from: f */
    public static int m13682f(int i, int i2) {
        return m13665n(i << 3) + m13666m(i2);
    }

    /* renamed from: f */
    public static int m13681f(int i, long j) {
        return m13665n(i << 3) + m13685e(m13676g(j));
    }

    /* renamed from: f */
    public static int m13680f(long j) {
        return m13685e(m13676g(j));
    }

    /* renamed from: g */
    public static int m13679g() {
        return 1;
    }

    /* renamed from: g */
    public static int m13678g(int i) {
        return m13665n(i << 3) + 8;
    }

    /* renamed from: g */
    public static int m13677g(int i, int i2) {
        return m13665n(i << 3) + m13665n(i2);
    }

    /* renamed from: g */
    private static long m13676g(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: h */
    public static int m13675h(int i) {
        return m13665n(i << 3) + 8;
    }

    /* renamed from: h */
    public static int m13674h(int i, int i2) {
        return m13665n(i << 3) + m13665n(m13661r(i2));
    }

    /* renamed from: i */
    public static int m13672i(int i) {
        return m13665n(i << 3) + 4;
    }

    /* renamed from: i */
    public static int m13671i(int i, int i2) {
        return m13665n(i << 3) + m13666m(i2);
    }

    /* renamed from: j */
    public static int m13669j(int i) {
        return m13665n(i << 3) + 8;
    }

    /* renamed from: k */
    public static int m13668k(int i) {
        return m13665n(i << 3) + 1;
    }

    /* renamed from: l */
    public static int m13667l(int i) {
        return m13665n(i << 3);
    }

    /* renamed from: m */
    public static int m13666m(int i) {
        if (i >= 0) {
            return m13665n(i);
        }
        return 10;
    }

    /* renamed from: n */
    public static int m13665n(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: o */
    public static int m13664o(int i) {
        return m13665n(m13661r(i));
    }

    /* renamed from: p */
    public static int m13663p(int i) {
        return m13666m(i);
    }

    @Deprecated
    /* renamed from: q */
    public static int m13662q(int i) {
        return m13665n(i);
    }

    /* renamed from: r */
    private static int m13661r(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a */
    public abstract void mo13660a(byte b) throws IOException;

    /* renamed from: a */
    public final void m13719a(double d) throws IOException {
        mo13639c(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m13718a(float f) throws IOException {
        mo13638d(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo13659a(int i) throws IOException;

    /* renamed from: a */
    public final void m13717a(int i, double d) throws IOException {
        mo13640c(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m13716a(int i, float f) throws IOException {
        mo13637e(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public abstract void mo13658a(int i, int i2) throws IOException;

    /* renamed from: a */
    public abstract void mo13657a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo13656a(int i, dlw dlwVar) throws IOException;

    /* renamed from: a */
    public abstract void mo13655a(int i, dot dotVar) throws IOException;

    /* renamed from: a */
    public abstract void mo13654a(int i, dot dotVar, dpp dppVar) throws IOException;

    /* renamed from: a */
    public abstract void mo13653a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo13652a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo13651a(long j) throws IOException;

    /* renamed from: a */
    public abstract void mo13650a(dlw dlwVar) throws IOException;

    /* renamed from: a */
    public abstract void mo13649a(dot dotVar) throws IOException;

    /* renamed from: a */
    public abstract void mo13648a(String str) throws IOException;

    /* renamed from: a */
    final void m13712a(String str, dqs dqsVar) throws IOException {
        f50217b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) dqsVar);
        byte[] bytes = str.getBytes(dnj.f47286a);
        try {
            mo13645b(bytes.length);
            mo13646a(bytes, 0, bytes.length);
        } catch (zza e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zza(e2);
        }
    }

    /* renamed from: a */
    public final void m13711a(boolean z) throws IOException {
        mo13660a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: a */
    public abstract void mo13647a(byte[] bArr, int i) throws IOException;

    /* renamed from: b */
    public abstract void mo13645b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo13644b(int i, int i2) throws IOException;

    /* renamed from: b */
    public final void m13708b(int i, long j) throws IOException {
        mo13657a(i, m13676g(j));
    }

    /* renamed from: b */
    public abstract void mo13643b(int i, dlw dlwVar) throws IOException;

    /* renamed from: b */
    public final void m13703b(long j) throws IOException {
        mo13651a(m13676g(j));
    }

    /* renamed from: c */
    public final void m13697c(int i) throws IOException {
        mo13645b(m13661r(i));
    }

    /* renamed from: c */
    public abstract void mo13641c(int i, int i2) throws IOException;

    /* renamed from: c */
    public abstract void mo13640c(int i, long j) throws IOException;

    /* renamed from: c */
    public abstract void mo13639c(long j) throws IOException;

    /* renamed from: d */
    public abstract void mo13638d(int i) throws IOException;

    /* renamed from: d */
    public final void m13692d(int i, int i2) throws IOException {
        mo13641c(i, m13661r(i2));
    }

    /* renamed from: e */
    public abstract void mo13637e(int i, int i2) throws IOException;

    /* renamed from: h */
    public abstract int mo13636h();

    /* renamed from: i */
    public final void m13673i() {
        if (mo13636h() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }
}
