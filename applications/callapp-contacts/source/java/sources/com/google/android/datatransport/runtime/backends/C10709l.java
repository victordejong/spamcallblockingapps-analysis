package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.backends.l */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/l.class */
public final class C10709l implements AbstractC10685b<C10707k> {

    /* renamed from: a */
    private final AbstractC18213a<Context> f34567a;

    /* renamed from: b */
    private final AbstractC18213a<C10705i> f34568b;

    public C10709l(AbstractC18213a<Context> abstractC18213a, AbstractC18213a<C10705i> abstractC18213a2) {
        this.f34567a = abstractC18213a;
        this.f34568b = abstractC18213a2;
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final /* synthetic */ Object mo4304a() {
        return new C10707k(this.f34567a.mo4304a(), this.f34568b.mo4304a());
    }
}
