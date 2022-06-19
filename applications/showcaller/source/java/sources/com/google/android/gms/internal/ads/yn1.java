package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.C5722o1;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yn1.class */
public class yn1 {

    /* renamed from: a */
    protected final String f32554a = C7013tx.f30410b.m12799e();

    /* renamed from: b */
    protected final Map<String, String> f32555b = new HashMap();

    /* renamed from: c */
    protected final Executor f32556c;

    /* renamed from: d */
    protected final ii0 f32557d;

    /* renamed from: e */
    protected final boolean f32558e;

    /* renamed from: f */
    private final to2 f32559f;

    public yn1(Executor executor, ii0 ii0Var, to2 to2Var) {
        this.f32556c = executor;
        this.f32557d = ii0Var;
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25736l1)).booleanValue()) {
            this.f32558e = ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25768p1)).booleanValue();
        } else {
            this.f32558e = ((double) C7118wr.m9481e().nextFloat()) <= C7013tx.f30409a.m12799e().doubleValue();
        }
        this.f32559f = to2Var;
    }

    /* renamed from: a */
    public final void m8768a(Map<String, String> map) {
        String m10593a = this.f32559f.m10593a(map);
        if (this.f32558e) {
            this.f32556c.execute(new Runnable(this, m10593a) { // from class: com.google.android.gms.internal.ads.xn1

                /* renamed from: d */
                private final yn1 f32131d;

                /* renamed from: e */
                private final String f32132e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f32131d = this;
                    this.f32132e = m10593a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    yn1 yn1Var = this.f32131d;
                    yn1Var.f32557d.mo9583n(this.f32132e);
                }
            });
        }
        C5722o1.m17990k(m10593a);
    }

    /* renamed from: b */
    public final String m8767b(Map<String, String> map) {
        return this.f32559f.m10593a(map);
    }
}
