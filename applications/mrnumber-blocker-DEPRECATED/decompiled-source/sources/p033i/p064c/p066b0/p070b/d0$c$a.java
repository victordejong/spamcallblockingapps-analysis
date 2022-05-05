package p033i.p064c.p066b0.p070b;

import i.c.b0.e.a.f;
import java.util.concurrent.TimeUnit;
import p033i.p064c.p066b0.p070b.AbstractC0455d0;
/* renamed from: i.c.b0.b.d0$c$a */
/* loaded from: classes2-dex2jar.jar:i/c/b0/b/d0$c$a.class */
final class d0$c$a implements Runnable {

    /* renamed from: f */
    final Runnable f1057f;

    /* renamed from: g */
    final f f1058g;

    /* renamed from: h */
    final long f1059h;

    /* renamed from: i */
    long f1060i;

    /* renamed from: j */
    long f1061j;

    /* renamed from: k */
    long f1062k;

    /* renamed from: l */
    final /* synthetic */ AbstractC0455d0.c f1063l;

    d0$c$a(AbstractC0455d0.c cVar, long j, Runnable runnable, long j2, f fVar, long j3) {
        this.f1063l = cVar;
        this.f1057f = runnable;
        this.f1058g = fVar;
        this.f1059h = j3;
        this.f1061j = j2;
        this.f1062k = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        long j;
        this.f1057f.run();
        if (!this.f1058g.isDisposed()) {
            AbstractC0455d0.c cVar = this.f1063l;
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            long a = cVar.a(timeUnit);
            long j2 = AbstractC0455d0.f1056a;
            long j3 = this.f1061j;
            if (a + j2 >= j3) {
                long j4 = this.f1059h;
                if (a < j3 + j4 + j2) {
                    long j5 = this.f1062k;
                    long j6 = this.f1060i + 1;
                    this.f1060i = j6;
                    j = j5 + (j6 * j4);
                    this.f1061j = a;
                    this.f1058g.a(this.f1063l.c(this, j - a, timeUnit));
                }
            }
            long j7 = this.f1059h;
            j = a + j7;
            long j8 = this.f1060i + 1;
            this.f1060i = j8;
            this.f1062k = j - (j7 * j8);
            this.f1061j = a;
            this.f1058g.a(this.f1063l.c(this, j - a, timeUnit));
        }
    }
}
