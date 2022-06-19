package p193e.p1577m.p1578a.p1596c;

import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
/* renamed from: e.m.a.c.b0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/b0.class */
public final class C24189b0 extends Exception {

    /* renamed from: a */
    public final int f66942a;

    /* renamed from: b */
    public final int f66943b;

    /* renamed from: c */
    public final Format f66944c;

    /* renamed from: d */
    public final int f66945d;

    public C24189b0(int i, Throwable th) {
        super(th);
        this.f66942a = i;
        this.f66943b = -1;
        this.f66944c = null;
        this.f66945d = 4;
        SystemClock.elapsedRealtime();
    }

    public C24189b0(int i, Throwable th, int i2, Format format, int i3) {
        super(th);
        this.f66942a = i;
        this.f66943b = i2;
        this.f66944c = format;
        this.f66945d = i3;
        SystemClock.elapsedRealtime();
    }
}
