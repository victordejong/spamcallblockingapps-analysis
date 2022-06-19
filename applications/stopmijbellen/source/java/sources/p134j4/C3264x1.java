package p134j4;

import java.io.File;
import java.util.Objects;
import java.util.concurrent.Executor;
import p122i2.RunnableC3087w;
import p189o4.AbstractC3879p;
/* renamed from: j4.x1 */
/* loaded from: classes-dex2jar.jar:j4/x1.class */
public final class C3264x1 {

    /* renamed from: a */
    public final C3259w f11057a;

    /* renamed from: b */
    public final AbstractC3879p f11058b;

    /* renamed from: c */
    public final C3187b1 f11059c;

    /* renamed from: d */
    public final AbstractC3879p f11060d;

    /* renamed from: e */
    public final C3245r0 f11061e;

    public C3264x1(C3259w c3259w, AbstractC3879p abstractC3879p, C3187b1 c3187b1, AbstractC3879p abstractC3879p2, C3245r0 c3245r0) {
        this.f11057a = c3259w;
        this.f11058b = abstractC3879p;
        this.f11059c = c3187b1;
        this.f11060d = abstractC3879p2;
        this.f11061e = c3245r0;
    }

    /* renamed from: a */
    public final void m2476a(C3261w1 c3261w1) {
        File m2489n = this.f11057a.m2489n(c3261w1.f10747b, c3261w1.f11046c, c3261w1.f11048e);
        if (m2489n.exists()) {
            File m2489n2 = this.f11057a.m2489n(c3261w1.f10747b, c3261w1.f11047d, c3261w1.f11048e);
            m2489n2.mkdirs();
            if (!m2489n.renameTo(m2489n2)) {
                throw new C3233n0(String.format("Cannot promote pack %s from %s to %s", c3261w1.f10747b, m2489n.getAbsolutePath(), m2489n2.getAbsolutePath()), c3261w1.f10746a);
            }
            ((Executor) this.f11060d.zza()).execute(new RunnableC3087w(this, c3261w1, 4));
            C3187b1 c3187b1 = this.f11059c;
            String str = c3261w1.f10747b;
            int i = c3261w1.f11047d;
            long j = c3261w1.f11048e;
            Objects.requireNonNull(c3187b1);
            c3187b1.m2562b(new C3254u0(c3187b1, str, i, j));
            this.f11061e.m2514a(c3261w1.f10747b);
            ((AbstractC3228l2) this.f11058b.zza()).mo2524b(c3261w1.f10746a, c3261w1.f10747b);
            return;
        }
        throw new C3233n0(String.format("Cannot find pack files to promote for pack %s at %s", c3261w1.f10747b, m2489n.getAbsolutePath()), c3261w1.f10746a);
    }
}
