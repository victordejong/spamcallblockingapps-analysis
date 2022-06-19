package com.google.firebase.crashlytics.p293d.p302l;
/* renamed from: com.google.firebase.crashlytics.d.l.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/l/e.class */
public class C9072e {

    /* renamed from: a */
    public final String f39240a;

    /* renamed from: b */
    public final String f39241b;

    /* renamed from: c */
    public final StackTraceElement[] f39242c;

    /* renamed from: d */
    public final C9072e f39243d;

    public C9072e(Throwable th, AbstractC9071d abstractC9071d) {
        this.f39240a = th.getLocalizedMessage();
        this.f39241b = th.getClass().getName();
        this.f39242c = abstractC9071d.mo1979a(th.getStackTrace());
        Throwable cause = th.getCause();
        this.f39243d = cause != null ? new C9072e(cause, abstractC9071d) : null;
    }
}
