package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.p316a.p317a.AbstractC10685b;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import javax.p517a.AbstractC18213a;
/* renamed from: com.google.android.datatransport.runtime.backends.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/j.class */
public final class C10706j implements AbstractC10685b<C10705i> {

    /* renamed from: a */
    private final AbstractC18213a<Context> f34559a;

    /* renamed from: b */
    private final AbstractC18213a<AbstractC10719a> f34560b;

    /* renamed from: c */
    private final AbstractC18213a<AbstractC10719a> f34561c;

    public C10706j(AbstractC18213a<Context> abstractC18213a, AbstractC18213a<AbstractC10719a> abstractC18213a2, AbstractC18213a<AbstractC10719a> abstractC18213a3) {
        this.f34559a = abstractC18213a;
        this.f34560b = abstractC18213a2;
        this.f34561c = abstractC18213a3;
    }

    @Override // javax.p517a.AbstractC18213a
    /* renamed from: a */
    public final /* synthetic */ Object mo4304a() {
        return new C10705i(this.f34559a.mo4304a(), this.f34560b.mo4304a(), this.f34561c.mo4304a());
    }
}
