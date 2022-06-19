package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egm.class */
public final class egm implements Executor {

    /* renamed from: a */
    private final /* synthetic */ Handler f48995a;

    public egm(edk edkVar, Handler handler) {
        this.f48995a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f48995a.post(runnable);
    }
}
