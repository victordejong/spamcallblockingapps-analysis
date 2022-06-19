package com.google.android.gms.common.logging;

import android.util.Log;
import com.google.android.gms.common.internal.GmsLogger;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/logging/Logger.class */
public class Logger {
    private final String mTag;
    private final String zzei;
    private final GmsLogger zzew;
    private final int zzex;

    private Logger(String str, String str2) {
        this.zzei = str2;
        this.mTag = str;
        this.zzew = new GmsLogger(str);
        int i = 2;
        while (7 >= i && !Log.isLoggable(this.mTag, i)) {
            i++;
        }
        this.zzex = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Logger(java.lang.String r5, java.lang.String... r6) {
        /*
            r4 = this;
            r0 = r6
            int r0 = r0.length
            if (r0 != 0) goto Lb
            java.lang.String r0 = ""
            r6 = r0
            goto L5d
        Lb:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            r1 = 91
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r6
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r9 = r0
        L21:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L4a
            r0 = r6
            r1 = r9
            r0 = r0[r1]
            r10 = r0
            r0 = r7
            int r0 = r0.length()
            r1 = 1
            if (r0 <= r1) goto L3d
            r0 = r7
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
        L3d:
            r0 = r7
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            int r9 = r9 + 1
            goto L21
        L4a:
            r0 = r7
            r1 = 93
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = 32
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r6 = r0
        L5d:
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.logging.Logger.<init>(java.lang.String, java.lang.String[]):void");
    }

    private final String format(String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.zzei.concat(str2);
    }

    /* renamed from: d */
    public void m3789d(String str, Object... objArr) {
        if (isLoggable(3)) {
            Log.d(this.mTag, format(str, objArr));
        }
    }

    /* renamed from: e */
    public void m3788e(String str, Throwable th, Object... objArr) {
        Log.e(this.mTag, format(str, objArr), th);
    }

    /* renamed from: e */
    public void m3787e(String str, Object... objArr) {
        Log.e(this.mTag, format(str, objArr));
    }

    /* renamed from: i */
    public void m3786i(String str, Object... objArr) {
        Log.i(this.mTag, format(str, objArr));
    }

    public boolean isLoggable(int i) {
        return this.zzex <= i;
    }

    /* renamed from: v */
    public void m3785v(String str, Object... objArr) {
        if (isLoggable(2)) {
            Log.v(this.mTag, format(str, objArr));
        }
    }

    /* renamed from: w */
    public void m3784w(String str, Object... objArr) {
        Log.w(this.mTag, format(str, objArr));
    }

    public void wtf(String str, Throwable th, Object... objArr) {
        Log.wtf(this.mTag, format(str, objArr), th);
    }

    public void wtf(Throwable th) {
        Log.wtf(this.mTag, th);
    }
}
