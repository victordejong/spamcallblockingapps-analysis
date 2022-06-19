package com.google.firebase.installations.p397b;

import com.google.firebase.installations.C15830o;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.installations.b.e */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/e.class */
final class C15809e {

    /* renamed from: a */
    private static final long f56226a = TimeUnit.HOURS.toMillis(24);

    /* renamed from: b */
    private static final long f56227b = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: c */
    private final C15830o f56228c;

    /* renamed from: d */
    private long f56229d;

    /* renamed from: e */
    private int f56230e;

    public C15809e() {
        this.f56228c = C15830o.m8272a();
    }

    C15809e(C15830o c15830o) {
        this.f56228c = c15830o;
    }

    /* renamed from: b */
    private long m8322b(int i) {
        synchronized (this) {
            if (!(i == 429 || (i >= 500 && i < 600))) {
                return f56226a;
            }
            return (long) Math.min(Math.pow(2.0d, this.f56230e) + C15830o.m8266d(), f56227b);
        }
    }

    /* renamed from: b */
    private void m8323b() {
        synchronized (this) {
            this.f56230e = 0;
        }
    }

    /* renamed from: a */
    public final void m8324a(int i) {
        synchronized (this) {
            if ((i >= 200 && i < 300) || i == 401 || i == 404) {
                m8323b();
                return;
            }
            this.f56230e++;
            this.f56229d = this.f56228c.m8267c() + m8322b(i);
        }
    }

    /* renamed from: a */
    public final boolean m8325a() {
        boolean z;
        synchronized (this) {
            if (this.f56230e != 0) {
                if (this.f56228c.m8267c() <= this.f56229d) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }
}
