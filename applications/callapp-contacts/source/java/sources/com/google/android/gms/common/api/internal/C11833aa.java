package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.api.internal.ComponentCallbacks2C11886c;
/* renamed from: com.google.android.gms.common.api.internal.aa */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/aa.class */
final class C11833aa implements ComponentCallbacks2C11886c.AbstractC11887a {

    /* renamed from: a */
    final /* synthetic */ C11896f f39213a;

    public C11833aa(C11896f c11896f) {
        this.f39213a = c11896f;
    }

    @Override // com.google.android.gms.common.api.internal.ComponentCallbacks2C11886c.AbstractC11887a
    /* renamed from: a */
    public final void mo8565a(boolean z) {
        Handler handler;
        Handler handler2;
        handler = this.f39213a.f39351g;
        handler2 = this.f39213a.f39351g;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z)));
    }
}
