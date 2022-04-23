package com.google.firebase.installations.b;

import com.google.firebase.installations.o;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/b/e.class */
final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final long f32414a = TimeUnit.HOURS.toMillis(24);

    /* renamed from: b  reason: collision with root package name */
    private static final long f32415b = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: c  reason: collision with root package name */
    private final o f32416c;

    /* renamed from: d  reason: collision with root package name */
    private long f32417d;
    private int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e() {
        this.f32416c = o.a();
    }

    e(o oVar) {
        this.f32416c = oVar;
    }

    private long b(int i) {
        synchronized (this) {
            if (!(i == 429 || (i >= 500 && i < 600))) {
                return f32414a;
            }
            return (long) Math.min(Math.pow(2.0d, this.e) + o.d(), f32415b);
        }
    }

    private void b() {
        synchronized (this) {
            this.e = 0;
        }
    }

    public final void a(int i) {
        synchronized (this) {
            if ((i >= 200 && i < 300) || i == 401 || i == 404) {
                b();
                return;
            }
            this.e++;
            this.f32417d = this.f32416c.c() + b(i);
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this) {
            if (this.e != 0) {
                if (this.f32416c.c() <= this.f32417d) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }
}
