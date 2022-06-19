package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.AbstractC10699e;
import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import com.google.android.datatransport.runtime.synchronization.AbstractC10825a;
import java.util.concurrent.Executor;
import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/n.class */
public final class C10819n implements AbstractC10685b<C10813h> {

    /* renamed from: a */
    private final AbstractC18213a<Context> f34750a;

    /* renamed from: b */
    private final AbstractC18213a<AbstractC10699e> f34751b;

    /* renamed from: c */
    private final AbstractC18213a<AbstractC10762c> f34752c;

    /* renamed from: d */
    private final AbstractC18213a<AbstractC10824s> f34753d;

    /* renamed from: e */
    private final AbstractC18213a<Executor> f34754e;

    /* renamed from: f */
    private final AbstractC18213a<AbstractC10825a> f34755f;

    /* renamed from: g */
    private final AbstractC18213a<AbstractC10719a> f34756g;

    public C10819n(AbstractC18213a<Context> abstractC18213a, AbstractC18213a<AbstractC10699e> abstractC18213a2, AbstractC18213a<AbstractC10762c> abstractC18213a3, AbstractC18213a<AbstractC10824s> abstractC18213a4, AbstractC18213a<Executor> abstractC18213a5, AbstractC18213a<AbstractC10825a> abstractC18213a6, AbstractC18213a<AbstractC10719a> abstractC18213a7) {
        this.f34750a = abstractC18213a;
        this.f34751b = abstractC18213a2;
        this.f34752c = abstractC18213a3;
        this.f34753d = abstractC18213a4;
        this.f34754e = abstractC18213a5;
        this.f34755f = abstractC18213a6;
        this.f34756g = abstractC18213a7;
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final /* synthetic */ Object mo4304a() {
        return new C10813h(this.f34750a.mo4304a(), this.f34751b.mo4304a(), this.f34752c.mo4304a(), this.f34753d.mo4304a(), this.f34754e.mo4304a(), this.f34755f.mo4304a(), this.f34756g.mo4304a());
    }
}
