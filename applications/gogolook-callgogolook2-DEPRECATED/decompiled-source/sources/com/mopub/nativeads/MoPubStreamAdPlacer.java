package com.mopub.nativeads;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
import p081h.p430l.p435d.C10724a;
import p081h.p430l.p435d.C10729c;
import p081h.p430l.p435d.C10736f;
import p081h.p430l.p435d.C10738h;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer.class */
public class MoPubStreamAdPlacer {
    public static final int CONTENT_VIEW_TYPE = 0;

    /* renamed from: r */
    public static final MoPubNativeAdLoadedListener f9175r = new C3978a();
    @NonNull

    /* renamed from: a */
    public final Activity f9176a;
    @NonNull

    /* renamed from: b */
    public final Handler f9177b;
    @NonNull

    /* renamed from: c */
    public final Runnable f9178c;
    @NonNull

    /* renamed from: d */
    public final PositioningSource f9179d;
    @NonNull

    /* renamed from: e */
    public final C10729c f9180e;
    @NonNull

    /* renamed from: f */
    public final HashMap<NativeAd, WeakReference<View>> f9181f;
    @NonNull

    /* renamed from: g */
    public final WeakHashMap<View, NativeAd> f9182g;

    /* renamed from: h */
    public boolean f9183h;
    @Nullable

    /* renamed from: i */
    public C10736f f9184i;

    /* renamed from: j */
    public boolean f9185j;

    /* renamed from: k */
    public boolean f9186k;
    @NonNull

    /* renamed from: l */
    public C10736f f9187l;
    @NonNull

    /* renamed from: m */
    public MoPubNativeAdLoadedListener f9188m;

    /* renamed from: n */
    public int f9189n;

    /* renamed from: o */
    public int f9190o;

    /* renamed from: p */
    public int f9191p;

    /* renamed from: q */
    public boolean f9192q;

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$a.class */
    public static final class C3978a implements MoPubNativeAdLoadedListener {
        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdLoaded(int i) {
        }

        @Override // com.mopub.nativeads.MoPubNativeAdLoadedListener
        public void onAdRemoved(int i) {
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$b.class */
    public class RunnableC3979b implements Runnable {
        public RunnableC3979b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MoPubStreamAdPlacer.this.f9192q) {
                MoPubStreamAdPlacer.this.m30103c();
                MoPubStreamAdPlacer.this.f9192q = false;
            }
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$c.class */
    public class C3980c implements PositioningSource.PositioningListener {
        public C3980c() {
        }

        @Override // com.mopub.nativeads.PositioningSource.PositioningListener
        public void onFailed() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to show ads because ad positions could not be loaded from the MoPub ad server.");
        }

        @Override // com.mopub.nativeads.PositioningSource.PositioningListener
        public void onLoad(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
            MoPubStreamAdPlacer.this.m30110a(moPubClientPositioning);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubStreamAdPlacer$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubStreamAdPlacer$d.class */
    public class C3981d implements C10729c.AbstractC10732c {
        public C3981d() {
        }

        @Override // p081h.p430l.p435d.C10729c.AbstractC10732c
        public void onAdsAvailable() {
            MoPubStreamAdPlacer.this.m30114a();
        }
    }

    public MoPubStreamAdPlacer(@NonNull Activity activity) {
        this(activity, MoPubNativeAdPositioning.serverPositioning());
    }

    public MoPubStreamAdPlacer(@NonNull Activity activity, @NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this(activity, new C10729c(), new C10724a(moPubClientPositioning));
    }

    public MoPubStreamAdPlacer(@NonNull Activity activity, @NonNull MoPubNativeAdPositioning.MoPubServerPositioning moPubServerPositioning) {
        this(activity, new C10729c(), new C10738h(activity));
    }

    @VisibleForTesting
    public MoPubStreamAdPlacer(@NonNull Activity activity, @NonNull C10729c cVar, @NonNull PositioningSource positioningSource) {
        this.f9188m = f9175r;
        Preconditions.checkNotNull(activity, "activity is not allowed to be null");
        Preconditions.checkNotNull(cVar, "adSource is not allowed to be null");
        Preconditions.checkNotNull(positioningSource, "positioningSource is not allowed to be null");
        this.f9176a = activity;
        this.f9179d = positioningSource;
        this.f9180e = cVar;
        this.f9187l = C10736f.m10767c();
        this.f9182g = new WeakHashMap<>();
        this.f9181f = new HashMap<>();
        this.f9177b = new Handler();
        this.f9178c = new RunnableC3979b();
        this.f9189n = 0;
        this.f9190o = 0;
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30114a() {
        if (this.f9186k) {
            m30105b();
            return;
        }
        if (this.f9183h) {
            m30106a(this.f9184i);
        }
        this.f9185j = true;
    }

    /* renamed from: a */
    public final void m30111a(@Nullable View view) {
        NativeAd nativeAd;
        if (view != null && (nativeAd = this.f9182g.get(view)) != null) {
            nativeAd.clear(view);
            this.f9182g.remove(view);
            this.f9181f.remove(nativeAd);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30110a(@NonNull MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        C10736f a = C10736f.m10774a(moPubClientPositioning);
        if (this.f9185j) {
            m30106a(a);
        } else {
            this.f9184i = a;
        }
        this.f9183h = true;
    }

    /* renamed from: a */
    public final void m30107a(@NonNull NativeAd nativeAd, @NonNull View view) {
        this.f9181f.put(nativeAd, new WeakReference<>(view));
        this.f9182g.put(view, nativeAd);
        nativeAd.prepare(view);
    }

    /* renamed from: a */
    public final void m30106a(C10736f fVar) {
        removeAdsInRange(0, this.f9191p);
        this.f9187l = fVar;
        m30103c();
        this.f9186k = true;
    }

    /* renamed from: a */
    public final boolean m30113a(int i) {
        NativeAd b = this.f9180e.m10795b();
        if (b == null) {
            return false;
        }
        this.f9187l.m10775a(i, b);
        this.f9191p++;
        this.f9188m.onAdLoaded(i);
        return true;
    }

    /* renamed from: a */
    public final boolean m30112a(int i, int i2) {
        int i3 = i2 - 1;
        while (i <= i3 && i != -1 && i < this.f9191p) {
            i3 = i3;
            if (this.f9187l.m10759j(i)) {
                if (!m30113a(i)) {
                    return false;
                }
                i3++;
            }
            i = this.f9187l.m10761h(i);
        }
        return true;
    }

    /* renamed from: b */
    public final void m30105b() {
        if (!this.f9192q) {
            this.f9192q = true;
            this.f9177b.post(this.f9178c);
        }
    }

    public void bindAdView(@NonNull NativeAd nativeAd, @NonNull View view) {
        WeakReference<View> weakReference = this.f9181f.get(nativeAd);
        View view2 = weakReference != null ? weakReference.get() : null;
        if (!view.equals(view2)) {
            m30111a(view2);
            m30111a(view);
            m30107a(nativeAd, view);
            nativeAd.renderAdView(view);
        }
    }

    /* renamed from: c */
    public final void m30103c() {
        if (m30112a(this.f9189n, this.f9190o)) {
            int i = this.f9190o;
            m30112a(i, i + 6);
        }
    }

    public void clearAds() {
        removeAdsInRange(0, this.f9191p);
        this.f9180e.m10801a();
    }

    public void destroy() {
        this.f9177b.removeMessages(0);
        this.f9180e.m10801a();
        this.f9187l.m10778a();
    }

    @Nullable
    public Object getAdData(int i) {
        return this.f9187l.m10764e(i);
    }

    @Nullable
    public MoPubAdRenderer getAdRendererForViewType(int i) {
        return this.f9180e.getAdRendererForViewType(i);
    }

    @Nullable
    public View getAdView(int i, @Nullable View view, @Nullable ViewGroup viewGroup) {
        NativeAd e = this.f9187l.m10764e(i);
        if (e == null) {
            return null;
        }
        if (view == null) {
            view = e.createAdView(this.f9176a, viewGroup);
        }
        bindAdView(e, view);
        return view;
    }

    public int getAdViewType(int i) {
        NativeAd e = this.f9187l.m10764e(i);
        if (e == null) {
            return 0;
        }
        return this.f9180e.getViewTypeForAd(e);
    }

    public int getAdViewTypeCount() {
        return this.f9180e.m10793c();
    }

    public int getAdjustedCount(int i) {
        return this.f9187l.m10777a(i);
    }

    public int getAdjustedPosition(int i) {
        return this.f9187l.m10770b(i);
    }

    public int getOriginalCount(int i) {
        return this.f9187l.m10766c(i);
    }

    public int getOriginalPosition(int i) {
        return this.f9187l.m10765d(i);
    }

    public void insertItem(int i) {
        this.f9187l.m10763f(i);
    }

    public boolean isAd(int i) {
        return this.f9187l.m10762g(i);
    }

    public void loadAds(@NonNull String str) {
        loadAds(str, null);
    }

    public void loadAds(@NonNull String str, @Nullable RequestParameters requestParameters) {
        if (Preconditions.NoThrow.checkNotNull(str, "Cannot load ads with a null ad unit ID")) {
            if (this.f9180e.m10793c() == 0) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "You must register at least 1 ad renderer by calling registerAdRenderer before loading ads");
                return;
            }
            this.f9186k = false;
            this.f9183h = false;
            this.f9185j = false;
            this.f9179d.loadPositions(str, new C3980c());
            this.f9180e.m10797a(new C3981d());
            this.f9180e.m10800a(this.f9176a, str, requestParameters);
        }
    }

    public void moveItem(int i, int i2) {
        this.f9187l.m10769b(i, i2);
    }

    public void placeAdsInRange(int i, int i2) {
        this.f9189n = i;
        this.f9190o = Math.min(i2, i + 100);
        m30105b();
    }

    public void registerAdRenderer(@NonNull MoPubAdRenderer moPubAdRenderer) {
        if (Preconditions.NoThrow.checkNotNull(moPubAdRenderer, "Cannot register a null adRenderer")) {
            this.f9180e.m10799a(moPubAdRenderer);
        }
    }

    public int removeAdsInRange(int i, int i2) {
        int[] b = this.f9187l.m10771b();
        int b2 = this.f9187l.m10770b(i);
        int b3 = this.f9187l.m10770b(i2);
        ArrayList arrayList = new ArrayList();
        for (int length = b.length - 1; length >= 0; length--) {
            int i3 = b[length];
            if (i3 >= b2 && i3 < b3) {
                arrayList.add(Integer.valueOf(i3));
                int i4 = this.f9189n;
                if (i3 < i4) {
                    this.f9189n = i4 - 1;
                }
                this.f9191p--;
            }
        }
        int a = this.f9187l.m10776a(b2, b3);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f9188m.onAdRemoved(((Integer) it.next()).intValue());
        }
        return a;
    }

    public void removeItem(int i) {
        this.f9187l.m10760i(i);
    }

    public void setAdLoadedListener(@Nullable MoPubNativeAdLoadedListener moPubNativeAdLoadedListener) {
        MoPubNativeAdLoadedListener moPubNativeAdLoadedListener2 = moPubNativeAdLoadedListener;
        if (moPubNativeAdLoadedListener == null) {
            moPubNativeAdLoadedListener2 = f9175r;
        }
        this.f9188m = moPubNativeAdLoadedListener2;
    }

    public void setItemCount(int i) {
        this.f9191p = this.f9187l.m10777a(i);
        if (this.f9186k) {
            m30105b();
        }
    }
}
