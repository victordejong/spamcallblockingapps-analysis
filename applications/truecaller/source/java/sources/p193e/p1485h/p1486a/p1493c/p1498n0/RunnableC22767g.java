package p193e.p1485h.p1486a.p1493c.p1498n0;

import android.content.Context;
/* renamed from: e.h.a.c.n0.g */
/* loaded from: classes-dex2jar.jar:e/h/a/c/n0/g.class */
public class RunnableC22767g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Context f63068a;

    /* renamed from: b */
    public final /* synthetic */ C22759e f63069b;

    public RunnableC22767g(C22759e c22759e, Context context) {
        this.f63069b = c22759e;
        this.f63068a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f63069b.f63040d.m42081b().m7855b(this.f63069b.f63040d.f2240a, "Pushing Notification Viewed event onto queue flush async");
        this.f63069b.m7809g(this.f63068a, EnumC22757c.PUSH_NOTIFICATION_VIEWED);
    }
}
