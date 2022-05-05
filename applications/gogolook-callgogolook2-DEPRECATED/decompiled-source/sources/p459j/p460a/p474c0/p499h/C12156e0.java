package p459j.p460a.p474c0.p499h;

import android.os.SystemClock;
/* renamed from: j.a.c0.h.e0 */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/e0.class */
public class C12156e0 {

    /* renamed from: a */
    public final String f27300a;

    /* renamed from: b */
    public final String f27301b;

    /* renamed from: c */
    public final long f27302c;

    /* renamed from: d */
    public long f27303d;

    public C12156e0(String str, String str2) {
        this(str, str2, -1L);
    }

    public C12156e0(String str, String str2, long j) {
        this.f27300a = str;
        this.f27301b = str2;
        this.f27302c = j;
    }

    /* renamed from: a */
    public void m6960a() {
        this.f27303d = SystemClock.elapsedRealtime();
        if (C12153d0.m6992a(this.f27300a, 2)) {
            String str = this.f27300a;
            C12153d0.m6983d(str, "Timer start for " + this.f27301b);
        }
    }

    /* renamed from: b */
    public void m6959b() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f27303d;
        String format = String.format("Used %dms for %s", Long.valueOf(elapsedRealtime), this.f27301b);
        C12153d0.m6989b(3, this.f27300a, format);
        long j = this.f27302c;
        if (j != -1 && elapsedRealtime > j) {
            C12153d0.m6981e(this.f27300a, format);
        } else if (C12153d0.m6992a(this.f27300a, 2)) {
            C12153d0.m6983d(this.f27300a, format);
        }
    }
}
