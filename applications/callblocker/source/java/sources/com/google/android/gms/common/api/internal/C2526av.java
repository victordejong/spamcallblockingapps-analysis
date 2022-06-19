package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C2545d;
import com.google.android.gms.common.api.internal.C2545d.AbstractC2546a;
import com.google.android.gms.common.api.internal.C2548f;
/* renamed from: com.google.android.gms.common.api.internal.av */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/av.class */
public final class C2526av<A extends C2545d.AbstractC2546a<? extends AbstractC2500h, C2471a.AbstractC2473b>> extends AbstractC2514aj {

    /* renamed from: a */
    private final A f7121a;

    public C2526av(int i, A a) {
        super(i);
        this.f7121a = a;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public final void mo14363a(Status status) {
        this.f7121a.m14322b(status);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public final void mo14362a(C2538bg c2538bg, boolean z) {
        c2538bg.m14345a(this.f7121a, z);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public final void mo14361a(RuntimeException runtimeException) {
        String simpleName = runtimeException.getClass().getSimpleName();
        String localizedMessage = runtimeException.getLocalizedMessage();
        this.f7121a.m14322b(new Status(10, new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length()).append(simpleName).append(": ").append(localizedMessage).toString()));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: c */
    public final void mo14364c(C2548f.C2549a<?> c2549a) {
        try {
            this.f7121a.m14321b(c2549a.m14283b());
        } catch (RuntimeException e) {
            mo14361a(e);
        }
    }
}
