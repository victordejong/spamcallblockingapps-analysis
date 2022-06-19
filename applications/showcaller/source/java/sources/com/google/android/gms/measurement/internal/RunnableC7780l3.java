package com.google.android.gms.measurement.internal;

import android.util.Log;
/* renamed from: com.google.android.gms.measurement.internal.l3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/l3.class */
public final class RunnableC7780l3 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ int f35417d;

    /* renamed from: e */
    final /* synthetic */ String f35418e;

    /* renamed from: f */
    final /* synthetic */ Object f35419f;

    /* renamed from: g */
    final /* synthetic */ Object f35420g;

    /* renamed from: h */
    final /* synthetic */ Object f35421h;

    /* renamed from: i */
    final /* synthetic */ C7813o3 f35422i;

    public RunnableC7780l3(C7813o3 c7813o3, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f35422i = c7813o3;
        this.f35417d = i;
        this.f35418e = str;
        this.f35419f = obj;
        this.f35420g = obj2;
        this.f35421h = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        C7697e4 m6005z = this.f35422i.f35460a.m6005z();
        if (!m6005z.m6210i()) {
            Log.println(6, this.f35422i.m6184y(), "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.f35422i.f35513c;
        if (c == 0) {
            if (this.f35422i.f35460a.m6006y().m6477o()) {
                C7813o3 c7813o3 = this.f35422i;
                c7813o3.f35460a.mo6028c();
                c7813o3.f35513c = 'C';
            } else {
                C7813o3 c7813o32 = this.f35422i;
                c7813o32.f35460a.mo6028c();
                c7813o32.f35513c = 'c';
            }
        }
        j = this.f35422i.f35514d;
        if (j < 0) {
            C7813o3 c7813o33 = this.f35422i;
            c7813o33.f35460a.m6006y().m6478n();
            c7813o33.f35514d = 39065L;
        }
        char charAt = "01VDIWEA?".charAt(this.f35417d);
        c2 = this.f35422i.f35513c;
        j2 = this.f35422i.f35514d;
        String m6183z = C7813o3.m6183z(true, this.f35418e, this.f35419f, this.f35420g, this.f35421h);
        StringBuilder sb = new StringBuilder(String.valueOf(m6183z).length() + 24);
        sb.append("2");
        sb.append(charAt);
        sb.append(c2);
        sb.append(j2);
        sb.append(":");
        sb.append(m6183z);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.f35418e.substring(0, 1024);
        }
        C7661b4 c7661b4 = m6005z.f35195e;
        if (c7661b4 == null) {
            return;
        }
        c7661b4.m6582a(str, 1L);
    }
}
