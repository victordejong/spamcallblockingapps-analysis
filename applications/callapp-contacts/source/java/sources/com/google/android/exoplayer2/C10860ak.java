package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11617n;
/* renamed from: com.google.android.exoplayer2.ak */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ak.class */
public final class C10860ak {

    /* renamed from: a */
    final Context f34988a;

    /* renamed from: b */
    final Handler f34989b;

    /* renamed from: c */
    C10863b f34990c;

    /* renamed from: d */
    private final AbstractC10862a f34991d;

    /* renamed from: e */
    private final AudioManager f34992e;

    /* renamed from: f */
    private int f34993f = 3;

    /* renamed from: g */
    private int f34994g;

    /* renamed from: h */
    private boolean f34995h;

    /* renamed from: com.google.android.exoplayer2.ak$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ak$a.class */
    public interface AbstractC10862a {
        /* renamed from: d */
        void mo22186d();

        /* renamed from: e */
        void mo22185e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ak$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ak$b.class */
    public final class C10863b extends BroadcastReceiver {
        private C10863b() {
            C10860ak.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            Handler handler = C10860ak.this.f34989b;
            final C10860ak c10860ak = C10860ak.this;
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2._$$Lambda$ak$b$f37yomzB8Si4eVlgSUAcUB3YzuM
                @Override // java.lang.Runnable
                public final void run() {
                    C10860ak.this.m22187c();
                }
            });
        }
    }

    public C10860ak(Context context, Handler handler, AbstractC10862a abstractC10862a) {
        Context applicationContext = context.getApplicationContext();
        this.f34988a = applicationContext;
        this.f34989b = handler;
        this.f34991d = abstractC10862a;
        AudioManager audioManager = (AudioManager) C11593a.m20024a((AudioManager) applicationContext.getSystemService("audio"));
        this.f34992e = audioManager;
        this.f34994g = m22190a(audioManager, 3);
        this.f34995h = m22188b(audioManager, this.f34993f);
        C10863b c10863b = new C10863b();
        try {
            applicationContext.registerReceiver(c10863b, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f34990c = c10863b;
        } catch (RuntimeException e) {
            C11617n.m19862a("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
    }

    /* renamed from: a */
    private static int m22190a(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            C11617n.m19862a("StreamVolumeManager", "Could not retrieve stream volume for stream type ".concat(String.valueOf(i)), e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    /* renamed from: b */
    private static boolean m22188b(AudioManager audioManager, int i) {
        return C11599af.f38648a >= 23 ? audioManager.isStreamMute(i) : m22190a(audioManager, i) == 0;
    }

    /* renamed from: a */
    public final int m22192a() {
        if (C11599af.f38648a >= 28) {
            return this.f34992e.getStreamMinVolume(this.f34993f);
        }
        return 0;
    }

    /* renamed from: a */
    public final void m22191a(int i) {
        if (this.f34993f == i) {
            return;
        }
        this.f34993f = i;
        m22187c();
        this.f34991d.mo22186d();
    }

    /* renamed from: b */
    public final int m22189b() {
        return this.f34992e.getStreamMaxVolume(this.f34993f);
    }

    /* renamed from: c */
    public final void m22187c() {
        int m22190a = m22190a(this.f34992e, this.f34993f);
        boolean m22188b = m22188b(this.f34992e, this.f34993f);
        if (this.f34994g == m22190a && this.f34995h == m22188b) {
            return;
        }
        this.f34994g = m22190a;
        this.f34995h = m22188b;
        this.f34991d.mo22185e();
    }
}
