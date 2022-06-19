package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.r */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/r.class */
public final class C5184r {

    /* renamed from: a */
    private final Context f16274a;

    /* renamed from: b */
    private final RunnableC5185a f16275b;

    /* renamed from: c */
    private boolean f16276c;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.r$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/r$a.class */
    public final class RunnableC5185a extends BroadcastReceiver implements Runnable {

        /* renamed from: d */
        private final AbstractC5186b f16277d;

        /* renamed from: e */
        private final Handler f16278e;

        public RunnableC5185a(Handler handler, AbstractC5186b abstractC5186b) {
            C5184r.this = r4;
            this.f16278e = handler;
            this.f16277d = abstractC5186b;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f16278e.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C5184r.this.f16276c) {
                this.f16277d.mo18395e();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.r$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/r$b.class */
    public interface AbstractC5186b {
        /* renamed from: e */
        void mo18395e();
    }

    public C5184r(Context context, Handler handler, AbstractC5186b abstractC5186b) {
        this.f16274a = context.getApplicationContext();
        this.f16275b = new RunnableC5185a(handler, abstractC5186b);
    }

    /* renamed from: b */
    public void m20212b(boolean z) {
        if (z && !this.f16276c) {
            this.f16274a.registerReceiver(this.f16275b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f16276c = true;
        } else if (z || !this.f16276c) {
        } else {
            this.f16274a.unregisterReceiver(this.f16275b);
            this.f16276c = false;
        }
    }
}
