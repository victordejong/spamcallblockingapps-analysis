package p081h.p203i.p325c.p336m;

import java.util.Map;
import p081h.p203i.p325c.p362r.AbstractC9855b;
import p081h.p203i.p325c.p362r.C9854a;
/* renamed from: h.i.c.m.q */
/* loaded from: classes2-dex2jar.jar:h/i/c/m/q.class */
public final /* synthetic */ class RunnableC9501q implements Runnable {

    /* renamed from: a */
    public final Map.Entry f21647a;

    /* renamed from: b */
    public final C9854a f21648b;

    public RunnableC9501q(Map.Entry entry, C9854a aVar) {
        this.f21647a = entry;
        this.f21648b = aVar;
    }

    /* renamed from: a */
    public static Runnable m15042a(Map.Entry entry, C9854a aVar) {
        return new RunnableC9501q(entry, aVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        ((AbstractC9855b) this.f21647a.getKey()).mo14046a(this.f21648b);
    }
}
