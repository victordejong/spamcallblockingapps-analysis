package com.mopub.nativeads;

import android.app.Activity;
import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import e.n.d.a;
import e.n.d.h;
import e.n.d.l;
import e.n.d.n;
import e.n.d.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer.class */
public class MoPubStreamAdPlacer {
    public static final int CONTENT_VIEW_TYPE = 0;

    /* renamed from: r */
    public static final MoPubNativeAdLoadedListener f9081r = new a();

    /* renamed from: a */
    public final Activity f9082a;

    /* renamed from: b */
    public final Handler f9083b;

    /* renamed from: c */
    public final Runnable f9084c;

    /* renamed from: d */
    public final PositioningSource f9085d;

    /* renamed from: e */
    public final h f9086e;

    /* renamed from: f */
    public final HashMap<NativeAd, WeakReference<View>> f9087f;

    /* renamed from: g */
    public final WeakHashMap<View, NativeAd> f9088g;

    /* renamed from: h */
    public boolean f9089h;

    /* renamed from: i */
    public l f9090i;

    /* renamed from: j */
    public boolean f9091j;

    /* renamed from: k */
    public boolean f9092k;

    /* renamed from: l */
    public l f9093l;

    /* renamed from: m */
    public MoPubNativeAdLoadedListener f9094m;

    /* renamed from: n */
    public int f9095n;

    /* renamed from: o */
    public int f9096o;

    /* renamed from: p */
    public int f9097p;

    /* renamed from: q */
    public boolean f9098q;

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$b.class */
    public class RunnableC2708b implements Runnable {
        public RunnableC2708b() {
            MoPubStreamAdPlacer.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubStreamAdPlacer moPubStreamAdPlacer = MoPubStreamAdPlacer.this;
            if (!moPubStreamAdPlacer.f9098q) {
                return;
            }
            if (moPubStreamAdPlacer.m36182d(moPubStreamAdPlacer.f9095n, moPubStreamAdPlacer.f9096o)) {
                int i = moPubStreamAdPlacer.f9096o;
                moPubStreamAdPlacer.m36182d(i, i + 6);
            }
            MoPubStreamAdPlacer.this.f9098q = false;
        }
    }

    public MoPubStreamAdPlacer(Activity activity) {
        this(activity, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(activity, new h(), new a(moPubClientPositioning));
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(activity, new h(), new n(activity));
    }

    @VisibleForTesting
    public MoPubStreamAdPlacer(Activity activity, h hVar, PositioningSource positioningSource) {
        this.f9094m = f9081r;
        Preconditions.checkNotNull(activity, "activity is not allowed to be null");
        Preconditions.checkNotNull(hVar, "adSource is not allowed to be null");
        Preconditions.checkNotNull(positioningSource, "positioningSource is not allowed to be null");
        this.f9082a = activity;
        this.f9085d = positioningSource;
        this.f9086e = hVar;
        this.f9093l = new l(new int[0]);
        this.f9088g = new WeakHashMap<>();
        this.f9087f = new HashMap<>();
        this.f9083b = new Handler();
        this.f9084c = new RunnableC2708b();
        this.f9095n = 0;
        this.f9096o = 0;
    }

    /* renamed from: a */
    public final void m36185a(View view) {
        NativeAd nativeAd;
        if (view == null || (nativeAd = this.f9088g.get(view)) == null) {
            return;
        }
        nativeAd.clear(view);
        this.f9088g.remove(view);
        this.f9087f.remove(nativeAd);
    }

    /* renamed from: b */
    public final void m36184b() {
        if (this.f9098q) {
            return;
        }
        this.f9098q = true;
        this.f9083b.post(this.f9084c);
    }

    public void bindAdView(NativeAd nativeAd, View view) {
        WeakReference<View> weakReference = this.f9087f.get(nativeAd);
        Object obj = weakReference != null ? weakReference.get() : null;
        if (!view.equals(obj)) {
            m36185a(obj);
            m36185a(view);
            this.f9087f.put(nativeAd, new WeakReference<>(view));
            this.f9088g.put(view, nativeAd);
            nativeAd.prepare(view);
            nativeAd.renderAdView(view);
        }
    }

    /* renamed from: c */
    public final void m36183c(l lVar) {
        removeAdsInRange(0, this.f9097p);
        this.f9093l = lVar;
        if (m36182d(this.f9095n, this.f9096o)) {
            int i = this.f9096o;
            m36182d(i, i + 6);
        }
        this.f9092k = true;
    }

    public void clearAds() {
        removeAdsInRange(0, this.f9097p);
        this.f9086e.a();
    }

    /* renamed from: d */
    public final boolean m36182d(int i, int i2) {
        NativeAd nativeAd;
        boolean z;
        int i3;
        int i4 = i2 - 1;
        while (i <= i4 && i != -1 && i < this.f9097p) {
            l lVar = this.f9093l;
            int i5 = i4;
            if (l.a(lVar.b, 0, lVar.c, i) >= 0) {
                h hVar = this.f9086e;
                Objects.requireNonNull(hVar);
                long uptimeMillis = SystemClock.uptimeMillis();
                if (!hVar.e && !hVar.f) {
                    hVar.b.post(hVar.c);
                }
                while (true) {
                    if (hVar.a.isEmpty()) {
                        nativeAd = null;
                        break;
                    }
                    q qVar = (q) hVar.a.remove(0);
                    if (uptimeMillis - qVar.b < 14400000) {
                        nativeAd = (NativeAd) qVar.a;
                        break;
                    }
                }
                if (nativeAd == null) {
                    z = false;
                } else {
                    l lVar2 = this.f9093l;
                    int b = l.b(lVar2.b, lVar2.c, i);
                    if (b != lVar2.c && lVar2.b[b] == i) {
                        int i6 = lVar2.a[b];
                        int c = l.c(lVar2.d, lVar2.g, i6);
                        int i7 = lVar2.g;
                        if (c < i7) {
                            int i8 = i7 - c;
                            int[] iArr = lVar2.d;
                            int i9 = c + 1;
                            System.arraycopy(iArr, c, iArr, i9, i8);
                            int[] iArr2 = lVar2.e;
                            System.arraycopy(iArr2, c, iArr2, i9, i8);
                            NativeAd[] nativeAdArr = lVar2.f;
                            System.arraycopy(nativeAdArr, c, nativeAdArr, i9, i8);
                        }
                        lVar2.d[c] = i6;
                        lVar2.e[c] = i;
                        lVar2.f[c] = nativeAd;
                        lVar2.g++;
                        int i10 = (lVar2.c - b) - 1;
                        int[] iArr3 = lVar2.b;
                        int i11 = b + 1;
                        System.arraycopy(iArr3, i11, iArr3, b, i10);
                        int[] iArr4 = lVar2.a;
                        System.arraycopy(iArr4, i11, iArr4, b, i10);
                        lVar2.c--;
                        while (true) {
                            i3 = c;
                            if (b < lVar2.c) {
                                int[] iArr5 = lVar2.b;
                                iArr5[b] = iArr5[b] + 1;
                                b++;
                            }
                        }
                        while (true) {
                            i3++;
                            if (i3 >= lVar2.g) {
                                break;
                            }
                            int[] iArr6 = lVar2.e;
                            iArr6[i3] = iArr6[i3] + 1;
                        }
                    } else {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to insert an ad at an invalid position");
                    }
                    this.f9097p++;
                    this.f9094m.onAdLoaded(i);
                    z = true;
                }
                if (!z) {
                    return false;
                }
                i5 = i4 + 1;
            }
            l lVar3 = this.f9093l;
            int c2 = l.c(lVar3.b, lVar3.c, i);
            if (c2 == lVar3.c) {
                i = -1;
                i4 = i5;
            } else {
                i = lVar3.b[c2];
                i4 = i5;
            }
        }
        return true;
    }

    public void destroy() {
        this.f9083b.removeMessages(0);
        this.f9086e.a();
        l lVar = this.f9093l;
        int i = lVar.g;
        if (i == 0) {
            return;
        }
        lVar.d(0, lVar.e[i - 1] + 1);
    }

    public Object getAdData(int i) {
        return this.f9093l.g(i);
    }

    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f9086e.getAdRendererForViewType(i);
    }

    public View getAdView(int i, View view, ViewGroup viewGroup) {
        NativeAd g = this.f9093l.g(i);
        if (g == null) {
            return null;
        }
        if (view == null) {
            view = g.createAdView(this.f9082a, viewGroup);
        }
        bindAdView(g, view);
        return view;
    }

    public int getAdViewType(int i) {
        NativeAd g = this.f9093l.g(i);
        if (g == null) {
            return 0;
        }
        return this.f9086e.getViewTypeForAd(g);
    }

    public int getAdViewTypeCount() {
        return this.f9086e.l.getAdRendererCount();
    }

    public int getAdjustedCount(int i) {
        l lVar = this.f9093l;
        Objects.requireNonNull(lVar);
        return i == 0 ? 0 : lVar.e(i - 1) + 1;
    }

    public int getAdjustedPosition(int i) {
        l lVar = this.f9093l;
        return l.c(lVar.d, lVar.g, i) + i;
    }

    public int getOriginalCount(int i) {
        int i2;
        l lVar = this.f9093l;
        Objects.requireNonNull(lVar);
        if (i == 0) {
            i2 = 0;
        } else {
            int f = lVar.f(i - 1);
            i2 = f == -1 ? -1 : f + 1;
        }
        return i2;
    }

    public int getOriginalPosition(int i) {
        return this.f9093l.f(i);
    }

    public void insertItem(int i) {
        this.f9093l.h(i);
    }

    public boolean isAd(int i) {
        l lVar = this.f9093l;
        boolean z = false;
        if (l.a(lVar.e, 0, lVar.g, i) >= 0) {
            z = true;
        }
        return z;
    }

    public void loadAds(String str) {
        loadAds(str, null);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        if (!Preconditions.NoThrow.checkNotNull(str, "Cannot load ads with a null ad unit ID")) {
            return;
        }
        if (this.f9086e.l.getAdRendererCount() == 0) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "You must register at least 1 ad renderer by calling registerAdRenderer before loading ads");
            return;
        }
        this.f9092k = false;
        this.f9089h = false;
        this.f9091j = false;
        this.f9085d.loadPositions(str, new c(this));
        h hVar = this.f9086e;
        hVar.i = new d(this);
        MoPubNative moPubNative = new MoPubNative(this.f9082a, str, hVar.d);
        hVar.a();
        for (MoPubAdRenderer moPubAdRenderer : hVar.l.getRendererIterable()) {
            moPubNative.registerAdRenderer(moPubAdRenderer);
        }
        hVar.j = requestParameters;
        hVar.k = moPubNative;
        hVar.b();
    }

    public void moveItem(int i, int i2) {
        l lVar = this.f9093l;
        lVar.i(i);
        lVar.h(i2);
    }

    public void placeAdsInRange(int i, int i2) {
        this.f9095n = i;
        this.f9096o = Math.min(i2, i + 100);
        m36184b();
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (!Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            return;
        }
        h hVar = this.f9086e;
        hVar.l.registerAdRenderer(moPubAdRenderer);
        MoPubNative moPubNative = hVar.k;
        if (moPubNative == null) {
            return;
        }
        moPubNative.registerAdRenderer(moPubAdRenderer);
    }

    public int removeAdsInRange(int i, int i2) {
        l lVar = this.f9093l;
        int i3 = lVar.g;
        int[] iArr = new int[i3];
        System.arraycopy(lVar.e, 0, iArr, 0, i3);
        l lVar2 = this.f9093l;
        int c = l.c(lVar2.d, lVar2.g, i) + i;
        l lVar3 = this.f9093l;
        int c2 = l.c(lVar3.d, lVar3.g, i2) + i2;
        ArrayList arrayList = new ArrayList();
        for (int i4 = i3 - 1; i4 >= 0; i4--) {
            int i5 = iArr[i4];
            if (i5 >= c && i5 < c2) {
                arrayList.add(Integer.valueOf(i5));
                int i6 = this.f9095n;
                if (i5 < i6) {
                    this.f9095n = i6 - 1;
                }
                this.f9097p--;
            }
        }
        int d = this.f9093l.d(c, c2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f9094m.onAdRemoved(((Integer) it.next()).intValue());
        }
        return d;
    }

    public void removeItem(int i) {
        this.f9093l.i(i);
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener2 = moPubNativeAdLoadedListener;
        if (moPubNativeAdLoadedListener == null) {
            moPubNativeAdLoadedListener2 = f9081r;
        }
        this.f9094m = moPubNativeAdLoadedListener2;
    }

    public void setItemCount(int i) {
        l lVar = this.f9093l;
        Objects.requireNonNull(lVar);
        this.f9097p = i == 0 ? 0 : lVar.e(i - 1) + 1;
        if (this.f9092k) {
            m36184b();
        }
    }
}
