package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.C2471a.AbstractC2475d;
import com.google.android.gms.common.api.C2489c;
import com.google.android.gms.common.api.internal.C2545d;
/* renamed from: com.google.android.gms.common.api.internal.ad */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ad.class */
public final class C2508ad<O extends C2471a.AbstractC2475d> extends C2569w {

    /* renamed from: a */
    private final C2489c<O> f7083a;

    public C2508ad(C2489c<O> c2489c) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f7083a = c2489c;
    }

    @Override // com.google.android.gms.common.api.AbstractC2492d
    /* renamed from: a */
    public final <A extends C2471a.AbstractC2473b, T extends C2545d.AbstractC2546a<? extends AbstractC2500h, A>> T mo14398a(T t) {
        return (T) this.f7083a.m14433a((C2489c<O>) t);
    }

    @Override // com.google.android.gms.common.api.AbstractC2492d
    /* renamed from: a */
    public final void mo14399a(C2521aq c2521aq) {
    }

    @Override // com.google.android.gms.common.api.AbstractC2492d
    /* renamed from: b */
    public final Looper mo14397b() {
        return this.f7083a.m14427h();
    }

    @Override // com.google.android.gms.common.api.AbstractC2492d
    /* renamed from: b */
    public final void mo14396b(C2521aq c2521aq) {
    }
}
