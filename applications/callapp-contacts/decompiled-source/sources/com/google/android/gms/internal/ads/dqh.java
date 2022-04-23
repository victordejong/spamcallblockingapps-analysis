package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqh.class */
abstract class dqh<T, B> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B a();

    abstract T a(B b2);

    abstract void a(B b2, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(B b2, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(B b2, int i, dlw dlwVar);

    abstract void a(B b2, int i, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(T t, drd drdVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Object obj, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(B b2, dpj dpjVar) throws IOException {
        int b3 = dpjVar.b();
        int i = b3 >>> 3;
        int i2 = b3 & 7;
        if (i2 == 0) {
            a((dqh<T, B>) b2, i, dpjVar.g());
            return true;
        } else if (i2 == 1) {
            b(b2, i, dpjVar.i());
            return true;
        } else if (i2 == 2) {
            a((dqh<T, B>) b2, i, dpjVar.n());
            return true;
        } else if (i2 == 3) {
            B a2 = a();
            while (dpjVar.a() != Integer.MAX_VALUE && a((dqh<T, B>) a2, dpjVar)) {
            }
            if ((4 | (i << 3)) == dpjVar.b()) {
                a((dqh<T, B>) b2, i, (int) a(a2));
                return true;
            }
            throw zzenn.e();
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                a((dqh<T, B>) b2, i, dpjVar.j());
                return true;
            }
            throw zzenn.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T b(Object obj);

    abstract void b(B b2, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(T t, drd drdVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void b(Object obj, B b2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract B c(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T c(T t, T t2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void d(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int e(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int f(T t);
}
