package p092e.p096e.p097a;

import android.os.SystemClock;
/* renamed from: e.e.a.b */
/* loaded from: classes2-dex2jar.jar:e/e/a/b.class */
public class C3011b implements AbstractC3087r {

    /* renamed from: a */
    private long f12605a;

    /* renamed from: b */
    private long f12606b;

    /* renamed from: c */
    private long f12607c;

    /* renamed from: d */
    private long f12608d;

    /* renamed from: e */
    private int f12609e;

    /* renamed from: f */
    private int f12610f = 1000;

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    @Override // p092e.p096e.p097a.AbstractC3087r
    /* renamed from: a */
    public void mo293a(long j) {
        if (this.f12608d <= 0) {
            return;
        }
        char c = j - this.f12607c;
        this.f12605a = 0L;
        long uptimeMillis = SystemClock.uptimeMillis() - this.f12608d;
        if (uptimeMillis > 0) {
            c /= uptimeMillis;
        }
        this.f12609e = c;
    }

    @Override // p092e.p096e.p097a.AbstractC3087r
    /* renamed from: b */
    public void mo292b(long j) {
        this.f12608d = SystemClock.uptimeMillis();
        this.f12607c = j;
    }

    @Override // p092e.p096e.p097a.AbstractC3087r
    /* renamed from: c */
    public void mo291c(long j) {
        if (this.f12610f <= 0) {
            return;
        }
        boolean z = true;
        if (this.f12605a != 0) {
            long uptimeMillis = SystemClock.uptimeMillis() - this.f12605a;
            if (uptimeMillis >= this.f12610f || (this.f12609e == 0 && uptimeMillis > 0)) {
                int i = (int) ((j - this.f12606b) / uptimeMillis);
                this.f12609e = i;
                this.f12609e = Math.max(0, i);
            } else {
                z = false;
            }
        }
        if (!z) {
            return;
        }
        this.f12606b = j;
        this.f12605a = SystemClock.uptimeMillis();
    }

    @Override // p092e.p096e.p097a.AbstractC3087r
    /* renamed from: d */
    public void mo290d() {
        this.f12609e = 0;
        this.f12605a = 0L;
    }
}
