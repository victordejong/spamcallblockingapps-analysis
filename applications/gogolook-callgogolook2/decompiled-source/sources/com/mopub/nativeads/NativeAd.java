package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
    @NonNull

    /* renamed from: a */
    public final Context f9205a;
    @NonNull

    /* renamed from: b */
    public final BaseNativeAd f9206b;
    @NonNull

    /* renamed from: c */
    public final MoPubAdRenderer f9207c;
    @NonNull

    /* renamed from: d */
    public final Set<String> f9208d;
    @NonNull

    /* renamed from: e */
    public final Set<String> f9209e;
    @NonNull

    /* renamed from: f */
    public final String f9210f;
    @Nullable

    /* renamed from: g */
    public ImpressionData f9211g;
    @Nullable

    /* renamed from: h */
    public MoPubNativeEventListener f9212h;

    /* renamed from: i */
    public boolean f9213i;

    /* renamed from: j */
    public boolean f9214j;

    /* renamed from: k */
    public boolean f9215k;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAd$MoPubNativeEventListener.class */
    public interface MoPubNativeEventListener {
        void onClick(View view);

        void onImpression(View view);
    }

    /* renamed from: com.mopub.nativeads.NativeAd$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeAd$a.class */
    public class C3987a implements BaseNativeAd.NativeEventListener {
        public C3987a() {
        }

        @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
        public void onAdClicked() {
            NativeAd.this.m30101a(null);
        }

        @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
        public void onAdImpressed() {
            NativeAd.this.m30100b(null);
        }
    }

    public NativeAd(@NonNull Context context, @NonNull AdResponse adResponse, @NonNull String str, @NonNull BaseNativeAd baseNativeAd, @NonNull MoPubAdRenderer moPubAdRenderer) {
        this(context, adResponse.getImpressionTrackingUrls(), adResponse.getClickTrackingUrl(), str, baseNativeAd, moPubAdRenderer);
        this.f9211g = adResponse.getImpressionData();
    }

    public NativeAd(@NonNull Context context, @NonNull List<String> list, @NonNull String str, @NonNull String str2, @NonNull BaseNativeAd baseNativeAd, @NonNull MoPubAdRenderer moPubAdRenderer) {
        this.f9205a = context.getApplicationContext();
        this.f9210f = str2;
        this.f9211g = null;
        this.f9208d = new HashSet();
        this.f9208d.addAll(list);
        this.f9208d.addAll(baseNativeAd.getImpressionTrackers());
        this.f9209e = new HashSet();
        this.f9209e.add(str);
        this.f9209e.addAll(baseNativeAd.getClickTrackers());
        this.f9206b = baseNativeAd;
        this.f9206b.setNativeEventListener(new C3987a());
        this.f9207c = moPubAdRenderer;
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30101a(@Nullable View view) {
        if (!this.f9214j && !this.f9215k) {
            TrackingRequest.makeTrackingHttpRequest(this.f9209e, this.f9205a);
            MoPubNativeEventListener moPubNativeEventListener = this.f9212h;
            if (moPubNativeEventListener != null) {
                moPubNativeEventListener.onClick(view);
            }
            this.f9214j = true;
        }
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m30100b(@Nullable View view) {
        if (!this.f9213i && !this.f9215k) {
            this.f9213i = true;
            TrackingRequest.makeTrackingHttpRequest(this.f9208d, this.f9205a);
            MoPubNativeEventListener moPubNativeEventListener = this.f9212h;
            if (moPubNativeEventListener != null) {
                moPubNativeEventListener.onImpression(view);
            }
            new SingleImpression(this.f9210f, this.f9211g).sendImpression();
        }
    }

    public void clear(@NonNull View view) {
        if (!this.f9215k) {
            this.f9206b.clear(view);
        }
    }

    @NonNull
    public View createAdView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return this.f9207c.createAdView(context, viewGroup);
    }

    public void destroy() {
        if (!this.f9215k) {
            this.f9206b.destroy();
            this.f9215k = true;
        }
    }

    @NonNull
    public String getAdUnitId() {
        return this.f9210f;
    }

    @NonNull
    public BaseNativeAd getBaseNativeAd() {
        return this.f9206b;
    }

    @NonNull
    public MoPubAdRenderer getMoPubAdRenderer() {
        return this.f9207c;
    }

    public boolean isDestroyed() {
        return this.f9215k;
    }

    public void prepare(@NonNull View view) {
        if (!this.f9215k) {
            this.f9206b.prepare(view);
        }
    }

    public void renderAdView(View view) {
        this.f9207c.renderAdView(view, this.f9206b);
    }

    public void setMoPubNativeEventListener(@Nullable MoPubNativeEventListener moPubNativeEventListener) {
        this.f9212h = moPubNativeEventListener;
    }

    public String toString() {
        return "\nimpressionTrackers:" + this.f9208d + "\nclickTrackers:" + this.f9209e + "\nrecordedImpression:" + this.f9213i + "\nisClicked:" + this.f9214j + "\nisDestroyed:" + this.f9215k + "\n";
    }
}
