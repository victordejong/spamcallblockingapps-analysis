package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.google.android.gms.internal.ads.i7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i7.class */
public final class C6579i7 {

    /* renamed from: a */
    private final Context f24156a;

    /* renamed from: b */
    private final Handler f24157b;

    /* renamed from: c */
    private final AbstractC6431e7 f24158c;

    /* renamed from: d */
    private final AudioManager f24159d;

    /* renamed from: e */
    private C6542h7 f24160e;

    /* renamed from: f */
    private int f24161f = 3;

    /* renamed from: g */
    private int f24162g;

    /* renamed from: h */
    private boolean f24163h;

    public C6579i7(Context context, Handler handler, AbstractC6431e7 abstractC6431e7) {
        Context applicationContext = context.getApplicationContext();
        this.f24156a = applicationContext;
        this.f24157b = handler;
        this.f24158c = abstractC6431e7;
        AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
        C7173y8.m8894e(audioManager);
        this.f24159d = audioManager;
        this.f24162g = m14476h(audioManager, 3);
        this.f24163h = m14475i(audioManager, this.f24161f);
        C6542h7 c6542h7 = new C6542h7(this, null);
        try {
            applicationContext.registerReceiver(c6542h7, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f24160e = c6542h7;
        } catch (RuntimeException e) {
            C6952s9.m11099a("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
    }

    /* renamed from: f */
    public static /* synthetic */ void m14478f(C6579i7 c6579i7) {
        c6579i7.m14477g();
    }

    /* renamed from: g */
    public final void m14477g() {
        CopyOnWriteArraySet copyOnWriteArraySet;
        int m14476h = m14476h(this.f24159d, this.f24161f);
        boolean m14475i = m14475i(this.f24159d, this.f24161f);
        if (this.f24162g == m14476h && this.f24163h == m14475i) {
            return;
        }
        this.f24162g = m14476h;
        this.f24163h = m14475i;
        copyOnWriteArraySet = ((SurfaceHolder$CallbackC6282a7) this.f24158c).f19845d.f21517h;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((AbstractC6616j6) it.next()).mo11247C(m14476h, m14475i);
        }
    }

    /* renamed from: h */
    private static int m14476h(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            StringBuilder sb = new StringBuilder(60);
            sb.append("Could not retrieve stream volume for stream type ");
            sb.append(i);
            C6952s9.m11099a("StreamVolumeManager", sb.toString(), e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    /* renamed from: i */
    private static boolean m14475i(AudioManager audioManager, int i) {
        return C7101wa.f31475a >= 23 ? audioManager.isStreamMute(i) : m14476h(audioManager, i) == 0;
    }

    /* renamed from: b */
    public final void m14482b(int i) {
        C6579i7 c6579i7;
        C6427e3 m15914S;
        C6427e3 c6427e3;
        CopyOnWriteArraySet copyOnWriteArraySet;
        if (this.f24161f == 3) {
            return;
        }
        this.f24161f = 3;
        m14477g();
        SurfaceHolder$CallbackC6282a7 surfaceHolder$CallbackC6282a7 = (SurfaceHolder$CallbackC6282a7) this.f24158c;
        c6579i7 = surfaceHolder$CallbackC6282a7.f19845d.f21521l;
        m15914S = C6393d7.m15914S(c6579i7);
        c6427e3 = surfaceHolder$CallbackC6282a7.f19845d.f21509F;
        if (m15914S.equals(c6427e3)) {
            return;
        }
        surfaceHolder$CallbackC6282a7.f19845d.f21509F = m15914S;
        copyOnWriteArraySet = surfaceHolder$CallbackC6282a7.f19845d.f21517h;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((AbstractC6616j6) it.next()).mo11205z(m15914S);
        }
    }

    /* renamed from: c */
    public final int m14481c() {
        if (C7101wa.f31475a >= 28) {
            return this.f24159d.getStreamMinVolume(this.f24161f);
        }
        return 0;
    }

    /* renamed from: d */
    public final int m14480d() {
        return this.f24159d.getStreamMaxVolume(this.f24161f);
    }

    /* renamed from: e */
    public final void m14479e() {
        C6542h7 c6542h7 = this.f24160e;
        if (c6542h7 != null) {
            try {
                this.f24156a.unregisterReceiver(c6542h7);
            } catch (RuntimeException e) {
                C6952s9.m11099a("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            this.f24160e = null;
        }
    }
}
