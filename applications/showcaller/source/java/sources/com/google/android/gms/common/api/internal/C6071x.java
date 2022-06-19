package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.api.internal.ComponentCallbacks2C6015c;
/* renamed from: com.google.android.gms.common.api.internal.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/x.class */
final class C6071x implements ComponentCallbacks2C6015c.AbstractC6016a {

    /* renamed from: a */
    final /* synthetic */ C6025f f19365a;

    public C6071x(C6025f c6025f) {
        this.f19365a = c6025f;
    }

    @Override // com.google.android.gms.common.api.internal.ComponentCallbacks2C6015c.AbstractC6016a
    /* renamed from: a */
    public final void mo2518a(boolean z) {
        Handler handler;
        Handler handler2;
        handler = this.f19365a.f19277w;
        handler2 = this.f19365a.f19277w;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z)));
    }
}
