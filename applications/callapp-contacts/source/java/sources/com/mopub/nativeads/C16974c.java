package com.mopub.nativeads;

import android.os.Handler;
import android.os.SystemClock;
import com.mopub.nativeads.MoPubNative;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.mopub.nativeads.c */
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/c.class */
public final class C16974c {

    /* renamed from: a */
    static final int[] f60148a = {1000, 3000, 5000, 25000, 60000, 300000};

    /* renamed from: b */
    final MoPubNative.MoPubNativeNetworkListener f60149b;

    /* renamed from: c */
    boolean f60150c;

    /* renamed from: d */
    boolean f60151d;

    /* renamed from: e */
    int f60152e;

    /* renamed from: f */
    int f60153f;

    /* renamed from: g */
    AbstractC16977a f60154g;

    /* renamed from: h */
    RequestParameters f60155h;

    /* renamed from: i */
    MoPubNative f60156i;

    /* renamed from: j */
    final AdRendererRegistry f60157j;

    /* renamed from: k */
    private final List<C16989k<NativeAd>> f60158k;

    /* renamed from: l */
    private final Handler f60159l;

    /* renamed from: m */
    private final Runnable f60160m;

    /* renamed from: com.mopub.nativeads.c$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/c$a.class */
    public interface AbstractC16977a {
        void onAdsAvailable();
    }

    public C16974c() {
        this(new ArrayList(1), new Handler(), new AdRendererRegistry());
    }

    C16974c(List<C16989k<NativeAd>> list, Handler handler, AdRendererRegistry adRendererRegistry) {
        this.f60158k = list;
        this.f60159l = handler;
        this.f60160m = new Runnable() { // from class: com.mopub.nativeads.c.1
            @Override // java.lang.Runnable
            public final void run() {
                C16974c.this.f60151d = false;
                C16974c.this.m6117c();
            }
        };
        this.f60157j = adRendererRegistry;
        this.f60149b = new MoPubNative.MoPubNativeNetworkListener() { // from class: com.mopub.nativeads.c.2
            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public final void onNativeFail(NativeErrorCode nativeErrorCode) {
                C16974c.this.f60150c = false;
                if (C16974c.this.f60153f >= C16974c.f60148a.length - 1) {
                    C16974c.this.f60153f = 0;
                    return;
                }
                C16974c c16974c = C16974c.this;
                if (c16974c.f60153f < C16974c.f60148a.length - 1) {
                    c16974c.f60153f++;
                }
                C16974c.this.f60151d = true;
                Handler handler2 = C16974c.this.f60159l;
                Runnable runnable = C16974c.this.f60160m;
                C16974c c16974c2 = C16974c.this;
                if (c16974c2.f60153f >= C16974c.f60148a.length) {
                    c16974c2.f60153f = C16974c.f60148a.length - 1;
                }
                handler2.postDelayed(runnable, C16974c.f60148a[c16974c2.f60153f]);
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public final void onNativeLoad(NativeAd nativeAd) {
                if (C16974c.this.f60156i == null) {
                    return;
                }
                C16974c.this.f60150c = false;
                C16974c.this.f60152e++;
                C16974c.this.f60153f = 0;
                C16974c.this.f60158k.add(new C16989k(nativeAd));
                if (C16974c.this.f60158k.size() == 1 && C16974c.this.f60154g != null) {
                    C16974c.this.f60154g.onAdsAvailable();
                }
                C16974c.this.m6117c();
            }
        };
        this.f60152e = 0;
        this.f60153f = 0;
    }

    /* renamed from: a */
    public final void m6121a() {
        MoPubNative moPubNative = this.f60156i;
        if (moPubNative != null) {
            moPubNative.destroy();
            this.f60156i = null;
        }
        this.f60155h = null;
        for (C16989k<NativeAd> c16989k : this.f60158k) {
            c16989k.f60201a.destroy();
        }
        this.f60158k.clear();
        this.f60159l.removeMessages(0);
        this.f60150c = false;
        this.f60152e = 0;
        this.f60153f = 0;
    }

    /* renamed from: b */
    public final NativeAd m6119b() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!this.f60150c && !this.f60151d) {
            this.f60159l.post(this.f60160m);
        }
        while (!this.f60158k.isEmpty()) {
            C16989k<NativeAd> remove = this.f60158k.remove(0);
            if (uptimeMillis - remove.f60202b < 14400000) {
                return remove.f60201a;
            }
        }
        return null;
    }

    /* renamed from: c */
    public final void m6117c() {
        if (this.f60150c || this.f60156i == null || this.f60158k.size() > 0) {
            return;
        }
        this.f60150c = true;
        this.f60156i.makeRequest(this.f60155h, Integer.valueOf(this.f60152e));
    }

    public final MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f60157j.getRendererForViewType(i);
    }

    public final int getViewTypeForAd(NativeAd nativeAd) {
        return this.f60157j.getViewTypeForAd(nativeAd);
    }
}
