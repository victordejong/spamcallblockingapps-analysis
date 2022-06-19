package p193e.p194a.p1129p5;

import android.os.SystemClock;
import java.util.TimeZone;
import s1.z.c.l;
/* renamed from: e.a.p5.d */
/* loaded from: classes15-dex2jar.jar:e/a/p5/d.class */
public final class C19224d implements AbstractC19222c {
    @Override // p193e.p194a.p1129p5.AbstractC19222c
    /* renamed from: a */
    public long mo13821a() {
        return SystemClock.elapsedRealtime();
    }

    @Override // p193e.p194a.p1129p5.AbstractC19222c
    /* renamed from: b */
    public long mo13820b() {
        return System.nanoTime();
    }

    @Override // p193e.p194a.p1129p5.AbstractC19222c
    /* renamed from: c */
    public long mo13819c() {
        return System.currentTimeMillis();
    }

    @Override // p193e.p194a.p1129p5.AbstractC19222c
    /* renamed from: d */
    public long mo13818d() {
        TimeZone timeZone = TimeZone.getDefault();
        l.d(timeZone, "TimeZone.getDefault()");
        return timeZone.getRawOffset();
    }
}
