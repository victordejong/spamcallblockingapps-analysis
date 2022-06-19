package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.C11314q;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ExoPlaybackException.class */
public final class ExoPlaybackException extends Exception {

    /* renamed from: a */
    public final int f34767a;

    /* renamed from: b */
    public final String f34768b;

    /* renamed from: c */
    public final int f34769c;

    /* renamed from: d */
    public final Format f34770d;

    /* renamed from: e */
    public final int f34771e;

    /* renamed from: f */
    public final long f34772f;

    /* renamed from: g */
    public final C11314q f34773g;

    /* renamed from: h */
    final boolean f34774h;

    /* renamed from: i */
    private final Throwable f34775i;

    private ExoPlaybackException(int i, String str) {
        this(i, null, str, null, -1, null, 4, false);
    }

    private ExoPlaybackException(int i, Throwable th) {
        this(i, th, null, null, -1, null, 4, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private ExoPlaybackException(int r14, java.lang.Throwable r15, java.lang.String r16, java.lang.String r17, int r18, com.google.android.exoplayer2.Format r19, int r20, boolean r21) {
        /*
            r13 = this;
            r0 = r14
            if (r0 == 0) goto L6a
            r0 = r14
            r1 = 1
            if (r0 == r1) goto L1c
            r0 = r14
            r1 = 3
            if (r0 == r1) goto L15
            java.lang.String r0 = "Unexpected runtime error"
            r22 = r0
        L12:
            goto L6e
        L15:
            java.lang.String r0 = "Remote error"
            r22 = r0
            goto L12
        L1c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r22 = r0
            r0 = r22
            r1 = r17
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r22
            java.lang.String r1 = " error, index="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r22
            r1 = r18
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r22
            java.lang.String r1 = ", format="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r22
            r1 = r19
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r22
            java.lang.String r1 = ", format_supported="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r22
            r1 = r20
            java.lang.String r1 = com.google.android.exoplayer2.C11158f.m21375a(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r22
            java.lang.String r0 = r0.toString()
            r22 = r0
            goto L6e
        L6a:
            java.lang.String r0 = "Source error"
            r22 = r0
        L6e:
            r0 = r22
            r23 = r0
            r0 = r16
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto La0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r23 = r0
            r0 = r23
            r1 = r22
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r23
            java.lang.String r1 = ": "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r23
            r1 = r16
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r23
            java.lang.String r0 = r0.toString()
            r23 = r0
        La0:
            r0 = r13
            r1 = r23
            r2 = r15
            r3 = r14
            r4 = r17
            r5 = r18
            r6 = r19
            r7 = r20
            r8 = 0
            long r9 = android.os.SystemClock.elapsedRealtime()
            r10 = r21
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlaybackException.<init>(int, java.lang.Throwable, java.lang.String, java.lang.String, int, com.google.android.exoplayer2.Format, int, boolean):void");
    }

    private ExoPlaybackException(String str, Throwable th, int i, String str2, int i2, Format format, int i3, C11314q c11314q, long j, boolean z) {
        super(str, th);
        this.f34767a = i;
        this.f34775i = th;
        this.f34768b = str2;
        this.f34769c = i2;
        this.f34770d = format;
        this.f34771e = i3;
        this.f34773g = c11314q;
        this.f34772f = j;
        this.f34774h = z;
    }

    /* renamed from: a */
    public static ExoPlaybackException m22325a(IOException iOException) {
        return new ExoPlaybackException(0, iOException);
    }

    /* renamed from: a */
    public static ExoPlaybackException m22324a(Exception exc) {
        return new ExoPlaybackException(1, exc, null, null, -1, null, 4, false);
    }

    /* renamed from: a */
    public static ExoPlaybackException m22323a(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException);
    }

    /* renamed from: a */
    public static ExoPlaybackException m22322a(Throwable th, String str, int i, Format format, int i2, boolean z) {
        if (format == null) {
            i2 = 4;
        }
        return new ExoPlaybackException(1, th, null, str, i, format, i2, z);
    }

    /* renamed from: a */
    public final ExoPlaybackException m22326a(C11314q c11314q) {
        return new ExoPlaybackException(getMessage(), this.f34775i, this.f34767a, this.f34768b, this.f34769c, this.f34770d, this.f34771e, c11314q, this.f34772f, this.f34774h);
    }
}
