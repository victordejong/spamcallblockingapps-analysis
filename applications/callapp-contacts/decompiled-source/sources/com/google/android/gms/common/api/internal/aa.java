package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.api.internal.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/aa.class */
final class aa implements c.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ f f22628a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(f fVar) {
        this.f22628a = fVar;
    }

    @Override // com.google.android.gms.common.api.internal.c.a
    public final void a(boolean z) {
        Handler handler;
        Handler handler2;
        handler = this.f22628a.g;
        handler2 = this.f22628a.g;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z)));
    }
}
