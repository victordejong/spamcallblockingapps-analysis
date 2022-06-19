package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.ComponentCallbacks2C2543c;
/* renamed from: com.google.android.gms.common.api.internal.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/y.class */
public final class C2571y implements ComponentCallbacks2C2543c.AbstractC2544a {

    /* renamed from: a */
    private final /* synthetic */ C2548f f7231a;

    public C2571y(C2548f c2548f) {
        this.f7231a = c2548f;
    }

    @Override // com.google.android.gms.common.api.internal.ComponentCallbacks2C2543c.AbstractC2544a
    /* renamed from: a */
    public final void mo2135a(boolean z) {
        this.f7231a.f7185q.sendMessage(this.f7231a.f7185q.obtainMessage(1, Boolean.valueOf(z)));
    }
}
