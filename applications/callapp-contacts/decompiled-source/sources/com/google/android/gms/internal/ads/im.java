package com.google.android.gms.internal.ads;

import android.os.Binder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/im.class */
public final class im implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ih f28065a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public im(ih ihVar) {
        this.f28065a = ihVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ih ihVar = this.f28065a;
        if (ihVar.f28059a != null) {
            ihVar.f28059a.disconnect();
            Binder.flushPendingCommands();
        }
    }
}
