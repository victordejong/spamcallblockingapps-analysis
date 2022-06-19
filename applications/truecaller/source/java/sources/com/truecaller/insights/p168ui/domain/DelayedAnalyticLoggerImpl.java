package com.truecaller.insights.p168ui.domain;

import com.huawei.hms.opendevice.AbstractC2405c;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p437c.p438a.p479i.AbstractC9105a;
import p193e.p194a.p437c.p438a.p479i.C9106b;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.k;
import s1.u.i;
import s1.w.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u001b\b\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0013\u0012\b\b\u0001\u0010%\u001a\u00020\"¢\u0006\u0004\b&\u0010'J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0006\u0010\u0004J\u001f\u0010\u000b\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\r\u0010\u0004R(\u0010\u0012\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\t0\u000f0\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, d2 = {"Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;", "Le/a/c/a/i/a;", "Ls1/s;", "onResume", "()V", "onPause", "onDestroy", "Le/a/c/r/d/b;", "event", "", "delayInMillis", "Nz", "(Le/a/c/r/d/b;J)V", "a", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Ls1/k;", AbstractC2405c.f7629a, "Ljava/util/concurrent/CopyOnWriteArrayList;", "analyticsCache", "Le/a/c/e/c;", "e", "Le/a/c/e/c;", "insightsAnalyticsManager", "", "d", "Z", "isResumed", "Lq3/a/i0;", C22021b.f61237c, "Lq3/a/i0;", "coroutineScope", "Lq3/a/y;", "Lq3/a/y;", "job", "Ls1/w/f;", "f", "Ls1/w/f;", "ioContext", "<init>", "(Le/a/c/e/c;Ls1/w/f;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.domain.DelayedAnalyticLoggerImpl */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl.class */
public final class DelayedAnalyticLoggerImpl implements AbstractC9105a {

    /* renamed from: a */
    public final y f12718a;

    /* renamed from: b */
    public final i0 f12719b;

    /* renamed from: c */
    public final CopyOnWriteArrayList<k<C10529b, Long>> f12720c = new CopyOnWriteArrayList<>();

    /* renamed from: d */
    public boolean f12721d;

    /* renamed from: e */
    public final AbstractC10060c f12722e;

    /* renamed from: f */
    public final f f12723f;

    @Inject
    public DelayedAnalyticLoggerImpl(AbstractC10060c abstractC10060c, @Named("IO") f fVar) {
        l.e(abstractC10060c, "insightsAnalyticsManager");
        l.e(fVar, "ioContext");
        this.f12722e = abstractC10060c;
        this.f12723f = fVar;
        y n = d.n((p1) null, 1);
        this.f12718a = n;
        this.f12719b = d.h(fVar.plus(n));
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9105a
    /* renamed from: Nz */
    public void mo27878Nz(C10529b c10529b, long j) {
        l.e(c10529b, "event");
        this.f12720c.add(new k<>(c10529b, Long.valueOf(j)));
        m35208a();
    }

    /* renamed from: a */
    public final void m35208a() {
        if (!this.f12721d) {
            return;
        }
        List S0 = i.S0(this.f12720c);
        this.f12720c.clear();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : S0) {
            Long valueOf = Long.valueOf(((Number) ((k) obj).b).longValue());
            Object obj2 = linkedHashMap.get(valueOf);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(valueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            d.w2(this.f12719b, (f) null, (j0) null, new C9106b(this, ((Number) entry.getKey()).longValue(), (List) entry.getValue(), null), 3, (Object) null);
        }
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_DESTROY)
    public final void onDestroy() {
        d.S(this.f12719b, (CancellationException) null, 1);
        this.f12720c.clear();
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_PAUSE)
    public final void onPause() {
        this.f12721d = false;
        d.Y(this.f12718a, (CancellationException) null, 1, (Object) null);
        this.f12720c.clear();
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_RESUME)
    public final void onResume() {
        this.f12721d = true;
        m35208a();
    }
}
