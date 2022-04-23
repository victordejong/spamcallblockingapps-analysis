package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.q;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ExoPlaybackException.class */
public final class ExoPlaybackException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    public final int f20598a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20599b;

    /* renamed from: c  reason: collision with root package name */
    public final int f20600c;

    /* renamed from: d  reason: collision with root package name */
    public final Format f20601d;
    public final int e;
    public final long f;
    public final q g;
    final boolean h;
    private final Throwable i;

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
            if (r0 == 0) goto L_0x006a
            r0 = r14
            r1 = 1
            if (r0 == r1) goto L_0x001c
            r0 = r14
            r1 = 3
            if (r0 == r1) goto L_0x0015
            java.lang.String r0 = "Unexpected runtime error"
            r22 = r0
        L_0x0012:
            goto L_0x006e
        L_0x0015:
            java.lang.String r0 = "Remote error"
            r22 = r0
            goto L_0x0012
        L_0x001c:
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
            java.lang.String r1 = com.google.android.exoplayer2.f.a(r1)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r22
            java.lang.String r0 = r0.toString()
            r22 = r0
            goto L_0x006e
        L_0x006a:
            java.lang.String r0 = "Source error"
            r22 = r0
        L_0x006e:
            r0 = r22
            r23 = r0
            r0 = r16
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x00a0
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
        L_0x00a0:
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

    private ExoPlaybackException(String str, Throwable th, int i, String str2, int i2, Format format, int i3, q qVar, long j, boolean z) {
        super(str, th);
        this.f20598a = i;
        this.i = th;
        this.f20599b = str2;
        this.f20600c = i2;
        this.f20601d = format;
        this.e = i3;
        this.g = qVar;
        this.f = j;
        this.h = z;
    }

    public static ExoPlaybackException a(IOException iOException) {
        return new ExoPlaybackException(0, iOException);
    }

    public static ExoPlaybackException a(Exception exc) {
        return new ExoPlaybackException(1, exc, null, null, -1, null, 4, false);
    }

    public static ExoPlaybackException a(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException);
    }

    public static ExoPlaybackException a(Throwable th, String str, int i, Format format, int i2, boolean z) {
        if (format == null) {
            i2 = 4;
        }
        return new ExoPlaybackException(1, th, null, str, i, format, i2, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ExoPlaybackException a(q qVar) {
        return new ExoPlaybackException(getMessage(), this.i, this.f20598a, this.f20599b, this.f20600c, this.f20601d, this.e, qVar, this.f, this.h);
    }
}
