package com.mopub.nativeads;

import android.os.Handler;
import android.os.SystemClock;
import com.mopub.nativeads.MoPubNative;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f34673a = {1000, 3000, 5000, 25000, 60000, 300000};

    /* renamed from: b  reason: collision with root package name */
    final MoPubNative.MoPubNativeNetworkListener f34674b;

    /* renamed from: c  reason: collision with root package name */
    boolean f34675c;

    /* renamed from: d  reason: collision with root package name */
    boolean f34676d;
    int e;
    int f;
    a g;
    RequestParameters h;
    MoPubNative i;
    final AdRendererRegistry j;
    private final List<k<NativeAd>> k;
    private final Handler l;
    private final Runnable m;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/c$a.class */
    interface a {
        void onAdsAvailable();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c() {
        this(new ArrayList(1), new Handler(), new AdRendererRegistry());
    }

    c(List<k<NativeAd>> list, Handler handler, AdRendererRegistry adRendererRegistry) {
        this.k = list;
        this.l = handler;
        this.m = new Runnable() { // from class: com.mopub.nativeads.c.1
            @Override // java.lang.Runnable
            public final void run() {
                c.this.f34676d = false;
                c.this.c();
            }
        };
        this.j = adRendererRegistry;
        this.f34674b = new MoPubNative.MoPubNativeNetworkListener() { // from class: com.mopub.nativeads.c.2
            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public final void onNativeFail(NativeErrorCode nativeErrorCode) {
                c.this.f34675c = false;
                if (c.this.f >= c.f34673a.length - 1) {
                    c.this.f = 0;
                    return;
                }
                c cVar = c.this;
                if (cVar.f < c.f34673a.length - 1) {
                    cVar.f++;
                }
                c.this.f34676d = true;
                Handler handler2 = c.this.l;
                Runnable runnable = c.this.m;
                c cVar2 = c.this;
                if (cVar2.f >= c.f34673a.length) {
                    cVar2.f = c.f34673a.length - 1;
                }
                handler2.postDelayed(runnable, c.f34673a[cVar2.f]);
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public final void onNativeLoad(NativeAd nativeAd) {
                if (c.this.i != null) {
                    c.this.f34675c = false;
                    c.this.e++;
                    c.this.f = 0;
                    c.this.k.add(new k(nativeAd));
                    if (c.this.k.size() == 1 && c.this.g != null) {
                        c.this.g.onAdsAvailable();
                    }
                    c.this.c();
                }
            }
        };
        this.e = 0;
        this.f = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        MoPubNative moPubNative = this.i;
        if (moPubNative != null) {
            moPubNative.destroy();
            this.i = null;
        }
        this.h = null;
        for (k<NativeAd> kVar : this.k) {
            kVar.f34700a.destroy();
        }
        this.k.clear();
        this.l.removeMessages(0);
        this.f34675c = false;
        this.e = 0;
        this.f = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final NativeAd b() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (!this.f34675c && !this.f34676d) {
            this.l.post(this.m);
        }
        while (!this.k.isEmpty()) {
            k<NativeAd> remove = this.k.remove(0);
            if (uptimeMillis - remove.f34701b < 14400000) {
                return remove.f34700a;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (!this.f34675c && this.i != null && this.k.size() <= 0) {
            this.f34675c = true;
            this.i.makeRequest(this.h, Integer.valueOf(this.e));
        }
    }

    public final MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.j.getRendererForViewType(i);
    }

    public final int getViewTypeForAd(NativeAd nativeAd) {
        return this.j.getViewTypeForAd(nativeAd);
    }
}
