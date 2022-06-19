package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.exoplayer2.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/b.class */
public final class C10915b {

    /* renamed from: a */
    boolean f35294a;

    /* renamed from: b */
    private final Context f35295b;

    /* renamed from: c */
    private final RunnableC10916a f35296c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/b$a.class */
    public final class RunnableC10916a extends BroadcastReceiver implements Runnable {

        /* renamed from: b */
        private final AbstractC10917b f35298b;

        /* renamed from: c */
        private final Handler f35299c;

        public RunnableC10916a(Handler handler, AbstractC10917b abstractC10917b) {
            C10915b.this = r4;
            this.f35299c = handler;
            this.f35298b = abstractC10917b;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f35299c.post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (C10915b.this.f35294a) {
                this.f35298b.mo21956a();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.b$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/b$b.class */
    public interface AbstractC10917b {
        /* renamed from: a */
        void mo21956a();
    }

    public C10915b(Context context, Handler handler, AbstractC10917b abstractC10917b) {
        this.f35295b = context.getApplicationContext();
        this.f35296c = new RunnableC10916a(handler, abstractC10917b);
    }

    /* renamed from: a */
    public final void m21957a(boolean z) {
        if (z && !this.f35294a) {
            this.f35295b.registerReceiver(this.f35296c, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f35294a = true;
        } else if (z || !this.f35294a) {
        } else {
            this.f35295b.unregisterReceiver(this.f35296c);
            this.f35294a = false;
        }
    }
}
