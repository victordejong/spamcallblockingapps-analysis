package com.google.android.gms.measurement.internal;

import android.util.Log;
/* renamed from: com.google.android.gms.measurement.internal.dl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/dl.class */
public final class RunnableC13944dl implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f51382a;

    /* renamed from: b */
    final /* synthetic */ String f51383b;

    /* renamed from: c */
    final /* synthetic */ Object f51384c;

    /* renamed from: d */
    final /* synthetic */ Object f51385d;

    /* renamed from: e */
    final /* synthetic */ Object f51386e;

    /* renamed from: f */
    final /* synthetic */ C13947do f51387f;

    public RunnableC13944dl(C13947do c13947do, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f51387f = c13947do;
        this.f51382a = i;
        this.f51383b = str;
        this.f51384c = obj;
        this.f51385d = obj2;
        this.f51386e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C13964ee m11991b = this.f51387f.f51637t.m11991b();
        if (!m11991b.m11882f()) {
            Log.println(6, this.f51387f.ag_(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (this.f51387f.f51393a == 0) {
            if (this.f51387f.f51637t.f51529g.m12067b()) {
                this.f51387f.f51393a = (char) 67;
            } else {
                this.f51387f.f51393a = (char) 99;
            }
        }
        if (this.f51387f.f51394b < 0) {
            this.f51387f.f51394b = 39065L;
        }
        char charAt = "01VDIWEA?".charAt(this.f51382a);
        char c = this.f51387f.f51393a;
        long j = this.f51387f.f51394b;
        String m12085a = C13947do.m12085a(true, this.f51383b, this.f51384c, this.f51385d, this.f51386e);
        StringBuilder sb = new StringBuilder(String.valueOf(m12085a).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(c);
        sb.append(j);
        sb.append(":");
        sb.append(m12085a);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.f51383b.substring(0, 1024);
        }
        C13961eb c13961eb = m11991b.f51457c;
        if (c13961eb == null) {
            return;
        }
        c13961eb.m12050a(str);
    }
}
