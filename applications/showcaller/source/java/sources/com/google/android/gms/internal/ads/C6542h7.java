package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.h7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/h7.class */
public final class C6542h7 extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ C6579i7 f23815a;

    public /* synthetic */ C6542h7(C6579i7 c6579i7, C6468f7 c6468f7) {
        this.f23815a = c6579i7;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Handler handler;
        handler = this.f23815a.f24157b;
        handler.post(new Runnable(this.f23815a) { // from class: com.google.android.gms.internal.ads.g7

            /* renamed from: d */
            private final C6579i7 f23256d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23256d = c6579i7;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C6579i7.m14478f(this.f23256d);
            }
        });
    }
}
