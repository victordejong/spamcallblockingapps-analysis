package p000;

import java.io.IOException;
/* renamed from: fg */
/* loaded from: classes-dex2jar.jar:fg.class */
public final class C1428fg extends Exception {

    /* renamed from: a */
    public final int f6628a;

    /* renamed from: b */
    public final Throwable f6629b;

    public C1428fg(int i, Throwable th, int i2) {
        super(th);
        this.f6628a = i;
        this.f6629b = th;
    }

    /* renamed from: a */
    public static C1428fg m1758a(OutOfMemoryError outOfMemoryError) {
        return new C1428fg(4, outOfMemoryError, -1);
    }

    /* renamed from: b */
    public static C1428fg m1757b(Exception exc, int i) {
        return new C1428fg(1, exc, i);
    }

    /* renamed from: c */
    public static C1428fg m1756c(IOException iOException) {
        return new C1428fg(0, iOException, -1);
    }

    /* renamed from: d */
    public static C1428fg m1755d(RuntimeException runtimeException) {
        return new C1428fg(2, runtimeException, -1);
    }

    /* renamed from: e */
    public IOException m1754e() {
        it.f(this.f6628a == 0);
        Throwable th = this.f6629b;
        it.e(th);
        return (IOException) th;
    }
}
