package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.C11892d;
/* renamed from: com.google.android.gms.wearable.internal.cq */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cq.class */
class BinderC14302cq<T> extends BinderC14231a {

    /* renamed from: a */
    private C11892d.AbstractC11894b<T> f52247a;

    public BinderC14302cq(C11892d.AbstractC11894b<T> abstractC11894b) {
        this.f52247a = abstractC11894b;
    }

    /* renamed from: a */
    public final void m11398a(T t) {
        C11892d.AbstractC11894b<T> abstractC11894b = this.f52247a;
        if (abstractC11894b != null) {
            abstractC11894b.mo11401a(t);
            this.f52247a = null;
        }
    }
}
