package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.MoPubCollections;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.network.AdResponse;
import com.mopub.network.ImpressionData;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeAd.class */
public class NativeAd {

    /* renamed from: a */
    public final Context f5228a;

    /* renamed from: b */
    public final BaseNativeAd f5229b;

    /* renamed from: c */
    public final MoPubAdRenderer f5230c;

    /* renamed from: d */
    public final Set<String> f5231d;

    /* renamed from: e */
    public final Set<String> f5232e;

    /* renamed from: f */
    public final String f5233f;

    /* renamed from: g */
    public ImpressionData f5234g;

    /* renamed from: h */
    public MoPubNativeEventListener f5235h;

    /* renamed from: i */
    public boolean f5236i;

    /* renamed from: j */
    public boolean f5237j;

    /* renamed from: k */
    public boolean f5238k;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeAd$MoPubNativeEventListener.class */
    public interface MoPubNativeEventListener {
        void onClick(View view);

        void onImpression(View view);
    }

    /* renamed from: com.mopub.nativeads.NativeAd$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeAd$a.class */
    public class C1200a implements BaseNativeAd.NativeEventListener {
        public C1200a() {
            NativeAd.this = r4;
        }

        @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
        public void onAdClicked() {
            NativeAd.this.m3289a(null);
        }

        @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
        public void onAdImpressed() {
            NativeAd.this.m3288b(null);
        }
    }

    public NativeAd(Context context, AdResponse adResponse, String str, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this(context, adResponse.getImpressionTrackingUrls(), adResponse.getClickTrackingUrls(), str, baseNativeAd, moPubAdRenderer);
        this.f5234g = adResponse.getImpressionData();
    }

    public NativeAd(Context context, List<String> list, List<String> list2, String str, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this.f5228a = context.getApplicationContext();
        this.f5233f = str;
        this.f5234g = null;
        HashSet hashSet = new HashSet();
        this.f5231d = hashSet;
        hashSet.addAll(list);
        hashSet.addAll(baseNativeAd.m3377d());
        HashSet hashSet2 = new HashSet();
        this.f5232e = hashSet2;
        MoPubCollections.addAllNonNull(hashSet2, list2);
        MoPubCollections.addAllNonNull(hashSet2, baseNativeAd.m3378c());
        this.f5229b = baseNativeAd;
        baseNativeAd.setNativeEventListener(new C1200a());
        this.f5230c = moPubAdRenderer;
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3289a(View view) {
        if (this.f5237j || this.f5238k) {
            return;
        }
        TrackingRequest.makeTrackingHttpRequest(this.f5232e, this.f5228a);
        MoPubNativeEventListener moPubNativeEventListener = this.f5235h;
        if (moPubNativeEventListener != null) {
            moPubNativeEventListener.onClick(view);
        }
        this.f5237j = true;
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m3288b(View view) {
        if (this.f5236i || this.f5238k) {
            return;
        }
        this.f5236i = true;
        TrackingRequest.makeTrackingHttpRequest(this.f5231d, this.f5228a);
        MoPubNativeEventListener moPubNativeEventListener = this.f5235h;
        if (moPubNativeEventListener != null) {
            moPubNativeEventListener.onImpression(view);
        }
        new SingleImpression(this.f5233f, this.f5234g).sendImpression();
    }

    public void clear(View view) {
        if (this.f5238k) {
            return;
        }
        this.f5229b.clear(view);
    }

    public View createAdView(Context context, ViewGroup viewGroup) {
        return this.f5230c.createAdView(context, viewGroup);
    }

    public void destroy() {
        if (this.f5238k) {
            return;
        }
        this.f5229b.destroy();
        this.f5238k = true;
    }

    public String getAdUnitId() {
        return this.f5233f;
    }

    public BaseNativeAd getBaseNativeAd() {
        return this.f5229b;
    }

    public MoPubAdRenderer getMoPubAdRenderer() {
        return this.f5230c;
    }

    public boolean isDestroyed() {
        return this.f5238k;
    }

    public void prepare(View view) {
        if (this.f5238k) {
            return;
        }
        this.f5229b.prepare(view);
    }

    public void renderAdView(View view) {
        this.f5230c.renderAdView(view, this.f5229b);
    }

    public void setMoPubNativeEventListener(MoPubNativeEventListener moPubNativeEventListener) {
        this.f5235h = moPubNativeEventListener;
    }

    public String toString() {
        return "\nimpressionTrackers:" + this.f5231d + "\nclickTrackers:" + this.f5232e + "\nrecordedImpression:" + this.f5236i + "\nisClicked:" + this.f5237j + "\nisDestroyed:" + this.f5238k + "\n";
    }
}
