package com.bytedance.sdk.openadsdk.h;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.bytedance.sdk.openadsdk.utils.q;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/h/g.class */
public class g {

    /* renamed from: b  reason: collision with root package name */
    private f f9588b;

    /* renamed from: c  reason: collision with root package name */
    private a f9589c;

    /* renamed from: d  reason: collision with root package name */
    private Context f9590d;
    private AudioManager e;

    /* renamed from: a  reason: collision with root package name */
    private int f9587a = -1;
    private boolean f = false;
    private boolean g = false;
    private int h = -1;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/h/g$a.class */
    static class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<g> f9591a;

        public a(g gVar) {
            this.f9591a = new WeakReference<>(gVar);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            f h;
            int g;
            try {
                if ("android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) && intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3) {
                    q.b("VolumeChangeObserver", "媒体音量改变通.......");
                    g gVar = this.f9591a.get();
                    if (gVar != null && (h = gVar.h()) != null && (g = gVar.g()) != gVar.a()) {
                        gVar.a(g);
                        if (g >= 0) {
                            h.b(g);
                        }
                    }
                }
            } catch (Throwable th) {
                q.a("VolumeChangeObserver", "onVolumeChangedError: ", th);
            }
        }
    }

    public g(Context context) {
        this.f9590d = context;
        this.e = (AudioManager) context.getApplicationContext().getSystemService("audio");
    }

    public int a() {
        return this.h;
    }

    public void a(int i) {
        this.h = i;
    }

    public void a(f fVar) {
        this.f9588b = fVar;
    }

    public void a(boolean z) {
        a(z, false);
    }

    public void a(boolean z, boolean z2) {
        int i;
        if (this.e != null) {
            int i2 = 0;
            if (z) {
                int g = g();
                if (g != 0) {
                    this.f9587a = g;
                }
                q.b("VolumeChangeObserver", "mute set volume to 0");
                this.e.setStreamVolume(3, 0, 0);
                this.g = true;
                return;
            }
            int i3 = this.f9587a;
            if (i3 == 0) {
                i = d() / 15;
            } else {
                i = i3;
                if (i3 == -1) {
                    if (z2) {
                        i = d() / 15;
                    } else {
                        return;
                    }
                }
                q.b("VolumeChangeObserver", "not mute set volume to " + i + " mLastVolume=" + this.f9587a);
                this.f9587a = -1;
                this.e.setStreamVolume(3, i, i2);
                this.g = true;
            }
            i2 = 1;
            q.b("VolumeChangeObserver", "not mute set volume to " + i + " mLastVolume=" + this.f9587a);
            this.f9587a = -1;
            this.e.setStreamVolume(3, i, i2);
            this.g = true;
        }
    }

    public int b() {
        return this.f9587a;
    }

    public void b(int i) {
        this.f9587a = i;
    }

    public boolean c() {
        if (!this.g) {
            return false;
        }
        this.g = false;
        return true;
    }

    public int d() {
        int i = 15;
        try {
            AudioManager audioManager = this.e;
            if (audioManager != null) {
                i = audioManager.getStreamMaxVolume(3);
            }
            return i;
        } catch (Throwable th) {
            q.a("VolumeChangeObserver", "getMaxMusicVolumeError: ", th);
            return 15;
        }
    }

    public void e() {
        try {
            this.f9589c = new a(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            this.f9590d.registerReceiver(this.f9589c, intentFilter);
            this.f = true;
        } catch (Throwable th) {
            q.a("VolumeChangeObserver", "registerReceiverError: ", th);
        }
    }

    public void f() {
        if (this.f) {
            try {
                this.f9590d.unregisterReceiver(this.f9589c);
                this.f9588b = null;
                this.f = false;
            } catch (Throwable th) {
                q.a("VolumeChangeObserver", "unregisterReceiverError: ", th);
            }
        }
    }

    public int g() {
        int i = -1;
        try {
            AudioManager audioManager = this.e;
            if (audioManager != null) {
                i = audioManager.getStreamVolume(3);
            }
            return i;
        } catch (Throwable th) {
            q.a("VolumeChangeObserver", "getCurrentMusicVolumeError: ", th);
            return -1;
        }
    }

    public f h() {
        return this.f9588b;
    }
}
