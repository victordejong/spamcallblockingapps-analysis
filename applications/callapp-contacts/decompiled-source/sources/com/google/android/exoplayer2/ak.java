package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.n;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ak.class */
public final class ak {

    /* renamed from: a  reason: collision with root package name */
    final Context f20669a;

    /* renamed from: b  reason: collision with root package name */
    final Handler f20670b;

    /* renamed from: c  reason: collision with root package name */
    b f20671c;

    /* renamed from: d  reason: collision with root package name */
    private final a f20672d;
    private final AudioManager e;
    private int f = 3;
    private int g;
    private boolean h;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ak$a.class */
    public interface a {
        void d();

        void e();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ak$b.class */
    final class b extends BroadcastReceiver {
        private b() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            Handler handler = ak.this.f20670b;
            final ak akVar = ak.this;
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2._$$Lambda$ak$b$f37yomzB8Si4eVlgSUAcUB3YzuM
                @Override // java.lang.Runnable
                public final void run() {
                    ak.this.c();
                }
            });
        }
    }

    public ak(Context context, Handler handler, a aVar) {
        Context applicationContext = context.getApplicationContext();
        this.f20669a = applicationContext;
        this.f20670b = handler;
        this.f20672d = aVar;
        AudioManager audioManager = (AudioManager) com.google.android.exoplayer2.util.a.a((AudioManager) applicationContext.getSystemService("audio"));
        this.e = audioManager;
        this.g = a(audioManager, 3);
        this.h = b(audioManager, this.f);
        b bVar = new b();
        try {
            applicationContext.registerReceiver(bVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f20671c = bVar;
        } catch (RuntimeException e) {
            n.a("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
    }

    private static int a(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            n.a("StreamVolumeManager", "Could not retrieve stream volume for stream type ".concat(String.valueOf(i)), e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    private static boolean b(AudioManager audioManager, int i) {
        return af.f22275a >= 23 ? audioManager.isStreamMute(i) : a(audioManager, i) == 0;
    }

    public final int a() {
        if (af.f22275a >= 28) {
            return this.e.getStreamMinVolume(this.f);
        }
        return 0;
    }

    public final void a(int i) {
        if (this.f != i) {
            this.f = i;
            c();
            this.f20672d.d();
        }
    }

    public final int b() {
        return this.e.getStreamMaxVolume(this.f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        int a2 = a(this.e, this.f);
        boolean b2 = b(this.e, this.f);
        if (this.g != a2 || this.h != b2) {
            this.g = a2;
            this.h = b2;
            this.f20672d.e();
        }
    }
}
