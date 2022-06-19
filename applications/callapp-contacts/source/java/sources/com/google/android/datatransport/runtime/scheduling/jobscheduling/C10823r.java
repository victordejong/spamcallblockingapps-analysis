package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import com.google.android.datatransport.runtime.synchronization.AbstractC10825a;
import java.util.concurrent.Executor;
import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/r.class */
public final class C10823r implements AbstractC10685b<C10820o> {

    /* renamed from: a */
    private final AbstractC18213a<Executor> f34763a;

    /* renamed from: b */
    private final AbstractC18213a<AbstractC10762c> f34764b;

    /* renamed from: c */
    private final AbstractC18213a<AbstractC10824s> f34765c;

    /* renamed from: d */
    private final AbstractC18213a<AbstractC10825a> f34766d;

    public C10823r(AbstractC18213a<Executor> abstractC18213a, AbstractC18213a<AbstractC10762c> abstractC18213a2, AbstractC18213a<AbstractC10824s> abstractC18213a3, AbstractC18213a<AbstractC10825a> abstractC18213a4) {
        this.f34763a = abstractC18213a;
        this.f34764b = abstractC18213a2;
        this.f34765c = abstractC18213a3;
        this.f34766d = abstractC18213a4;
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final /* synthetic */ Object mo4304a() {
        return new C10820o(this.f34763a.mo4304a(), this.f34764b.mo4304a(), this.f34765c.mo4304a(), this.f34766d.mo4304a());
    }
}
