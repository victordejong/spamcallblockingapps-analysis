package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.util.MoPubCollections;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.network.AdResponse;
import com.mopub.network.ImpressionData;
import com.mopub.network.SingleImpression;
import com.mopub.network.TrackingRequest;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/NativeAd.class */
public class NativeAd {

    /* renamed from: a */
    final Context f60043a;

    /* renamed from: b */
    final Set<String> f60044b;

    /* renamed from: c */
    final Set<String> f60045c;

    /* renamed from: d */
    final String f60046d;

    /* renamed from: e */
    ImpressionData f60047e;

    /* renamed from: f */
    MoPubNativeEventListener f60048f;

    /* renamed from: g */
    boolean f60049g;

    /* renamed from: h */
    boolean f60050h;

    /* renamed from: i */
    boolean f60051i;

    /* renamed from: j */
    private final BaseNativeAd f60052j;

    /* renamed from: k */
    private final MoPubAdRenderer f60053k;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/NativeAd$MoPubNativeEventListener.class */
    public interface MoPubNativeEventListener {
        void onClick(View view);

        void onImpression(View view);
    }

    public NativeAd(Context context, AdResponse adResponse, String str, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this(context, adResponse.getImpressionTrackingUrls(), adResponse.getClickTrackingUrls(), str, baseNativeAd, moPubAdRenderer);
        ImpressionData impressionData = adResponse.getImpressionData();
        this.f60047e = impressionData;
        baseNativeAd.setImpressionData(impressionData);
    }

    public NativeAd(Context context, List<String> list, List<String> list2, String str, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this.f60043a = context.getApplicationContext();
        this.f60046d = str;
        this.f60047e = null;
        HashSet hashSet = new HashSet();
        this.f60044b = hashSet;
        hashSet.addAll(list);
        hashSet.addAll(baseNativeAd.getImpressionTrackers());
        HashSet hashSet2 = new HashSet();
        this.f60045c = hashSet2;
        MoPubCollections.addAllNonNull(hashSet2, list2);
        MoPubCollections.addAllNonNull(hashSet2, baseNativeAd.getClickTrackers());
        this.f60052j = baseNativeAd;
        baseNativeAd.setNativeEventListener(new BaseNativeAd.NativeEventListener() { // from class: com.mopub.nativeads.NativeAd.1
            @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
            public final void onAdClicked() {
                NativeAd nativeAd = NativeAd.this;
                if (nativeAd.f60050h || nativeAd.f60051i) {
                    return;
                }
                TrackingRequest.makeTrackingHttpRequest(nativeAd.f60045c, nativeAd.f60043a);
                if (nativeAd.f60048f != null) {
                    nativeAd.f60048f.onClick(null);
                }
                nativeAd.f60050h = true;
            }

            @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
            public final void onAdImpressed() {
                NativeAd nativeAd = NativeAd.this;
                if (nativeAd.f60049g || nativeAd.f60051i) {
                    return;
                }
                nativeAd.f60049g = true;
                TrackingRequest.makeTrackingHttpRequest(nativeAd.f60044b, nativeAd.f60043a);
                if (nativeAd.f60048f != null) {
                    nativeAd.f60048f.onImpression(null);
                }
                new SingleImpression(nativeAd.f60046d, nativeAd.f60047e).sendImpression();
            }
        });
        this.f60053k = moPubAdRenderer;
    }

    public void clear(View view) {
        if (this.f60051i) {
            return;
        }
        this.f60052j.clear(view);
    }

    public View createAdView(Context context, ViewGroup viewGroup) {
        return this.f60053k.createAdView(context, viewGroup);
    }

    public void destroy() {
        if (this.f60051i) {
            return;
        }
        this.f60048f = null;
        this.f60052j.destroy();
        this.f60051i = true;
    }

    public String getAdUnitId() {
        return this.f60046d;
    }

    public BaseNativeAd getBaseNativeAd() {
        return this.f60052j;
    }

    public MoPubAdRenderer getMoPubAdRenderer() {
        return this.f60053k;
    }

    public boolean isDestroyed() {
        return this.f60051i;
    }

    public void prepare(View view) {
        if (this.f60051i) {
            return;
        }
        this.f60052j.prepare(view);
    }

    public void renderAdView(View view) {
        this.f60053k.renderAdView(view, this.f60052j);
    }

    public void setMoPubNativeEventListener(MoPubNativeEventListener moPubNativeEventListener) {
        this.f60048f = moPubNativeEventListener;
    }

    public String toString() {
        return StringUtils.f67179LF + "impressionTrackers:" + this.f60044b + StringUtils.f67179LF + "clickTrackers:" + this.f60045c + StringUtils.f67179LF + "recordedImpression:" + this.f60049g + StringUtils.f67179LF + "isClicked:" + this.f60050h + StringUtils.f67179LF + "isDestroyed:" + this.f60051i + StringUtils.f67179LF;
    }
}
