package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.p232h.p233u.p234a.AbstractC4684b;
import p328e.p329a.AbstractC9476a;
/* renamed from: com.google.android.datatransport.runtime.backends.k */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/k.class */
public final class C4769k implements AbstractC4684b<C4767j> {

    /* renamed from: a */
    private final AbstractC9476a<Context> f14380a;

    /* renamed from: b */
    private final AbstractC9476a<C4765h> f14381b;

    public C4769k(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<C4765h> abstractC9476a2) {
        this.f14380a = abstractC9476a;
        this.f14381b = abstractC9476a2;
    }

    /* renamed from: a */
    public static C4769k m21820a(AbstractC9476a<Context> abstractC9476a, AbstractC9476a<C4765h> abstractC9476a2) {
        return new C4769k(abstractC9476a, abstractC9476a2);
    }

    /* renamed from: c */
    public static C4767j m21818c(Context context, Object obj) {
        return new C4767j(context, (C4765h) obj);
    }

    /* renamed from: b */
    public C4767j get() {
        return m21818c(this.f14380a.get(), this.f14381b.get());
    }
}
