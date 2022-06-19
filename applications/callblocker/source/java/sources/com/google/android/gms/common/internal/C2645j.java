package com.google.android.gms.common.internal;

import android.util.Log;
/* renamed from: com.google.android.gms.common.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/j.class */
public final class C2645j {

    /* renamed from: a */
    private static final int f7406a = 15;

    /* renamed from: b */
    private static final String f7407b = null;

    /* renamed from: c */
    private final String f7408c;

    /* renamed from: d */
    private final String f7409d;

    public C2645j(String str) {
        this(str, null);
    }

    public C2645j(String str, String str2) {
        C2662s.m13980a(str, (Object) "log tag cannot be null");
        C2662s.m13975a(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, 23);
        this.f7408c = str;
        if (str2 == null || str2.length() <= 0) {
            this.f7409d = null;
        } else {
            this.f7409d = str2;
        }
    }

    /* renamed from: a */
    private final String m14008a(String str) {
        if (this.f7409d != null) {
            str = this.f7409d.concat(str);
        }
        return str;
    }

    /* renamed from: a */
    public final void m14007a(String str, String str2) {
        if (m14009a(3)) {
            Log.d(str, m14008a(str2));
        }
    }

    /* renamed from: a */
    public final void m14006a(String str, String str2, Throwable th) {
        if (m14009a(6)) {
            Log.e(str, m14008a(str2), th);
        }
    }

    /* renamed from: a */
    public final boolean m14009a(int i) {
        return Log.isLoggable(this.f7408c, i);
    }

    /* renamed from: b */
    public final void m14005b(String str, String str2) {
        if (m14009a(2)) {
            Log.v(str, m14008a(str2));
        }
    }

    /* renamed from: c */
    public final void m14004c(String str, String str2) {
        if (m14009a(5)) {
            Log.w(str, m14008a(str2));
        }
    }
}
