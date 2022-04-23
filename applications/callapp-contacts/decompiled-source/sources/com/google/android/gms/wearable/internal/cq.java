package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.internal.d;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cq.class */
class cq<T> extends a {

    /* renamed from: a  reason: collision with root package name */
    private d.b<T> f30105a;

    public cq(d.b<T> bVar) {
        this.f30105a = bVar;
    }

    public final void a(T t) {
        d.b<T> bVar = this.f30105a;
        if (bVar != null) {
            bVar.a(t);
            this.f30105a = null;
        }
    }
}
