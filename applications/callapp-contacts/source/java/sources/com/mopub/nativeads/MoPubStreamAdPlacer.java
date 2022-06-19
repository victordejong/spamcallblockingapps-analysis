package com.mopub.nativeads;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.C16974c;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer.class */
public class MoPubStreamAdPlacer {
    public static final int CONTENT_VIEW_TYPE = 0;

    /* renamed from: e */
    private static final MoPubNativeAdLoadedListener f60021e = new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.1
        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public final void onAdLoaded(int i) {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public final void onAdRemoved(int i) {
        }
    };

    /* renamed from: a */
    boolean f60022a;

    /* renamed from: b */
    C16981f f60023b;

    /* renamed from: c */
    boolean f60024c;

    /* renamed from: d */
    boolean f60025d;

    /* renamed from: f */
    private final Activity f60026f;

    /* renamed from: g */
    private final Handler f60027g;

    /* renamed from: h */
    private final Runnable f60028h;

    /* renamed from: i */
    private final PositioningSource f60029i;

    /* renamed from: j */
    private final C16974c f60030j;

    /* renamed from: k */
    private final HashMap<NativeAd, WeakReference<View>> f60031k;

    /* renamed from: l */
    private final WeakHashMap<View, NativeAd> f60032l;

    /* renamed from: m */
    private C16981f f60033m;

    /* renamed from: n */
    private String f60034n;

    /* renamed from: o */
    private MoPubNativeAdLoadedListener f60035o;

    /* renamed from: p */
    private int f60036p;

    /* renamed from: q */
    private int f60037q;

    /* renamed from: r */
    private int f60038r;

    /* renamed from: s */
    private boolean f60039s;

    public MoPubStreamAdPlacer(Activity activity) {
        this(activity, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(activity, new C16974c(), new C16969a(moPubClientPositioning));
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(activity, new C16974c(), new C16983h(activity));
    }

    MoPubStreamAdPlacer(Activity activity, C16974c c16974c, PositioningSource positioningSource) {
        this.f60035o = f60021e;
        Preconditions.checkNotNull(activity, "activity is not allowed to be null");
        Preconditions.checkNotNull(c16974c, "adSource is not allowed to be null");
        Preconditions.checkNotNull(positioningSource, "positioningSource is not allowed to be null");
        this.f60026f = activity;
        this.f60029i = positioningSource;
        this.f60030j = c16974c;
        this.f60033m = new C16981f(new int[0]);
        this.f60032l = new WeakHashMap<>();
        this.f60031k = new HashMap<>();
        this.f60027g = new Handler();
        this.f60028h = new Runnable() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.2
            @Override // java.lang.Runnable
            public final void run() {
                if (!MoPubStreamAdPlacer.this.f60039s) {
                    return;
                }
                MoPubStreamAdPlacer.this.m6158b();
                MoPubStreamAdPlacer.this.f60039s = false;
            }
        };
        this.f60036p = 0;
        this.f60037q = 0;
    }

    /* renamed from: a */
    private void m6161a(View view) {
        NativeAd nativeAd;
        if (view == null || (nativeAd = this.f60032l.get(view)) == null) {
            return;
        }
        nativeAd.clear(view);
        this.f60032l.remove(view);
        this.f60031k.remove(nativeAd);
    }

    /* renamed from: a */
    private boolean m6163a(int i) {
        NativeAd m6119b = this.f60030j.m6119b();
        if (m6119b == null) {
            return false;
        }
        this.f60033m.m6109a(i, m6119b);
        this.f60038r++;
        this.f60035o.onAdLoaded(i);
        return true;
    }

    /* renamed from: a */
    private boolean m6162a(int i, int i2) {
        int i3 = i2 - 1;
        int i4 = i;
        while (i4 <= i3 && i4 != -1 && i4 < this.f60038r) {
            int i5 = i3;
            if (this.f60033m.m6111a(i4)) {
                if (!m6163a(i4)) {
                    return false;
                }
                i5 = i3 + 1;
            }
            i4 = this.f60033m.m6107b(i4);
            i3 = i5;
        }
        return true;
    }

    /* renamed from: b */
    public void m6158b() {
        if (!m6162a(this.f60036p, this.f60037q)) {
            return;
        }
        int i = this.f60037q;
        m6162a(i, i + 6);
    }

    /* renamed from: a */
    final void m6164a() {
        if (this.f60039s) {
            return;
        }
        this.f60039s = true;
        this.f60027g.post(this.f60028h);
    }

    /* renamed from: a */
    final void m6159a(C16981f c16981f) {
        removeAdsInRange(0, this.f60038r);
        this.f60033m = c16981f;
        m6158b();
        this.f60025d = true;
    }

    public void bindAdView(NativeAd nativeAd, View view) {
        WeakReference<View> weakReference = this.f60031k.get(nativeAd);
        Object obj = weakReference != null ? weakReference.get() : null;
        if (!view.equals(obj)) {
            m6161a((View) obj);
            m6161a(view);
            this.f60031k.put(nativeAd, new WeakReference<>(view));
            this.f60032l.put(view, nativeAd);
            nativeAd.prepare(view);
            nativeAd.renderAdView(view);
        }
    }

    public void clearAds() {
        removeAdsInRange(0, this.f60038r);
        this.f60030j.m6121a();
    }

    public void destroy() {
        this.f60027g.removeMessages(0);
        this.f60030j.m6121a();
        C16981f c16981f = this.f60033m;
        if (c16981f.f60168b != 0) {
            c16981f.m6110a(0, c16981f.f60167a[c16981f.f60168b - 1] + 1);
        }
    }

    public Object getAdData(int i) {
        return this.f60033m.m6105c(i);
    }

    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f60030j.getAdRendererForViewType(i);
    }

    public View getAdView(int i, View view, ViewGroup viewGroup) {
        NativeAd m6105c = this.f60033m.m6105c(i);
        if (m6105c == null) {
            return null;
        }
        if (view == null) {
            view = m6105c.createAdView(this.f60026f, viewGroup);
        }
        bindAdView(m6105c, view);
        return view;
    }

    public int getAdViewType(int i) {
        NativeAd m6105c = this.f60033m.m6105c(i);
        if (m6105c == null) {
            return 0;
        }
        return this.f60030j.getViewTypeForAd(m6105c);
    }

    public int getAdViewTypeCount() {
        return this.f60030j.f60157j.getAdRendererCount();
    }

    public int getAdjustedCount(int i) {
        return this.f60033m.m6101f(i);
    }

    public int getAdjustedPosition(int i) {
        return this.f60033m.m6102e(i);
    }

    public int getOriginalCount(int i) {
        C16981f c16981f = this.f60033m;
        if (i == 0) {
            return 0;
        }
        int m6103d = c16981f.m6103d(i - 1);
        if (m6103d != -1) {
            return m6103d + 1;
        }
        return -1;
    }

    public int getOriginalPosition(int i) {
        return this.f60033m.m6103d(i);
    }

    public void insertItem(int i) {
        this.f60033m.m6100g(i);
    }

    public boolean isAd(int i) {
        C16981f c16981f = this.f60033m;
        return C16981f.m6108a(c16981f.f60167a, c16981f.f60168b, i) >= 0;
    }

    public void loadAds(String str) {
        loadAds(str, null);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load ads with a null ad unit ID")) {
            return;
        }
        if (this.f60030j.f60157j.getAdRendererCount() == 0) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "You must register at least 1 ad renderer by calling registerAdRenderer before loading ads");
            return;
        }
        this.f60034n = str;
        this.f60025d = false;
        this.f60022a = false;
        this.f60024c = false;
        this.f60029i.loadPositions(str, new PositioningSource.PositioningListener() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.3
            @Override // com.mopub.nativeads.PositioningSource.PositioningListener
            public final void onFailed() {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to show ads because ad positions could not be loaded from the MoPub ad server.");
            }

            @Override // com.mopub.nativeads.PositioningSource.PositioningListener
            public final void onLoad(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
                int i;
                MoPubStreamAdPlacer moPubStreamAdPlacer = MoPubStreamAdPlacer.this;
                ArrayList<Integer> arrayList = moPubClientPositioning.f60006a;
                int i2 = moPubClientPositioning.f60007b;
                int size = i2 == Integer.MAX_VALUE ? arrayList.size() : 200;
                int[] iArr = new int[size];
                Iterator<Integer> it2 = arrayList.iterator();
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    if (it2.hasNext()) {
                        i4 = it2.next().intValue() - i3;
                        iArr[i3] = i4;
                        i3++;
                    }
                }
                for (i = i3; i < size; i++) {
                    i4 = (i4 + i2) - 1;
                    iArr[i] = i4;
                }
                C16981f c16981f = new C16981f(iArr);
                if (moPubStreamAdPlacer.f60024c) {
                    moPubStreamAdPlacer.m6159a(c16981f);
                } else {
                    moPubStreamAdPlacer.f60023b = c16981f;
                }
                moPubStreamAdPlacer.f60022a = true;
            }
        });
        this.f60030j.f60154g = new C16974c.AbstractC16977a() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.4
            @Override // com.mopub.nativeads.C16974c.AbstractC16977a
            public final void onAdsAvailable() {
                MoPubStreamAdPlacer moPubStreamAdPlacer = MoPubStreamAdPlacer.this;
                if (moPubStreamAdPlacer.f60025d) {
                    moPubStreamAdPlacer.m6164a();
                    return;
                }
                if (moPubStreamAdPlacer.f60022a) {
                    moPubStreamAdPlacer.m6159a(moPubStreamAdPlacer.f60023b);
                }
                moPubStreamAdPlacer.f60024c = true;
            }
        };
        C16974c c16974c = this.f60030j;
        MoPubNative moPubNative = new MoPubNative(this.f60026f, str, c16974c.f60149b);
        c16974c.m6121a();
        for (MoPubAdRenderer moPubAdRenderer : c16974c.f60157j.getRendererIterable()) {
            moPubNative.registerAdRenderer(moPubAdRenderer);
        }
        c16974c.f60155h = requestParameters;
        c16974c.f60156i = moPubNative;
        c16974c.m6117c();
    }

    public void moveItem(int i, int i2) {
        C16981f c16981f = this.f60033m;
        c16981f.m6099h(i);
        c16981f.m6100g(i2);
    }

    public void placeAdsInRange(int i, int i2) {
        this.f60036p = i;
        this.f60037q = Math.min(i2, i + 100);
        m6164a();
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            return;
        }
        C16974c c16974c = this.f60030j;
        c16974c.f60157j.registerAdRenderer(moPubAdRenderer);
        if (c16974c.f60156i == null) {
            return;
        }
        c16974c.f60156i.registerAdRenderer(moPubAdRenderer);
    }

    public int removeAdsInRange(int i, int i2) {
        C16981f c16981f = this.f60033m;
        int i3 = c16981f.f60168b;
        int[] iArr = new int[i3];
        System.arraycopy(c16981f.f60167a, 0, iArr, 0, c16981f.f60168b);
        int m6102e = this.f60033m.m6102e(i);
        int m6102e2 = this.f60033m.m6102e(i2);
        ArrayList arrayList = new ArrayList();
        for (int i4 = i3 - 1; i4 >= 0; i4--) {
            int i5 = iArr[i4];
            if (i5 >= m6102e && i5 < m6102e2) {
                arrayList.add(Integer.valueOf(i5));
                int i6 = this.f60036p;
                if (i5 < i6) {
                    this.f60036p = i6 - 1;
                }
                this.f60038r--;
            }
        }
        int m6110a = this.f60033m.m6110a(m6102e, m6102e2);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.f60035o.onAdRemoved(((Integer) it2.next()).intValue());
        }
        return m6110a;
    }

    public void removeItem(int i) {
        this.f60033m.m6099h(i);
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener2 = moPubNativeAdLoadedListener;
        if (moPubNativeAdLoadedListener == null) {
            moPubNativeAdLoadedListener2 = f60021e;
        }
        this.f60035o = moPubNativeAdLoadedListener2;
    }

    public void setItemCount(int i) {
        this.f60038r = this.f60033m.m6101f(i);
        if (this.f60025d) {
            m6164a();
        }
    }
}
