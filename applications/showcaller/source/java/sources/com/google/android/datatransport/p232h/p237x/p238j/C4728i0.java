package com.google.android.datatransport.p232h.p237x.p238j;

import android.content.Context;
import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.h.x.j.i0 */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/i0.class */
public final class C4728i0 implements AbstractC4684b<C4725h0> {

    /* renamed from: a */
    private final AbstractC9476a<Context> f14325a;

    /* renamed from: b */
    private final AbstractC9476a<String> f14326b;

    /* renamed from: c */
    private final AbstractC9476a<Integer> f14327c;

    public C4728i0(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<String> abstractC9476a2, AbstractC9476a<Integer> abstractC9476a3) {
        this.f14325a = abstractC9476a;
        this.f14326b = abstractC9476a2;
        this.f14327c = abstractC9476a3;
    }

    /* renamed from: a */
    public static C4728i0 m21879a(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<String> abstractC9476a2, AbstractC9476a<Integer> abstractC9476a3) {
        return new C4728i0(abstractC9476a, abstractC9476a2, abstractC9476a3);
    }

    /* renamed from: c */
    public static C4725h0 m21877c(Context context, String str, int i) {
        return new C4725h0(context, str, i);
    }

    /* renamed from: b */
    public C4725h0 get() {
        return m21877c(this.f14325a.get(), this.f14326b.get(), this.f14327c.get().intValue());
    }
}
