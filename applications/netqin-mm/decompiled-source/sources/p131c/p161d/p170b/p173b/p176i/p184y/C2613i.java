package p131c.p161d.p170b.p173b.p176i.p184y;

import android.content.Context;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.AbstractC2598b;
import p131c.p161d.p170b.p173b.p176i.p180v.p181a.C2600d;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.AbstractC2633r;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c;
import p571e.p572a.AbstractC9866a;
/* renamed from: c.d.b.b.i.y.i */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/i.class */
public final class C2613i implements AbstractC2598b<AbstractC2633r> {

    /* renamed from: a */
    public final AbstractC9866a<Context> f9685a;

    /* renamed from: b */
    public final AbstractC9866a<AbstractC2644c> f9686b;

    /* renamed from: c */
    public final AbstractC9866a<SchedulerConfig> f9687c;

    /* renamed from: d */
    public final AbstractC9866a<AbstractC2541a> f9688d;

    public C2613i(AbstractC9866a<Context> aVar, AbstractC9866a<AbstractC2644c> aVar2, AbstractC9866a<SchedulerConfig> aVar3, AbstractC9866a<AbstractC2541a> aVar4) {
        this.f9685a = aVar;
        this.f9686b = aVar2;
        this.f9687c = aVar3;
        this.f9688d = aVar4;
    }

    /* renamed from: a */
    public static C2613i m29430a(AbstractC9866a<Context> aVar, AbstractC9866a<AbstractC2644c> aVar2, AbstractC9866a<SchedulerConfig> aVar3, AbstractC9866a<AbstractC2541a> aVar4) {
        return new C2613i(aVar, aVar2, aVar3, aVar4);
    }

    /* renamed from: a */
    public static AbstractC2633r m29431a(Context context, AbstractC2644c cVar, SchedulerConfig schedulerConfig, AbstractC2541a aVar) {
        AbstractC2633r a = AbstractC2612h.m29432a(context, cVar, schedulerConfig, aVar);
        C2600d.m29451a(a, "Cannot return null from a non-@Nullable @Provides method");
        return a;
    }

    @Override // p571e.p572a.AbstractC9866a
    public AbstractC2633r get() {
        return m29431a(this.f9685a.get(), this.f9686b.get(), this.f9687c.get(), this.f9688d.get());
    }
}
