package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egm.class */
final class egm implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Handler f27810a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public egm(edk edkVar, Handler handler) {
        this.f27810a = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f27810a.post(runnable);
    }
}
