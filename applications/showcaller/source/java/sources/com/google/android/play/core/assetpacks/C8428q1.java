package com.google.android.play.core.assetpacks;

import com.google.android.play.core.common.C8461a;
import com.google.android.play.core.internal.AbstractC8509p0;
import java.io.File;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.play.core.assetpacks.q1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/q1.class */
public final class C8428q1 {

    /* renamed from: a */
    private final C8446v f37891a;

    /* renamed from: b */
    private final AbstractC8509p0<AbstractC8433r2> f37892b;

    /* renamed from: c */
    private final C8459z0 f37893c;

    /* renamed from: d */
    private final AbstractC8509p0<Executor> f37894d;

    /* renamed from: e */
    private final C8415n0 f37895e;

    /* renamed from: f */
    private final C8461a f37896f;

    public C8428q1(C8446v c8446v, AbstractC8509p0<AbstractC8433r2> abstractC8509p0, C8459z0 c8459z0, AbstractC8509p0<Executor> abstractC8509p02, C8415n0 c8415n0, C8461a c8461a) {
        this.f37891a = c8446v;
        this.f37892b = abstractC8509p0;
        this.f37893c = c8459z0;
        this.f37894d = abstractC8509p02;
        this.f37895e = c8415n0;
        this.f37896f = c8461a;
    }

    /* renamed from: a */
    public final void m3691a(C8416n1 c8416n1) {
        Executor executor;
        Runnable runnable;
        File m3638x = this.f37891a.m3638x(c8416n1.f37669b, c8416n1.f37863c, c8416n1.f37864d);
        File m3669D = this.f37891a.m3669D(c8416n1.f37669b, c8416n1.f37863c, c8416n1.f37864d);
        if (!m3638x.exists() || !m3669D.exists()) {
            throw new C8369bk(String.format("Cannot find pack files to move for pack %s.", c8416n1.f37669b), c8416n1.f37668a);
        }
        File m3642t = this.f37891a.m3642t(c8416n1.f37669b, c8416n1.f37863c, c8416n1.f37864d);
        m3642t.mkdirs();
        if (!m3638x.renameTo(m3642t)) {
            throw new C8369bk("Cannot move merged pack files to final location.", c8416n1.f37668a);
        }
        new File(this.f37891a.m3642t(c8416n1.f37669b, c8416n1.f37863c, c8416n1.f37864d), "merge.tmp").delete();
        File m3641u = this.f37891a.m3641u(c8416n1.f37669b, c8416n1.f37863c, c8416n1.f37864d);
        m3641u.mkdirs();
        if (!m3669D.renameTo(m3641u)) {
            throw new C8369bk("Cannot move metadata files to final location.", c8416n1.f37668a);
        }
        if (this.f37896f.m3579a()) {
            executor = this.f37894d.m3482a();
            runnable = new Runnable(this, c8416n1) { // from class: com.google.android.play.core.assetpacks.o1

                /* renamed from: d */
                private final C8428q1 f37874d;

                /* renamed from: e */
                private final C8416n1 f37875e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f37874d = this;
                    this.f37875e = c8416n1;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f37874d.m3690b(this.f37875e);
                }
            };
        } else {
            executor = this.f37894d.m3482a();
            C8446v c8446v = this.f37891a;
            c8446v.getClass();
            runnable = RunnableC8424p1.m3693a(c8446v);
        }
        executor.execute(runnable);
        this.f37893c.m3595f(c8416n1.f37669b, c8416n1.f37863c, c8416n1.f37864d);
        this.f37895e.m3717a(c8416n1.f37669b);
        this.f37892b.m3482a().mo3682d(c8416n1.f37668a, c8416n1.f37669b);
    }

    /* renamed from: b */
    public final /* synthetic */ void m3690b(C8416n1 c8416n1) {
        this.f37891a.m3668E(c8416n1.f37669b, c8416n1.f37863c, c8416n1.f37864d);
    }
}
