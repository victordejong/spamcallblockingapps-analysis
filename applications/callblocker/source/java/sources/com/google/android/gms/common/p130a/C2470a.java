package com.google.android.gms.common.p130a;

import android.util.Log;
import com.google.android.gms.common.internal.C2645j;
import java.util.Locale;
/* renamed from: com.google.android.gms.common.a.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a/a.class */
public class C2470a {

    /* renamed from: a */
    private final String f7020a;

    /* renamed from: b */
    private final String f7021b;

    /* renamed from: c */
    private final C2645j f7022c;

    /* renamed from: d */
    private final int f7023d;

    private C2470a(String str, String str2) {
        this.f7021b = str2;
        this.f7020a = str;
        this.f7022c = new C2645j(str);
        int i = 2;
        while (7 >= i && !Log.isLoggable(this.f7020a, i)) {
            i++;
        }
        this.f7023d = i;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2470a(java.lang.String r5, java.lang.String... r6) {
        /*
            r4 = this;
            r0 = r6
            int r0 = r0.length
            if (r0 != 0) goto Lf
            java.lang.String r0 = ""
            r6 = r0
        L8:
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        Lf:
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
        L25:
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L4e
            r0 = r6
            r1 = r9
            r0 = r0[r1]
            r10 = r0
            r0 = r7
            int r0 = r0.length()
            r1 = 1
            if (r0 <= r1) goto L41
            r0 = r7
            java.lang.String r1 = ","
            java.lang.StringBuilder r0 = r0.append(r1)
        L41:
            r0 = r7
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            int r9 = r9 + 1
            goto L25
        L4e:
            r0 = r7
            r1 = 93
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = 32
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            r6 = r0
            goto L8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.p130a.C2470a.<init>(java.lang.String, java.lang.String[]):void");
    }

    /* renamed from: a */
    public void m14468a(String str, Object... objArr) {
        if (m14469a(3)) {
            Log.d(this.f7020a, m14466c(str, objArr));
        }
    }

    /* renamed from: a */
    public boolean m14469a(int i) {
        return this.f7023d <= i;
    }

    /* renamed from: b */
    public void m14467b(String str, Object... objArr) {
        Log.e(this.f7020a, m14466c(str, objArr));
    }

    /* renamed from: c */
    protected String m14466c(String str, Object... objArr) {
        String str2 = str;
        if (objArr != null) {
            str2 = str;
            if (objArr.length > 0) {
                str2 = String.format(Locale.US, str, objArr);
            }
        }
        return this.f7021b.concat(str2);
    }
}
