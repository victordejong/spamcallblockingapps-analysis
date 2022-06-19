package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.runtime.backends.AbstractC10699e;
import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10824s;
import com.google.android.datatransport.runtime.scheduling.p322a.AbstractC10762c;
import com.google.android.datatransport.runtime.synchronization.AbstractC10825a;
import java.util.concurrent.Executor;
import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/d.class */
public final class C10796d implements AbstractC10685b<C10748a> {

    /* renamed from: a */
    private final AbstractC18213a<Executor> f34697a;

    /* renamed from: b */
    private final AbstractC18213a<AbstractC10699e> f34698b;

    /* renamed from: c */
    private final AbstractC18213a<AbstractC10824s> f34699c;

    /* renamed from: d */
    private final AbstractC18213a<AbstractC10762c> f34700d;

    /* renamed from: e */
    private final AbstractC18213a<AbstractC10825a> f34701e;

    public C10796d(AbstractC18213a<Executor> abstractC18213a, AbstractC18213a<AbstractC10699e> abstractC18213a2, AbstractC18213a<AbstractC10824s> abstractC18213a3, AbstractC18213a<AbstractC10762c> abstractC18213a4, AbstractC18213a<AbstractC10825a> abstractC18213a5) {
        this.f34697a = abstractC18213a;
        this.f34698b = abstractC18213a2;
        this.f34699c = abstractC18213a3;
        this.f34700d = abstractC18213a4;
        this.f34701e = abstractC18213a5;
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final /* synthetic */ Object mo4304a() {
        return new C10748a(this.f34697a.mo4304a(), this.f34698b.mo4304a(), this.f34699c.mo4304a(), this.f34700d.mo4304a(), this.f34701e.mo4304a());
    }
}
