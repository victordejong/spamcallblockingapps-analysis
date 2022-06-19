package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.runtime.backends.i */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/i.class */
public final class C4766i implements AbstractC4684b<C4765h> {

    /* renamed from: a */
    private final AbstractC9476a<Context> f14372a;

    /* renamed from: b */
    private final AbstractC9476a<AbstractC4746a> f14373b;

    /* renamed from: c */
    private final AbstractC9476a<AbstractC4746a> f14374c;

    public C4766i(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<AbstractC4746a> abstractC9476a2, AbstractC9476a<AbstractC4746a> abstractC9476a3) {
        this.f14372a = abstractC9476a;
        this.f14373b = abstractC9476a2;
        this.f14374c = abstractC9476a3;
    }

    /* renamed from: a */
    public static C4766i m21827a(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<AbstractC4746a> abstractC9476a2, AbstractC9476a<AbstractC4746a> abstractC9476a3) {
        return new C4766i(abstractC9476a, abstractC9476a2, abstractC9476a3);
    }

    /* renamed from: c */
    public static C4765h m21825c(Context context, AbstractC4746a abstractC4746a, AbstractC4746a abstractC4746a2) {
        return new C4765h(context, abstractC4746a, abstractC4746a2);
    }

    /* renamed from: b */
    public C4765h get() {
        return m21825c(this.f14372a.get(), this.f14373b.get(), this.f14374c.get());
    }
}
