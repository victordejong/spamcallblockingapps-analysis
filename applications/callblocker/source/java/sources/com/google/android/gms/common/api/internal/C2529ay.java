package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.C2587d;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C2548f;
import com.google.android.gms.common.api.internal.C2555j;
import com.google.android.gms.tasks.C4470h;
/* renamed from: com.google.android.gms.common.api.internal.ay */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ay.class */
public final class C2529ay extends AbstractC2527aw<Boolean> {

    /* renamed from: b */
    private final C2555j.C2556a<?> f7126b;

    public C2529ay(C2555j.C2556a<?> c2556a, C4470h<Boolean> c4470h) {
        super(4, c4470h);
        this.f7126b = c2556a;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2527aw, com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo14363a(Status status) {
        super.mo14363a(status);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2527aw, com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo14362a(C2538bg c2538bg, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2527aw, com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo14361a(RuntimeException runtimeException) {
        super.mo14361a(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2570x
    /* renamed from: a */
    public final C2587d[] mo14218a(C2548f.C2549a<?> c2549a) {
        C2513ai c2513ai = c2549a.m14278c().get(this.f7126b);
        return c2513ai == null ? null : c2513ai.f7091a.m14235b();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2570x
    /* renamed from: b */
    public final boolean mo14217b(C2548f.C2549a<?> c2549a) {
        C2513ai c2513ai = c2549a.m14278c().get(this.f7126b);
        return c2513ai != null && c2513ai.f7091a.m14234c();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2527aw
    /* renamed from: d */
    public final void mo14360d(C2548f.C2549a<?> c2549a) {
        C2513ai remove = c2549a.m14278c().remove(this.f7126b);
        if (remove == null) {
            this.f7122a.m3885b((C4470h<T>) false);
            return;
        }
        remove.f7092b.m14228a(c2549a.m14283b(), this.f7122a);
        remove.f7091a.m14237a();
    }
}
