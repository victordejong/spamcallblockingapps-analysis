package com.bytedance.sdk.openadsdk.p170h;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.lang.ref.WeakReference;
/* renamed from: com.bytedance.sdk.openadsdk.h.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/h/g.class */
public class C4924g {

    /* renamed from: b */
    private AbstractC4923f f17930b;

    /* renamed from: c */
    private C4925a f17931c;

    /* renamed from: d */
    private Context f17932d;

    /* renamed from: e */
    private AudioManager f17933e;

    /* renamed from: a */
    private int f17929a = -1;

    /* renamed from: f */
    private boolean f17934f = false;

    /* renamed from: g */
    private boolean f17935g = false;

    /* renamed from: h */
    private int f17936h = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.h.g$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/h/g$a.class */
    public static class C4925a extends BroadcastReceiver {

        /* renamed from: a */
        private WeakReference<C4924g> f17937a;

        public C4925a(C4924g c4924g) {
            this.f17937a = new WeakReference<>(c4924g);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AbstractC4923f m33552h;
            int m33553g;
            try {
                if (!"android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) || intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) != 3) {
                    return;
                }
                C5478q.m32112b("VolumeChangeObserver", "媒体音量改变通.......");
                C4924g c4924g = this.f17937a.get();
                if (c4924g == null || (m33552h = c4924g.m33552h()) == null || (m33553g = c4924g.m33553g()) == c4924g.m33564a()) {
                    return;
                }
                c4924g.m33563a(m33553g);
                if (m33553g < 0) {
                    return;
                }
                m33552h.mo33565b(m33553g);
            } catch (Throwable th) {
                C5478q.m32117a("VolumeChangeObserver", "onVolumeChangedError: ", th);
            }
        }
    }

    public C4924g(Context context) {
        this.f17932d = context;
        this.f17933e = (AudioManager) context.getApplicationContext().getSystemService("audio");
    }

    /* renamed from: a */
    public int m33564a() {
        return this.f17936h;
    }

    /* renamed from: a */
    public void m33563a(int i) {
        this.f17936h = i;
    }

    /* renamed from: a */
    public void m33562a(AbstractC4923f abstractC4923f) {
        this.f17930b = abstractC4923f;
    }

    /* renamed from: a */
    public void m33561a(boolean z) {
        m33560a(z, false);
    }

    /* renamed from: a */
    public void m33560a(boolean z, boolean z2) {
        int i;
        if (this.f17933e == null) {
            return;
        }
        int i2 = 0;
        if (z) {
            int m33553g = m33553g();
            if (m33553g != 0) {
                this.f17929a = m33553g;
            }
            C5478q.m32112b("VolumeChangeObserver", "mute set volume to 0");
            this.f17933e.setStreamVolume(3, 0, 0);
            this.f17935g = true;
            return;
        }
        int i3 = this.f17929a;
        if (i3 != 0) {
            i = i3;
            if (i3 == -1) {
                if (!z2) {
                    return;
                }
                i = m33556d() / 15;
            }
            C5478q.m32112b("VolumeChangeObserver", "not mute set volume to " + i + " mLastVolume=" + this.f17929a);
            this.f17929a = -1;
            this.f17933e.setStreamVolume(3, i, i2);
            this.f17935g = true;
        }
        i = m33556d() / 15;
        i2 = 1;
        C5478q.m32112b("VolumeChangeObserver", "not mute set volume to " + i + " mLastVolume=" + this.f17929a);
        this.f17929a = -1;
        this.f17933e.setStreamVolume(3, i, i2);
        this.f17935g = true;
    }

    /* renamed from: b */
    public int m33559b() {
        return this.f17929a;
    }

    /* renamed from: b */
    public void m33558b(int i) {
        this.f17929a = i;
    }

    /* renamed from: c */
    public boolean m33557c() {
        if (this.f17935g) {
            this.f17935g = false;
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public int m33556d() {
        int i = 15;
        try {
            AudioManager audioManager = this.f17933e;
            if (audioManager != null) {
                i = audioManager.getStreamMaxVolume(3);
            }
            return i;
        } catch (Throwable th) {
            C5478q.m32117a("VolumeChangeObserver", "getMaxMusicVolumeError: ", th);
            return 15;
        }
    }

    /* renamed from: e */
    public void m33555e() {
        try {
            this.f17931c = new C4925a(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            this.f17932d.registerReceiver(this.f17931c, intentFilter);
            this.f17934f = true;
        } catch (Throwable th) {
            C5478q.m32117a("VolumeChangeObserver", "registerReceiverError: ", th);
        }
    }

    /* renamed from: f */
    public void m33554f() {
        if (this.f17934f) {
            try {
                this.f17932d.unregisterReceiver(this.f17931c);
                this.f17930b = null;
                this.f17934f = false;
            } catch (Throwable th) {
                C5478q.m32117a("VolumeChangeObserver", "unregisterReceiverError: ", th);
            }
        }
    }

    /* renamed from: g */
    public int m33553g() {
        int i = -1;
        try {
            AudioManager audioManager = this.f17933e;
            if (audioManager != null) {
                i = audioManager.getStreamVolume(3);
            }
            return i;
        } catch (Throwable th) {
            C5478q.m32117a("VolumeChangeObserver", "getCurrentMusicVolumeError: ", th);
            return -1;
        }
    }

    /* renamed from: h */
    public AbstractC4923f m33552h() {
        return this.f17930b;
    }
}
