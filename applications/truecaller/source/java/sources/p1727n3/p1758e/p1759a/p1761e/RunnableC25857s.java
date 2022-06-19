package p1727n3.p1758e.p1759a.p1761e;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25980k0;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26034g;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.C26040i;
/* renamed from: n3.e.a.e.s */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/s.class */
public final /* synthetic */ class RunnableC25857s implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ b1 f72325a;

    /* renamed from: b */
    public final /* synthetic */ C25852r1 f72326b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC25980k0 f72327c;

    /* renamed from: d */
    public final /* synthetic */ Runnable f72328d;

    public /* synthetic */ RunnableC25857s(b1 b1Var, C25852r1 c25852r1, AbstractC25980k0 abstractC25980k0, Runnable runnable) {
        this.f72325a = b1Var;
        this.f72326b = c25852r1;
        this.f72327c = abstractC25980k0;
        this.f72328d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        b1 b1Var = this.f72325a;
        C25852r1 c25852r1 = this.f72326b;
        AbstractC25980k0 abstractC25980k0 = this.f72327c;
        Runnable runnable = this.f72328d;
        b1Var.s.remove(c25852r1);
        ListenableFuture u = b1Var.u(c25852r1, false);
        abstractC25980k0.m2833a();
        ((C26040i) C26034g.m2777g(Arrays.asList(u, abstractC25980k0.m2830d()))).f72708e.addListener(runnable, MediaSessionCompat.m43268U());
    }
}
