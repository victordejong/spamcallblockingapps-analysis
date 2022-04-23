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

    /* renamed from: a  reason: collision with root package name */
    final Context f34598a;

    /* renamed from: b  reason: collision with root package name */
    final Set<String> f34599b;

    /* renamed from: c  reason: collision with root package name */
    final Set<String> f34600c;

    /* renamed from: d  reason: collision with root package name */
    final String f34601d;
    ImpressionData e;
    MoPubNativeEventListener f;
    boolean g;
    boolean h;
    boolean i;
    private final BaseNativeAd j;
    private final MoPubAdRenderer k;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/NativeAd$MoPubNativeEventListener.class */
    public interface MoPubNativeEventListener {
        void onClick(View view);

        void onImpression(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAd(Context context, AdResponse adResponse, String str, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this(context, adResponse.getImpressionTrackingUrls(), adResponse.getClickTrackingUrls(), str, baseNativeAd, moPubAdRenderer);
        ImpressionData impressionData = adResponse.getImpressionData();
        this.e = impressionData;
        baseNativeAd.setImpressionData(impressionData);
    }

    public NativeAd(Context context, List<String> list, List<String> list2, String str, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this.f34598a = context.getApplicationContext();
        this.f34601d = str;
        this.e = null;
        HashSet hashSet = new HashSet();
        this.f34599b = hashSet;
        hashSet.addAll(list);
        hashSet.addAll(baseNativeAd.getImpressionTrackers());
        HashSet hashSet2 = new HashSet();
        this.f34600c = hashSet2;
        MoPubCollections.addAllNonNull(hashSet2, list2);
        MoPubCollections.addAllNonNull(hashSet2, baseNativeAd.getClickTrackers());
        this.j = baseNativeAd;
        baseNativeAd.setNativeEventListener(new BaseNativeAd.NativeEventListener() { // from class: com.mopub.nativeads.NativeAd.1
            @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
            public final void onAdClicked() {
                NativeAd nativeAd = NativeAd.this;
                if (!nativeAd.h && !nativeAd.i) {
                    TrackingRequest.makeTrackingHttpRequest(nativeAd.f34600c, nativeAd.f34598a);
                    if (nativeAd.f != null) {
                        nativeAd.f.onClick(null);
                    }
                    nativeAd.h = true;
                }
            }

            @Override // com.mopub.nativeads.BaseNativeAd.NativeEventListener
            public final void onAdImpressed() {
                NativeAd nativeAd = NativeAd.this;
                if (!nativeAd.g && !nativeAd.i) {
                    nativeAd.g = true;
                    TrackingRequest.makeTrackingHttpRequest(nativeAd.f34599b, nativeAd.f34598a);
                    if (nativeAd.f != null) {
                        nativeAd.f.onImpression(null);
                    }
                    new SingleImpression(nativeAd.f34601d, nativeAd.e).sendImpression();
                }
            }
        });
        this.k = moPubAdRenderer;
    }

    public void clear(View view) {
        if (!this.i) {
            this.j.clear(view);
        }
    }

    public View createAdView(Context context, ViewGroup viewGroup) {
        return this.k.createAdView(context, viewGroup);
    }

    public void destroy() {
        if (!this.i) {
            this.f = null;
            this.j.destroy();
            this.i = true;
        }
    }

    public String getAdUnitId() {
        return this.f34601d;
    }

    public BaseNativeAd getBaseNativeAd() {
        return this.j;
    }

    public MoPubAdRenderer getMoPubAdRenderer() {
        return this.k;
    }

    public boolean isDestroyed() {
        return this.i;
    }

    public void prepare(View view) {
        if (!this.i) {
            this.j.prepare(view);
        }
    }

    public void renderAdView(View view) {
        this.k.renderAdView(view, this.j);
    }

    public void setMoPubNativeEventListener(MoPubNativeEventListener moPubNativeEventListener) {
        this.f = moPubNativeEventListener;
    }

    public String toString() {
        return StringUtils.LF + "impressionTrackers:" + this.f34599b + StringUtils.LF + "clickTrackers:" + this.f34600c + StringUtils.LF + "recordedImpression:" + this.g + StringUtils.LF + "isClicked:" + this.h + StringUtils.LF + "isDestroyed:" + this.i + StringUtils.LF;
    }
}
