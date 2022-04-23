package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.VisibleForTesting;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.network.AdResponse;
import com.mopub.network.ImpressionData;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAd.class */
public class NativeAd {

    /* renamed from: a */
    public final Context f34812a;

    /* renamed from: b */
    public final BaseNativeAd f34813b;

    /* renamed from: c */
    public final MoPubAdRenderer f34814c;

    /* renamed from: d */
    public final Set<String> f34815d;

    /* renamed from: e */
    public final Set<String> f34816e;

    /* renamed from: f */
    public final String f34817f;

    /* renamed from: g */
    public ImpressionData f34818g;

    /* renamed from: h */
    public MoPubNativeEventListener f34819h;

    /* renamed from: i */
    public boolean f34820i;

    /* renamed from: j */
    public boolean f34821j;

    /* renamed from: k */
    public boolean f34822k;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAd$MoPubNativeEventListener.class */
    public interface MoPubNativeEventListener {
        void onClick(View view);

        void onImpression(View view);
    }

    /* renamed from: com.mopub.nativeads.NativeAd$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAd$a.class */
    public class C8956a implements BaseNativeAd.NativeEventListener {
        public C8956a() {
        }

        @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
        public void onAdClicked() {
            NativeAd.this.m3913a(null);
        }

        @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
        public void onAdImpressed() {
            NativeAd.this.m3912b(null);
        }
    }

    public NativeAd(Context context, AdResponse adResponse, String str, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this(context, adResponse.getImpressionTrackingUrls(), adResponse.getClickTrackingUrl(), str, baseNativeAd, moPubAdRenderer);
        this.f34818g = adResponse.getImpressionData();
    }

    public NativeAd(Context context, List<String> list, String str, String str2, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this.f34812a = context.getApplicationContext();
        this.f34817f = str2;
        this.f34818g = null;
        HashSet hashSet = new HashSet();
        this.f34815d = hashSet;
        hashSet.addAll(list);
        this.f34815d.addAll(baseNativeAd.m4027b());
        HashSet hashSet2 = new HashSet();
        this.f34816e = hashSet2;
        hashSet2.add(str);
        this.f34816e.addAll(baseNativeAd.m4029a());
        this.f34813b = baseNativeAd;
        baseNativeAd.setNativeEventListener(new C8956a());
        this.f34814c = moPubAdRenderer;
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3913a(View view) {
        if (!this.f34821j && !this.f34822k) {
            TrackingRequest.makeTrackingHttpRequest(this.f34816e, this.f34812a);
            MoPubNativeEventListener moPubNativeEventListener = this.f34819h;
            if (moPubNativeEventListener != null) {
                moPubNativeEventListener.onClick(view);
            }
            this.f34821j = true;
        }
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m3912b(View view) {
        if (!this.f34820i && !this.f34822k) {
            this.f34820i = true;
            TrackingRequest.makeTrackingHttpRequest(this.f34815d, this.f34812a);
            MoPubNativeEventListener moPubNativeEventListener = this.f34819h;
            if (moPubNativeEventListener != null) {
                moPubNativeEventListener.onImpression(view);
            }
            new SingleImpression(this.f34817f, this.f34818g).sendImpression();
        }
    }

    public void clear(View view) {
        if (!this.f34822k) {
            this.f34813b.clear(view);
        }
    }

    public View createAdView(Context context, ViewGroup viewGroup) {
        return this.f34814c.createAdView(context, viewGroup);
    }

    public void destroy() {
        if (!this.f34822k) {
            this.f34813b.destroy();
            this.f34822k = true;
        }
    }

    public String getAdUnitId() {
        return this.f34817f;
    }

    public BaseNativeAd getBaseNativeAd() {
        return this.f34813b;
    }

    public MoPubAdRenderer getMoPubAdRenderer() {
        return this.f34814c;
    }

    public boolean isDestroyed() {
        return this.f34822k;
    }

    public void prepare(View view) {
        if (!this.f34822k) {
            this.f34813b.prepare(view);
        }
    }

    public void renderAdView(View view) {
        this.f34814c.renderAdView(view, this.f34813b);
    }

    public void setMoPubNativeEventListener(MoPubNativeEventListener moPubNativeEventListener) {
        this.f34819h = moPubNativeEventListener;
    }

    public String toString() {
        return "\nimpressionTrackers:" + this.f34815d + "\nclickTrackers:" + this.f34816e + "\nrecordedImpression:" + this.f34820i + "\nisClicked:" + this.f34821j + "\nisDestroyed:" + this.f34822k + "\n";
    }
}
