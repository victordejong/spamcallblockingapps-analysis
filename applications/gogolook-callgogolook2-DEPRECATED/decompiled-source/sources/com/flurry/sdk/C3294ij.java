package com.flurry.sdk;

import android.content.Context;
/* renamed from: com.flurry.sdk.ij */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ij.class */
public class C3294ij implements AbstractC3360ju {
    /* renamed from: a */
    public static C3294ij m32755a() {
        C3294ij ijVar;
        synchronized (C3294ij.class) {
            try {
                ijVar = (C3294ij) C3331jb.m32681a().m32679a(C3294ij.class);
            } catch (Throwable th) {
                throw th;
            }
        }
        return ijVar;
    }

    /* renamed from: b */
    public static String m32754b() {
        C3326ja c = m32753c();
        return c != null ? Long.toString(c.f5665b) : null;
    }

    /* renamed from: c */
    public static C3326ja m32753c() {
        C3423kp e = C3427kr.m32517a().m32505e();
        if (e == null) {
            return null;
        }
        return (C3326ja) e.m32520b(C3326ja.class);
    }

    /* renamed from: d */
    public static long m32752d() {
        C3326ja c = m32753c();
        return c != null ? c.f5665b : 0L;
    }

    /* renamed from: e */
    public static long m32751e() {
        C3326ja c = m32753c();
        return c != null ? c.f5666c : 0L;
    }

    /* renamed from: f */
    public static long m32750f() {
        C3326ja c = m32753c();
        return c != null ? c.f5667d : -1L;
    }

    /* renamed from: g */
    public static long m32749g() {
        C3326ja c = m32753c();
        return c != null ? c.m32685c() : 0L;
    }

    /* renamed from: h */
    public static long m32748h() {
        C3326ja c = m32753c();
        return c != null ? c.f5668e : 0L;
    }

    /* renamed from: i */
    public static int m32747i() {
        return C3310ir.m32715a().m32713b();
    }

    @Override // com.flurry.sdk.AbstractC3360ju
    /* renamed from: a */
    public final void mo32356a(Context context) {
        C3423kp.m32522a(C3326ja.class);
        C3345jm.m32636a();
        C3437ku.m32494a();
        C3333jd.m32671a();
        C3310ir.m32715a();
        C3296il.m32745a();
        C3312is.m32710a();
        C3306ip.m32731a();
        C3314iu.m32707a();
        C3305io.m32733a();
        C3323iz.m32690a();
    }
}
