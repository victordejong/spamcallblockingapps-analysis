package p134j4;

import java.io.File;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Executor;
import p122i2.RunnableC3087w;
import p122i2.RunnableC3090z;
import p156l4.C3496b;
import p189o4.AbstractC3879p;
/* renamed from: j4.q1 */
/* loaded from: classes-dex2jar.jar:j4/q1.class */
public final class C3243q1 {

    /* renamed from: a */
    public final C3259w f10938a;

    /* renamed from: b */
    public final AbstractC3879p f10939b;

    /* renamed from: c */
    public final C3187b1 f10940c;

    /* renamed from: d */
    public final AbstractC3879p f10941d;

    /* renamed from: e */
    public final C3245r0 f10942e;

    /* renamed from: f */
    public final C3496b f10943f;

    /* renamed from: g */
    public final C3246r1 f10944g;

    public C3243q1(C3259w c3259w, AbstractC3879p abstractC3879p, C3187b1 c3187b1, AbstractC3879p abstractC3879p2, C3245r0 c3245r0, C3496b c3496b, C3246r1 c3246r1) {
        this.f10938a = c3259w;
        this.f10939b = abstractC3879p;
        this.f10940c = c3187b1;
        this.f10941d = abstractC3879p2;
        this.f10942e = c3245r0;
        this.f10943f = c3496b;
        this.f10944g = c3246r1;
    }

    /* renamed from: a */
    public final void m2515a(C3240p1 c3240p1) {
        File m2487p = this.f10938a.m2487p(c3240p1.f10747b, c3240p1.f10925c, c3240p1.f10926d);
        C3259w c3259w = this.f10938a;
        String str = c3240p1.f10747b;
        int i = c3240p1.f10925c;
        long j = c3240p1.f10926d;
        Objects.requireNonNull(c3259w);
        File file = new File(new File(c3259w.m2497f(str, i, j), "_slices"), "_metadata");
        if (!m2487p.exists() || !file.exists()) {
            throw new C3233n0(String.format("Cannot find pack files to move for pack %s.", c3240p1.f10747b), c3240p1.f10746a);
        }
        File m2489n = this.f10938a.m2489n(c3240p1.f10747b, c3240p1.f10925c, c3240p1.f10926d);
        m2489n.mkdirs();
        if (!m2487p.renameTo(m2489n)) {
            throw new C3233n0("Cannot move merged pack files to final location.", c3240p1.f10746a);
        }
        new File(this.f10938a.m2489n(c3240p1.f10747b, c3240p1.f10925c, c3240p1.f10926d), "merge.tmp").delete();
        File m2488o = this.f10938a.m2488o(c3240p1.f10747b, c3240p1.f10925c, c3240p1.f10926d);
        m2488o.mkdirs();
        if (!file.renameTo(m2488o)) {
            throw new C3233n0("Cannot move metadata files to final location.", c3240p1.f10746a);
        }
        if (this.f10943f.m2229a()) {
            try {
                this.f10944g.m2512b(c3240p1.f10747b, c3240p1.f10925c, c3240p1.f10926d, c3240p1.f10927e);
                ((Executor) this.f10941d.zza()).execute(new RunnableC3087w(this, c3240p1, 3));
            } catch (IOException e) {
                throw new C3233n0(String.format("Could not write asset pack version tag for pack %s: %s", c3240p1.f10747b, e.getMessage()), c3240p1.f10746a);
            }
        } else {
            Executor executor = (Executor) this.f10941d.zza();
            C3259w c3259w2 = this.f10938a;
            Objects.requireNonNull(c3259w2);
            executor.execute(new RunnableC3090z(c3259w2, 1));
        }
        C3187b1 c3187b1 = this.f10940c;
        String str2 = c3240p1.f10747b;
        int i2 = c3240p1.f10925c;
        long j2 = c3240p1.f10926d;
        Objects.requireNonNull(c3187b1);
        c3187b1.m2562b(new C3254u0(c3187b1, str2, i2, j2));
        this.f10942e.m2514a(c3240p1.f10747b);
        ((AbstractC3228l2) this.f10939b.zza()).mo2524b(c3240p1.f10746a, c3240p1.f10747b);
    }
}
