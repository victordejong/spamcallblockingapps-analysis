package com.mopub.nativeads;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import p000.wh1;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer.class */
public class MoPubStreamAdPlacer {
    public static final int CONTENT_VIEW_TYPE = 0;

    /* renamed from: r */
    public static final MoPubNativeAdLoadedListener f5207r = new C1196a();

    /* renamed from: a */
    public final Activity f5208a;

    /* renamed from: b */
    public final Handler f5209b;

    /* renamed from: c */
    public final Runnable f5210c;

    /* renamed from: d */
    public final PositioningSource f5211d;

    /* renamed from: e */
    public final wh1 f5212e;

    /* renamed from: f */
    public final HashMap<NativeAd, WeakReference<View>> f5213f;

    /* renamed from: g */
    public final WeakHashMap<View, NativeAd> f5214g;

    /* renamed from: h */
    public boolean f5215h;

    /* renamed from: i */
    public zh1 f5216i;

    /* renamed from: j */
    public boolean f5217j;

    /* renamed from: k */
    public boolean f5218k;

    /* renamed from: l */
    public zh1 f5219l;

    /* renamed from: m */
    public MoPubNativeAdLoadedListener f5220m;

    /* renamed from: n */
    public int f5221n;

    /* renamed from: o */
    public int f5222o;

    /* renamed from: p */
    public int f5223p;

    /* renamed from: q */
    public boolean f5224q;

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$a.class */
    public static final class C1196a implements MoPubNativeAdLoadedListener {
        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$b.class */
    public class RunnableC1197b implements Runnable {
        public RunnableC1197b() {
            MoPubStreamAdPlacer.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!MoPubStreamAdPlacer.this.f5224q) {
                return;
            }
            MoPubStreamAdPlacer.this.m3294h();
            MoPubStreamAdPlacer.this.f5224q = false;
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$c.class */
    public class C1198c implements PositioningSource.PositioningListener {
        public C1198c() {
            MoPubStreamAdPlacer.this = r4;
        }

        @Override // com.mopub.nativeads.PositioningSource.PositioningListener
        public void onFailed() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to show ads because ad positions could not be loaded from the MoPub ad server.");
        }

        @Override // com.mopub.nativeads.PositioningSource.PositioningListener
        public void onLoad(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
            MoPubStreamAdPlacer.this.m3296f(moPubClientPositioning);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$d.class */
    public class C1199d implements wh1.AbstractC1716c {
        public C1199d() {
            MoPubStreamAdPlacer.this = r4;
        }

        @Override // p000.wh1.AbstractC1716c
        public void onAdsAvailable() {
            MoPubStreamAdPlacer.this.m3297e();
        }
    }

    public MoPubStreamAdPlacer(Activity activity) {
        this(activity, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(activity, new wh1(), new uh1(moPubClientPositioning));
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(activity, new wh1(), new bi1(activity));
    }

    @VisibleForTesting
    public MoPubStreamAdPlacer(Activity activity, wh1 wh1Var, PositioningSource positioningSource) {
        this.f5220m = f5207r;
        Preconditions.checkNotNull(activity, "activity is not allowed to be null");
        Preconditions.checkNotNull(wh1Var, "adSource is not allowed to be null");
        Preconditions.checkNotNull(positioningSource, "positioningSource is not allowed to be null");
        this.f5208a = activity;
        this.f5211d = positioningSource;
        this.f5212e = wh1Var;
        this.f5219l = zh1.m21f();
        this.f5214g = new WeakHashMap<>();
        this.f5213f = new HashMap<>();
        this.f5209b = new Handler();
        this.f5210c = new RunnableC1197b();
        this.f5221n = 0;
        this.f5222o = 0;
    }

    public void bindAdView(NativeAd nativeAd, View view) {
        WeakReference<View> weakReference = this.f5213f.get(nativeAd);
        Object obj = weakReference != null ? weakReference.get() : null;
        if (!view.equals(obj)) {
            m3298d(obj);
            m3298d(view);
            m3292j(nativeAd, view);
            nativeAd.renderAdView(view);
        }
    }

    public void clearAds() {
        removeAdsInRange(0, this.f5223p);
        this.f5212e.m250f();
    }

    /* renamed from: d */
    public final void m3298d(View view) {
        NativeAd nativeAd;
        if (view == null || (nativeAd = this.f5214g.get(view)) == null) {
            return;
        }
        nativeAd.clear(view);
        this.f5214g.remove(view);
        this.f5213f.remove(nativeAd);
    }

    public void destroy() {
        this.f5209b.removeMessages(0);
        this.f5212e.m250f();
        this.f5219l.m23d();
    }

    @VisibleForTesting
    /* renamed from: e */
    public void m3297e() {
        if (this.f5218k) {
            m3295g();
            return;
        }
        if (this.f5215h) {
            m3293i(this.f5216i);
        }
        this.f5217j = true;
    }

    @VisibleForTesting
    /* renamed from: f */
    public void m3296f(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        zh1 m20g = zh1.m20g(moPubClientPositioning);
        if (this.f5217j) {
            m3293i(m20g);
        } else {
            this.f5216i = m20g;
        }
        this.f5215h = true;
    }

    /* renamed from: g */
    public final void m3295g() {
        if (this.f5224q) {
            return;
        }
        this.f5224q = true;
        this.f5209b.post(this.f5210c);
    }

    public Object getAdData(int i) {
        return this.f5219l.m15l(i);
    }

    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f5212e.getAdRendererForViewType(i);
    }

    public View getAdView(int i, View view, ViewGroup viewGroup) {
        NativeAd m15l = this.f5219l.m15l(i);
        if (m15l == null) {
            return null;
        }
        if (view == null) {
            view = m15l.createAdView(this.f5208a, viewGroup);
        }
        bindAdView(m15l, view);
        return view;
    }

    public int getAdViewType(int i) {
        NativeAd m15l = this.f5219l.m15l(i);
        if (m15l == null) {
            return 0;
        }
        return this.f5212e.getViewTypeForAd(m15l);
    }

    public int getAdViewTypeCount() {
        return this.f5212e.m248h();
    }

    public int getAdjustedCount(int i) {
        return this.f5219l.m19h(i);
    }

    public int getAdjustedPosition(int i) {
        return this.f5219l.m18i(i);
    }

    public int getOriginalCount(int i) {
        return this.f5219l.m17j(i);
    }

    public int getOriginalPosition(int i) {
        return this.f5219l.m16k(i);
    }

    /* renamed from: h */
    public final void m3294h() {
        if (!m3290l(this.f5221n, this.f5222o)) {
            return;
        }
        int i = this.f5222o;
        m3290l(i, i + 6);
    }

    /* renamed from: i */
    public final void m3293i(zh1 zh1Var) {
        removeAdsInRange(0, this.f5223p);
        this.f5219l = zh1Var;
        m3294h();
        this.f5218k = true;
    }

    public void insertItem(int i) {
        this.f5219l.m13n(i);
    }

    public boolean isAd(int i) {
        return this.f5219l.m12o(i);
    }

    /* renamed from: j */
    public final void m3292j(NativeAd nativeAd, View view) {
        this.f5213f.put(nativeAd, new WeakReference<>(view));
        this.f5214g.put(view, nativeAd);
        nativeAd.prepare(view);
    }

    /* renamed from: k */
    public final boolean m3291k(int i) {
        NativeAd m249g = this.f5212e.m249g();
        if (m249g == null) {
            return false;
        }
        this.f5219l.m9r(i, m249g);
        this.f5223p++;
        this.f5220m.onAdLoaded(i);
        return true;
    }

    /* renamed from: l */
    public final boolean m3290l(int i, int i2) {
        int i3 = i2 - 1;
        while (i <= i3 && i != -1 && i < this.f5223p) {
            int i4 = i3;
            if (this.f5219l.m7t(i)) {
                if (!m3291k(i)) {
                    return false;
                }
                i4 = i3 + 1;
            }
            i = this.f5219l.m10q(i);
            i3 = i4;
        }
        return true;
    }

    public void loadAds(String str) {
        loadAds(str, null);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load ads with a null ad unit ID")) {
            return;
        }
        if (this.f5212e.m248h() == 0) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "You must register at least 1 ad renderer by calling registerAdRenderer before loading ads");
            return;
        }
        this.f5218k = false;
        this.f5215h = false;
        this.f5217j = false;
        this.f5211d.loadPositions(str, new C1198c());
        this.f5212e.m241o(new C1199d());
        this.f5212e.m246j(this.f5208a, str, requestParameters);
    }

    public void moveItem(int i, int i2) {
        this.f5219l.m11p(i, i2);
    }

    public void placeAdsInRange(int i, int i2) {
        this.f5221n = i;
        this.f5222o = Math.min(i2, i + 100);
        m3295g();
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            return;
        }
        this.f5212e.m244l(moPubAdRenderer);
    }

    public int removeAdsInRange(int i, int i2) {
        int[] m14m = this.f5219l.m14m();
        int m18i = this.f5219l.m18i(i);
        int m18i2 = this.f5219l.m18i(i2);
        ArrayList arrayList = new ArrayList();
        for (int length = m14m.length - 1; length >= 0; length--) {
            int i3 = m14m[length];
            if (i3 >= m18i && i3 < m18i2) {
                arrayList.add(Integer.valueOf(i3));
                int i4 = this.f5221n;
                if (i3 < i4) {
                    this.f5221n = i4 - 1;
                }
                this.f5223p--;
            }
        }
        int m22e = this.f5219l.m22e(m18i, m18i2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f5220m.onAdRemoved(((Integer) it.next()).intValue());
        }
        return m22e;
    }

    public void removeItem(int i) {
        this.f5219l.m8s(i);
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener2 = moPubNativeAdLoadedListener;
        if (moPubNativeAdLoadedListener == null) {
            moPubNativeAdLoadedListener2 = f5207r;
        }
        this.f5220m = moPubNativeAdLoadedListener2;
    }

    public void setItemCount(int i) {
        this.f5223p = this.f5219l.m19h(i);
        if (this.f5218k) {
            m3295g();
        }
    }
}
