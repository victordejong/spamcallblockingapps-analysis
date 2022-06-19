package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1588h;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.Objects;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b;
import p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.C24126a;
/* renamed from: e.m.a.b.j.c0.h.d */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/h/d.class */
public final /* synthetic */ class RunnableC24053d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C24074t f66691a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC24158r f66692b;

    /* renamed from: c */
    public final /* synthetic */ int f66693c;

    /* renamed from: d */
    public final /* synthetic */ Runnable f66694d;

    public /* synthetic */ RunnableC24053d(C24074t c24074t, AbstractC24158r abstractC24158r, int i, Runnable runnable) {
        this.f66691a = c24074t;
        this.f66692b = abstractC24158r;
        this.f66693c = i;
        this.f66694d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final C24074t c24074t = this.f66691a;
        final AbstractC24158r abstractC24158r = this.f66692b;
        final int i = this.f66693c;
        Runnable runnable = this.f66694d;
        Objects.requireNonNull(c24074t);
        try {
            try {
                AbstractC24127b abstractC24127b = c24074t.f66737f;
                final AbstractC24080a0 abstractC24080a0 = c24074t.f66734c;
                Objects.requireNonNull(abstractC24080a0);
                abstractC24127b.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.b
                    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                    public final Object execute() {
                        return Integer.valueOf(AbstractC24080a0.this.mo5566x());
                    }
                });
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) c24074t.f66732a.getSystemService("connectivity")).getActiveNetworkInfo();
                if (!(activeNetworkInfo != null && activeNetworkInfo.isConnected())) {
                    c24074t.f66737f.mo5550k(new AbstractC24127b.AbstractC24128a() { // from class: e.m.a.b.j.c0.h.k
                        @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b.AbstractC24128a
                        public final Object execute() {
                            C24074t c24074t2 = C24074t.this;
                            c24074t2.f66735d.mo5580b(abstractC24158r, i + 1);
                            return null;
                        }
                    });
                } else {
                    c24074t.m5582a(abstractC24158r, i);
                }
            } catch (C24126a e) {
                c24074t.f66735d.mo5580b(abstractC24158r, i + 1);
            }
        } finally {
            runnable.run();
        }
    }
}
