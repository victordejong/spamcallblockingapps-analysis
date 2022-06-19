package com.google.android.datatransport.runtime.scheduling.p322a;

import android.content.Context;
import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.scheduling.a.ah */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/a/ah.class */
public final class C10760ah implements AbstractC10685b<C10754ac> {

    /* renamed from: a */
    private final AbstractC18213a<Context> f34650a;

    /* renamed from: b */
    private final AbstractC18213a<String> f34651b;

    /* renamed from: c */
    private final AbstractC18213a<Integer> f34652c;

    public C10760ah(AbstractC18213a<Context> abstractC18213a, AbstractC18213a<String> abstractC18213a2, AbstractC18213a<Integer> abstractC18213a3) {
        this.f34650a = abstractC18213a;
        this.f34651b = abstractC18213a2;
        this.f34652c = abstractC18213a3;
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final /* synthetic */ Object mo4304a() {
        return new C10754ac(this.f34650a.mo4304a(), this.f34651b.mo4304a(), this.f34652c.mo4304a().intValue());
    }
}
