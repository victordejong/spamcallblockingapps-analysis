package com.google.firebase.installations.remote;

import com.google.firebase.installations.C9228n;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.installations.remote.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/remote/d.class */
class C9241d {

    /* renamed from: a */
    private static final long f39675a = TimeUnit.HOURS.toMillis(24);

    /* renamed from: b */
    private static final long f39676b = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: c */
    private final C9228n f39677c = C9228n.m1474c();

    /* renamed from: d */
    private long f39678d;

    /* renamed from: e */
    private int f39679e;

    /* renamed from: a */
    private long m1426a(int i) {
        synchronized (this) {
            if (!m1424c(i)) {
                return f39675a;
            }
            return (long) Math.min(Math.pow(2.0d, this.f39679e) + this.f39677c.m1472e(), f39676b);
        }
    }

    /* renamed from: c */
    private static boolean m1424c(int i) {
        return i == 429 || (i >= 500 && i < 600);
    }

    /* renamed from: d */
    private static boolean m1423d(int i) {
        return (i >= 200 && i < 300) || i == 401 || i == 404;
    }

    /* renamed from: e */
    private void m1422e() {
        synchronized (this) {
            this.f39679e = 0;
        }
    }

    /* renamed from: b */
    public boolean m1425b() {
        boolean z;
        synchronized (this) {
            if (this.f39679e != 0) {
                if (this.f39677c.m1476a() <= this.f39678d) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    /* renamed from: f */
    public void m1421f(int i) {
        synchronized (this) {
            if (m1423d(i)) {
                m1422e();
                return;
            }
            this.f39679e++;
            this.f39678d = this.f39677c.m1476a() + m1426a(i);
        }
    }
}
