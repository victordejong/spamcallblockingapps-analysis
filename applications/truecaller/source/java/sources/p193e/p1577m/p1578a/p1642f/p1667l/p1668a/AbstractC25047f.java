package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import android.os.Handler;
import com.google.android.gms.internal.measurement.zzby;
import java.util.Objects;
/* renamed from: e.m.a.f.l.a.f */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/f.class */
public abstract class AbstractC25047f {

    /* renamed from: d */
    public static volatile Handler f70067d;

    /* renamed from: a */
    public final AbstractC25124x0 f70068a;

    /* renamed from: b */
    public final Runnable f70069b;

    /* renamed from: c */
    public volatile long f70070c;

    public AbstractC25047f(AbstractC25124x0 abstractC25124x0) {
        Objects.requireNonNull(abstractC25124x0, "null reference");
        this.f70068a = abstractC25124x0;
        this.f70069b = new RunnableC25041e(this, abstractC25124x0);
    }

    /* renamed from: a */
    public final void m4227a() {
        this.f70070c = 0L;
        m4224d().removeCallbacks(this.f70069b);
    }

    /* renamed from: b */
    public abstract void m4226b();

    /* renamed from: c */
    public final void m4225c(long j) {
        m4227a();
        if (j >= 0) {
            this.f70070c = this.f70068a.zzav().mo38787c();
            if (m4224d().postDelayed(this.f70069b, j)) {
                return;
            }
            this.f70068a.zzay().f.m38589b("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    /* renamed from: d */
    public final Handler m4224d() {
        Handler handler;
        if (f70067d != null) {
            return f70067d;
        }
        synchronized (AbstractC25047f.class) {
            try {
                if (f70067d == null) {
                    f70067d = new zzby(this.f70068a.zzau().getMainLooper());
                }
                handler = f70067d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }
}
