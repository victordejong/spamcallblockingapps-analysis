package com.mopub.nativeads;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
import com.mopub.nativeads.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer.class */
public class MoPubStreamAdPlacer {
    public static final int CONTENT_VIEW_TYPE = 0;
    private static final MoPubNativeAdLoadedListener e = new MoPubNativeAdLoadedListener() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.1
        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public final void onAdLoaded(int i) {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public final void onAdRemoved(int i) {
        }
    };

    /* renamed from: a  reason: collision with root package name */
    boolean f34591a;

    /* renamed from: b  reason: collision with root package name */
    f f34592b;

    /* renamed from: c  reason: collision with root package name */
    boolean f34593c;

    /* renamed from: d  reason: collision with root package name */
    boolean f34594d;
    private final Activity f;
    private final Handler g;
    private final Runnable h;
    private final PositioningSource i;
    private final c j;
    private final HashMap<NativeAd, WeakReference<View>> k;
    private final WeakHashMap<View, NativeAd> l;
    private f m;
    private String n;
    private MoPubNativeAdLoadedListener o;
    private int p;
    private int q;
    private int r;
    private boolean s;

    public MoPubStreamAdPlacer(Activity activity) {
        this(activity, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(activity, new c(), new a(moPubClientPositioning));
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(activity, new c(), new h(activity));
    }

    MoPubStreamAdPlacer(Activity activity, c cVar, PositioningSource positioningSource) {
        this.o = e;
        Preconditions.checkNotNull(activity, "activity is not allowed to be null");
        Preconditions.checkNotNull(cVar, "adSource is not allowed to be null");
        Preconditions.checkNotNull(positioningSource, "positioningSource is not allowed to be null");
        this.f = activity;
        this.i = positioningSource;
        this.j = cVar;
        this.m = new f(new int[0]);
        this.l = new WeakHashMap<>();
        this.k = new HashMap<>();
        this.g = new Handler();
        this.h = new Runnable() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.2
            @Override // java.lang.Runnable
            public final void run() {
                if (MoPubStreamAdPlacer.this.s) {
                    MoPubStreamAdPlacer.this.b();
                    MoPubStreamAdPlacer.this.s = false;
                }
            }
        };
        this.p = 0;
        this.q = 0;
    }

    private void a(View view) {
        NativeAd nativeAd;
        if (view != null && (nativeAd = this.l.get(view)) != null) {
            nativeAd.clear(view);
            this.l.remove(view);
            this.k.remove(nativeAd);
        }
    }

    private boolean a(int i) {
        NativeAd b2 = this.j.b();
        if (b2 == null) {
            return false;
        }
        this.m.a(i, b2);
        this.r++;
        this.o.onAdLoaded(i);
        return true;
    }

    private boolean a(int i, int i2) {
        int i3 = i2 - 1;
        int i4 = i;
        while (i4 <= i3 && i4 != -1 && i4 < this.r) {
            i3 = i3;
            if (this.m.a(i4)) {
                if (!a(i4)) {
                    return false;
                }
                i3++;
            }
            i4 = this.m.b(i4);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (a(this.p, this.q)) {
            int i = this.q;
            a(i, i + 6);
        }
    }

    final void a() {
        if (!this.s) {
            this.s = true;
            this.g.post(this.h);
        }
    }

    final void a(f fVar) {
        removeAdsInRange(0, this.r);
        this.m = fVar;
        b();
        this.f34594d = true;
    }

    public void bindAdView(NativeAd nativeAd, View view) {
        WeakReference<View> weakReference = this.k.get(nativeAd);
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!view.equals(view2)) {
            a(view2);
            a(view);
            this.k.put(nativeAd, new WeakReference<>(view));
            this.l.put(view, nativeAd);
            nativeAd.prepare(view);
            nativeAd.renderAdView(view);
        }
    }

    public void clearAds() {
        removeAdsInRange(0, this.r);
        this.j.a();
    }

    public void destroy() {
        this.g.removeMessages(0);
        this.j.a();
        f fVar = this.m;
        if (fVar.f34681b != 0) {
            fVar.a(0, fVar.f34680a[fVar.f34681b - 1] + 1);
        }
    }

    public Object getAdData(int i) {
        return this.m.c(i);
    }

    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.j.getAdRendererForViewType(i);
    }

    public View getAdView(int i, View view, ViewGroup viewGroup) {
        NativeAd c2 = this.m.c(i);
        if (c2 == null) {
            return null;
        }
        if (view == null) {
            view = c2.createAdView(this.f, viewGroup);
        }
        bindAdView(c2, view);
        return view;
    }

    public int getAdViewType(int i) {
        NativeAd c2 = this.m.c(i);
        if (c2 == null) {
            return 0;
        }
        return this.j.getViewTypeForAd(c2);
    }

    public int getAdViewTypeCount() {
        return this.j.j.getAdRendererCount();
    }

    public int getAdjustedCount(int i) {
        return this.m.f(i);
    }

    public int getAdjustedPosition(int i) {
        return this.m.e(i);
    }

    public int getOriginalCount(int i) {
        f fVar = this.m;
        if (i == 0) {
            return 0;
        }
        int d2 = fVar.d(i - 1);
        if (d2 == -1) {
            return -1;
        }
        return d2 + 1;
    }

    public int getOriginalPosition(int i) {
        return this.m.d(i);
    }

    public void insertItem(int i) {
        this.m.g(i);
    }

    public boolean isAd(int i) {
        f fVar = this.m;
        return f.a(fVar.f34680a, fVar.f34681b, i) >= 0;
    }

    public void loadAds(String str) {
        loadAds(str, null);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        if (Preconditions.NoThrow.checkNotNull(str, "Cannot load ads with a null ad unit ID")) {
            if (this.j.j.getAdRendererCount() == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "You must register at least 1 ad renderer by calling registerAdRenderer before loading ads");
                return;
            }
            this.n = str;
            this.f34594d = false;
            this.f34591a = false;
            this.f34593c = false;
            this.i.loadPositions(str, new PositioningSource.PositioningListener() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.3
                @Override // com.mopub.nativeads.PositioningSource.PositioningListener
                public final void onFailed() {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to show ads because ad positions could not be loaded from the MoPub ad server.");
                }

                @Override // com.mopub.nativeads.PositioningSource.PositioningListener
                public final void onLoad(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
                    int i;
                    MoPubStreamAdPlacer moPubStreamAdPlacer = MoPubStreamAdPlacer.this;
                    ArrayList<Integer> arrayList = moPubClientPositioning.f34580a;
                    int i2 = moPubClientPositioning.f34581b;
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
                    f fVar = new f(iArr);
                    if (moPubStreamAdPlacer.f34593c) {
                        moPubStreamAdPlacer.a(fVar);
                    } else {
                        moPubStreamAdPlacer.f34592b = fVar;
                    }
                    moPubStreamAdPlacer.f34591a = true;
                }
            });
            this.j.g = new c.a() { // from class: com.mopub.nativeads.MoPubStreamAdPlacer.4
                @Override // com.mopub.nativeads.c.a
                public final void onAdsAvailable() {
                    MoPubStreamAdPlacer moPubStreamAdPlacer = MoPubStreamAdPlacer.this;
                    if (moPubStreamAdPlacer.f34594d) {
                        moPubStreamAdPlacer.a();
                        return;
                    }
                    if (moPubStreamAdPlacer.f34591a) {
                        moPubStreamAdPlacer.a(moPubStreamAdPlacer.f34592b);
                    }
                    moPubStreamAdPlacer.f34593c = true;
                }
            };
            c cVar = this.j;
            MoPubNative moPubNative = new MoPubNative(this.f, str, cVar.f34674b);
            cVar.a();
            for (MoPubAdRenderer moPubAdRenderer : cVar.j.getRendererIterable()) {
                moPubNative.registerAdRenderer(moPubAdRenderer);
            }
            cVar.h = requestParameters;
            cVar.i = moPubNative;
            cVar.c();
        }
    }

    public void moveItem(int i, int i2) {
        f fVar = this.m;
        fVar.h(i);
        fVar.g(i2);
    }

    public void placeAdsInRange(int i, int i2) {
        this.p = i;
        this.q = Math.min(i2, i + 100);
        a();
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            c cVar = this.j;
            cVar.j.registerAdRenderer(moPubAdRenderer);
            if (cVar.i != null) {
                cVar.i.registerAdRenderer(moPubAdRenderer);
            }
        }
    }

    public int removeAdsInRange(int i, int i2) {
        f fVar = this.m;
        int i3 = fVar.f34681b;
        int[] iArr = new int[i3];
        System.arraycopy(fVar.f34680a, 0, iArr, 0, fVar.f34681b);
        int e2 = this.m.e(i);
        int e3 = this.m.e(i2);
        ArrayList arrayList = new ArrayList();
        for (int i4 = i3 - 1; i4 >= 0; i4--) {
            int i5 = iArr[i4];
            if (i5 >= e2 && i5 < e3) {
                arrayList.add(Integer.valueOf(i5));
                int i6 = this.p;
                if (i5 < i6) {
                    this.p = i6 - 1;
                }
                this.r--;
            }
        }
        int a2 = this.m.a(e2, e3);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.o.onAdRemoved(((Integer) it2.next()).intValue());
        }
        return a2;
    }

    public void removeItem(int i) {
        this.m.h(i);
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener2 = moPubNativeAdLoadedListener;
        if (moPubNativeAdLoadedListener == null) {
            moPubNativeAdLoadedListener2 = e;
        }
        this.o = moPubNativeAdLoadedListener2;
    }

    public void setItemCount(int i) {
        this.r = this.m.f(i);
        if (this.f34594d) {
            a();
        }
    }
}
