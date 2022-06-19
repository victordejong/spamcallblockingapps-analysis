package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzaa;
/* renamed from: e.m.a.f.l.a.e */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/e.class */
public final class RunnableC25041e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC25124x0 f70046a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25047f f70047b;

    public RunnableC25041e(AbstractC25047f abstractC25047f, AbstractC25124x0 abstractC25124x0) {
        this.f70047b = abstractC25047f;
        this.f70046a = abstractC25124x0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70046a.zzaw();
        if (zzaa.m38627a()) {
            this.f70046a.m4160a().n(this);
            return;
        }
        boolean z = this.f70047b.f70070c != 0;
        this.f70047b.f70070c = 0L;
        if (!z) {
            return;
        }
        this.f70047b.m4226b();
    }
}
