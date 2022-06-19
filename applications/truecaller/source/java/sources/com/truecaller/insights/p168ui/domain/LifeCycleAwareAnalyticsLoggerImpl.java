package com.truecaller.insights.p168ui.domain;

import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\bR\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;", "Le/a/c/a/i/h;", "Le/a/c/r/d/b;", "event", "Ls1/s;", "Zd", "(Le/a/c/r/d/b;)V", "onPause", "()V", "onDestroy", "Le/a/c/e/c;", C22021b.f61237c, "Le/a/c/e/c;", "insightsAnalyticsManager", "", "a", "Ljava/util/List;", "analyticsCache", "<init>", "(Le/a/c/e/c;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.domain.LifeCycleAwareAnalyticsLoggerImpl */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl.class */
public final class LifeCycleAwareAnalyticsLoggerImpl implements AbstractC9114h {

    /* renamed from: a */
    public final List<C10529b> f12724a = new ArrayList();

    /* renamed from: b */
    public final AbstractC10060c f12725b;

    @Inject
    public LifeCycleAwareAnalyticsLoggerImpl(AbstractC10060c abstractC10060c) {
        l.e(abstractC10060c, "insightsAnalyticsManager");
        this.f12725b = abstractC10060c;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9114h
    /* renamed from: Zd */
    public void mo27869Zd(C10529b c10529b) {
        l.e(c10529b, "event");
        this.f12724a.add(c10529b);
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_DESTROY)
    public final void onDestroy() {
        this.f12724a.clear();
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_PAUSE)
    public final void onPause() {
        this.f12725b.mo26756b(i.S0(this.f12724a));
        this.f12724a.clear();
    }
}
