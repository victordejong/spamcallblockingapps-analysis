package com.google.android.gms.internal.ads;

import android.media.AudioManager;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.r2 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r2.class */
public final class C6908r2 implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a */
    private final Handler f28739a;

    /* renamed from: b */
    final /* synthetic */ C6982t2 f28740b;

    public C6908r2(C6982t2 c6982t2, Handler handler) {
        this.f28740b = c6982t2;
        this.f28739a = handler;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f28739a.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.q2

            /* renamed from: d */
            private final C6908r2 f28287d;

            /* renamed from: e */
            private final int f28288e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f28287d = this;
                this.f28288e = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C6908r2 c6908r2 = this.f28287d;
                C6982t2.m10856d(c6908r2.f28740b, this.f28288e);
            }
        });
    }
}
