package com.google.android.gms.measurement.internal;

import android.util.Log;
/* renamed from: com.google.android.gms.measurement.internal.l3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l3.class */
final class RunnableC2289l3 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ int f10267b;

    /* renamed from: c */
    final /* synthetic */ String f10268c;

    /* renamed from: d */
    final /* synthetic */ Object f10269d;

    /* renamed from: e */
    final /* synthetic */ Object f10270e;

    /* renamed from: f */
    final /* synthetic */ Object f10271f;

    /* renamed from: g */
    final /* synthetic */ o3 f10272g;

    RunnableC2289l3(o3 o3Var, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f10272g = o3Var;
        this.f10267b = i;
        this.f10268c = str;
        this.f10269d = obj;
        this.f10270e = obj2;
        this.f10271f = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        o3 o3Var;
        e4 A = ((m5) this.f10272g).a.A();
        if (!A.i()) {
            Log.println(6, this.f10272g.z(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (o3.C(this.f10272g) == 0) {
            if (((m5) this.f10272g).a.z().o()) {
                o3Var = this.f10272g;
                ((m5) o3Var).a.a();
                c = 'C';
            } else {
                o3Var = this.f10272g;
                ((m5) o3Var).a.a();
                c = 'c';
            }
            o3.D(o3Var, c);
        }
        if (o3.E(this.f10272g) < 0) {
            o3 o3Var2 = this.f10272g;
            ((m5) o3Var2).a.z().n();
            o3.F(o3Var2, 39065L);
        }
        char charAt = "01VDIWEA?".charAt(this.f10267b);
        char C = o3.C(this.f10272g);
        long E = o3.E(this.f10272g);
        String A2 = o3.A(true, this.f10268c, this.f10269d, this.f10270e, this.f10271f);
        StringBuilder sb = new StringBuilder(String.valueOf(A2).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(C);
        sb.append(E);
        sb.append(":");
        sb.append(A2);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.f10268c.substring(0, 1024);
        }
        C2226b4 c2226b4 = A.d;
        if (c2226b4 == null) {
            return;
        }
        c2226b4.m4021a(str, 1L);
    }
}
