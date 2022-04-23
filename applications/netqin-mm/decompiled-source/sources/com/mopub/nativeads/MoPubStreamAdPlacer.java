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
import p131c.p421j.p426d.C6667a;
import p131c.p421j.p426d.C6674e;
import p131c.p421j.p426d.C6679g;
import p131c.p421j.p426d.C6681i;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer.class */
public class MoPubStreamAdPlacer {
    public static final int CONTENT_VIEW_TYPE = 0;

    /* renamed from: r */
    public static final MoPubNativeAdLoadedListener f34789r = new C8952a();

    /* renamed from: a */
    public final Activity f34790a;

    /* renamed from: b */
    public final Handler f34791b;

    /* renamed from: c */
    public final Runnable f34792c;

    /* renamed from: d */
    public final PositioningSource f34793d;

    /* renamed from: e */
    public final C6674e f34794e;

    /* renamed from: f */
    public final HashMap<NativeAd, WeakReference<View>> f34795f;

    /* renamed from: g */
    public final WeakHashMap<View, NativeAd> f34796g;

    /* renamed from: h */
    public boolean f34797h;

    /* renamed from: i */
    public C6679g f34798i;

    /* renamed from: j */
    public boolean f34799j;

    /* renamed from: k */
    public boolean f34800k;

    /* renamed from: l */
    public C6679g f34801l;

    /* renamed from: m */
    public MoPubNativeAdLoadedListener f34802m;

    /* renamed from: n */
    public int f34803n;

    /* renamed from: o */
    public int f34804o;

    /* renamed from: p */
    public int f34805p;

    /* renamed from: q */
    public boolean f34806q;

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$a.class */
    public static final class C8952a implements MoPubNativeAdLoadedListener {
        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$b.class */
    public class RunnableC8953b implements Runnable {
        public RunnableC8953b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MoPubStreamAdPlacer.this.f34806q) {
                MoPubStreamAdPlacer.this.m3916c();
                MoPubStreamAdPlacer.this.f34806q = false;
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$c.class */
    public class C8954c implements PositioningSource.PositioningListener {
        public C8954c() {
        }

        @Override // com.mopub.nativeads.PositioningSource.PositioningListener
        public void onFailed() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to show ads because ad positions could not be loaded from the MoPub ad server.");
        }

        @Override // com.mopub.nativeads.PositioningSource.PositioningListener
        public void onLoad(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
            MoPubStreamAdPlacer.this.m3922a(moPubClientPositioning);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$d.class */
    public class C8955d implements C6674e.AbstractC6677c {
        public C8955d() {
        }

        @Override // p131c.p421j.p426d.C6674e.AbstractC6677c
        public void onAdsAvailable() {
            MoPubStreamAdPlacer.this.m3927a();
        }
    }

    public MoPubStreamAdPlacer(Activity activity) {
        this(activity, MoPubNativeAdPositioning.serverPositioning());
    }

    @VisibleForTesting
    public MoPubStreamAdPlacer(Activity activity, C6674e eVar, PositioningSource positioningSource) {
        this.f34802m = f34789r;
        Preconditions.checkNotNull(activity, "activity is not allowed to be null");
        Preconditions.checkNotNull(eVar, "adSource is not allowed to be null");
        Preconditions.checkNotNull(positioningSource, "positioningSource is not allowed to be null");
        this.f34790a = activity;
        this.f34793d = positioningSource;
        this.f34794e = eVar;
        this.f34801l = C6679g.m20068c();
        this.f34796g = new WeakHashMap<>();
        this.f34795f = new HashMap<>();
        this.f34791b = new Handler();
        this.f34792c = new RunnableC8953b();
        this.f34803n = 0;
        this.f34804o = 0;
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(activity, new C6674e(), new C6667a(moPubClientPositioning));
    }

    public MoPubStreamAdPlacer(Activity activity, MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(activity, new C6674e(), new C6681i(activity));
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3927a() {
        if (this.f34800k) {
            m3918b();
            return;
        }
        if (this.f34797h) {
            m3923a(this.f34798i);
        }
        this.f34799j = true;
    }

    /* renamed from: a */
    public final void m3924a(View view) {
        NativeAd nativeAd;
        if (view != null && (nativeAd = this.f34796g.get(view)) != null) {
            nativeAd.clear(view);
            this.f34796g.remove(view);
            this.f34795f.remove(nativeAd);
        }
    }

    /* renamed from: a */
    public final void m3923a(C6679g gVar) {
        removeAdsInRange(0, this.f34805p);
        this.f34801l = gVar;
        m3916c();
        this.f34800k = true;
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3922a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        C6679g a = C6679g.m20075a(moPubClientPositioning);
        if (this.f34799j) {
            m3923a(a);
        } else {
            this.f34798i = a;
        }
        this.f34797h = true;
    }

    /* renamed from: a */
    public final void m3919a(NativeAd nativeAd, View view) {
        this.f34795f.put(nativeAd, new WeakReference<>(view));
        this.f34796g.put(view, nativeAd);
        nativeAd.prepare(view);
    }

    /* renamed from: a */
    public final boolean m3926a(int i) {
        NativeAd b = this.f34794e.m20093b();
        if (b == null) {
            return false;
        }
        this.f34801l.m20076a(i, b);
        this.f34805p++;
        this.f34802m.onAdLoaded(i);
        return true;
    }

    /* renamed from: a */
    public final boolean m3925a(int i, int i2) {
        int i3 = i2 - 1;
        int i4 = i;
        while (i4 <= i3 && i4 != -1 && i4 < this.f34805p) {
            i3 = i3;
            if (this.f34801l.m20060j(i4)) {
                if (!m3926a(i4)) {
                    return false;
                }
                i3++;
            }
            i4 = this.f34801l.m20062h(i4);
        }
        return true;
    }

    /* renamed from: b */
    public final void m3918b() {
        if (!this.f34806q) {
            this.f34806q = true;
            this.f34791b.post(this.f34792c);
        }
    }

    public void bindAdView(NativeAd nativeAd, View view) {
        WeakReference<View> weakReference = this.f34795f.get(nativeAd);
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!view.equals(view2)) {
            m3924a(view2);
            m3924a(view);
            m3919a(nativeAd, view);
            nativeAd.renderAdView(view);
        }
    }

    /* renamed from: c */
    public final void m3916c() {
        if (m3925a(this.f34803n, this.f34804o)) {
            int i = this.f34804o;
            m3925a(i, i + 6);
        }
    }

    public void clearAds() {
        removeAdsInRange(0, this.f34805p);
        this.f34794e.m20099a();
    }

    public void destroy() {
        this.f34791b.removeMessages(0);
        this.f34794e.m20099a();
        this.f34801l.m20079a();
    }

    public Object getAdData(int i) {
        return this.f34801l.m20065e(i);
    }

    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f34794e.getAdRendererForViewType(i);
    }

    public View getAdView(int i, View view, ViewGroup viewGroup) {
        NativeAd e = this.f34801l.m20065e(i);
        if (e == null) {
            return null;
        }
        if (view == null) {
            view = e.createAdView(this.f34790a, viewGroup);
        }
        bindAdView(e, view);
        return view;
    }

    public int getAdViewType(int i) {
        NativeAd e = this.f34801l.m20065e(i);
        if (e == null) {
            return 0;
        }
        return this.f34794e.getViewTypeForAd(e);
    }

    public int getAdViewTypeCount() {
        return this.f34794e.m20091c();
    }

    public int getAdjustedCount(int i) {
        return this.f34801l.m20078a(i);
    }

    public int getAdjustedPosition(int i) {
        return this.f34801l.m20071b(i);
    }

    public int getOriginalCount(int i) {
        return this.f34801l.m20067c(i);
    }

    public int getOriginalPosition(int i) {
        return this.f34801l.m20066d(i);
    }

    public void insertItem(int i) {
        this.f34801l.m20064f(i);
    }

    public boolean isAd(int i) {
        return this.f34801l.m20063g(i);
    }

    public void loadAds(String str) {
        loadAds(str, null);
    }

    public void loadAds(String str, RequestParameters requestParameters) {
        if (Preconditions.NoThrow.checkNotNull(str, "Cannot load ads with a null ad unit ID")) {
            if (this.f34794e.m20091c() == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "You must register at least 1 ad renderer by calling registerAdRenderer before loading ads");
                return;
            }
            this.f34800k = false;
            this.f34797h = false;
            this.f34799j = false;
            this.f34793d.loadPositions(str, new C8954c());
            this.f34794e.m20097a(new C8955d());
            this.f34794e.m20098a(this.f34790a, str, requestParameters);
        }
    }

    public void moveItem(int i, int i2) {
        this.f34801l.m20070b(i, i2);
    }

    public void placeAdsInRange(int i, int i2) {
        this.f34803n = i;
        this.f34804o = Math.min(i2, i + 100);
        m3918b();
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            this.f34794e.m20095a(moPubAdRenderer);
        }
    }

    public int removeAdsInRange(int i, int i2) {
        int[] b = this.f34801l.m20072b();
        int b2 = this.f34801l.m20071b(i);
        int b3 = this.f34801l.m20071b(i2);
        ArrayList arrayList = new ArrayList();
        for (int length = b.length - 1; length >= 0; length--) {
            int i3 = b[length];
            if (i3 >= b2 && i3 < b3) {
                arrayList.add(Integer.valueOf(i3));
                int i4 = this.f34803n;
                if (i3 < i4) {
                    this.f34803n = i4 - 1;
                }
                this.f34805p--;
            }
        }
        int a = this.f34801l.m20077a(b2, b3);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f34802m.onAdRemoved(((Integer) it.next()).intValue());
        }
        return a;
    }

    public void removeItem(int i) {
        this.f34801l.m20061i(i);
    }

    public void setAdLoadedListener(MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener2 = moPubNativeAdLoadedListener;
        if (moPubNativeAdLoadedListener == null) {
            moPubNativeAdLoadedListener2 = f34789r;
        }
        this.f34802m = moPubNativeAdLoadedListener2;
    }

    public void setItemCount(int i) {
        this.f34805p = this.f34801l.m20078a(i);
        if (this.f34800k) {
            m3918b();
        }
    }
}
