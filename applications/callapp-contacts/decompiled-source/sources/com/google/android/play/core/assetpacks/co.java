package com.google.android.play.core.assetpacks;

import android.content.Context;
import com.google.android.play.core.internal.ah;
import com.google.android.play.core.internal.be;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/co.class */
public final class co implements be<Context> {

    /* renamed from: a  reason: collision with root package name */
    final ck f31256a;

    public co(ck ckVar) {
        this.f31256a = ckVar;
    }

    public static Context a(ck ckVar) {
        Context context = ckVar.f31248a;
        ah.a(context);
        return context;
    }

    @Override // com.google.android.play.core.internal.be
    public final /* bridge */ /* synthetic */ Context a() {
        return a(this.f31256a);
    }
}
