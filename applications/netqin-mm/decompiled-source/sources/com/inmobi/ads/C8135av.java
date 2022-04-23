package com.inmobi.ads;

import android.media.MediaPlayer;
/* renamed from: com.inmobi.ads.av */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/av.class */
public final class C8135av extends MediaPlayer {

    /* renamed from: d */
    public static final Object f31810d = new Object();

    /* renamed from: e */
    public static C8135av f31811e;

    /* renamed from: f */
    public static int f31812f;

    /* renamed from: a */
    public int f31813a = 0;

    /* renamed from: b */
    public int f31814b = 0;

    /* renamed from: c */
    public C8135av f31815c;

    /* renamed from: a */
    public static C8135av m6354a() {
        synchronized (f31810d) {
            if (f31811e == null) {
                return new C8135av();
            }
            C8135av avVar = f31811e;
            f31811e = avVar.f31815c;
            avVar.f31815c = null;
            f31812f--;
            return avVar;
        }
    }

    /* renamed from: b */
    public final void m6353b() {
        if (!(3 == this.f31813a)) {
            synchronized (f31810d) {
                if (f31812f < 5) {
                    this.f31815c = f31811e;
                    f31811e = this;
                    f31812f++;
                }
            }
        }
    }
}
