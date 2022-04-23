package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/b.class */
final class b {

    /* renamed from: a  reason: collision with root package name */
    boolean f20797a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f20798b;

    /* renamed from: c  reason: collision with root package name */
    private final a f20799c;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/b$a.class */
    final class a extends BroadcastReceiver implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final AbstractC0422b f20805b;

        /* renamed from: c  reason: collision with root package name */
        private final Handler f20806c;

        public a(Handler handler, AbstractC0422b bVar) {
            this.f20806c = handler;
            this.f20805b = bVar;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f20806c.post(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.f20797a) {
                this.f20805b.a();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.b$b  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/b$b.class */
    public interface AbstractC0422b {
        void a();
    }

    public b(Context context, Handler handler, AbstractC0422b bVar) {
        this.f20798b = context.getApplicationContext();
        this.f20799c = new a(handler, bVar);
    }

    public final void a(boolean z) {
        if (z && !this.f20797a) {
            this.f20798b.registerReceiver(this.f20799c, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f20797a = true;
        } else if (!z && this.f20797a) {
            this.f20798b.unregisterReceiver(this.f20799c);
            this.f20797a = false;
        }
    }
}
