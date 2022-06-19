package com.mopub.nativeads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.mopub.common.util.MoPubCollections;
import com.mopub.network.ImpressionData;
import com.tenor.android.core.constant.StringConstant;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeAd.class */
public class NativeAd {

    /* renamed from: a */
    public final Context f9100a;

    /* renamed from: b */
    public final BaseNativeAd f9101b;

    /* renamed from: c */
    public final MoPubAdRenderer f9102c;

    /* renamed from: d */
    public final Set<String> f9103d;

    /* renamed from: e */
    public final Set<String> f9104e;

    /* renamed from: f */
    public final String f9105f;

    /* renamed from: g */
    public ImpressionData f9106g = null;

    /* renamed from: h */
    public MoPubNativeEventListener f9107h;

    /* renamed from: i */
    public boolean f9108i;

    /* renamed from: j */
    public boolean f9109j;

    /* renamed from: k */
    public boolean f9110k;

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/NativeAd$MoPubNativeEventListener.class */
    public interface MoPubNativeEventListener {
        void onClick(View view);

        void onImpression(View view);
    }

    public NativeAd(Context context, List<String> list, List<String> list2, String str, BaseNativeAd baseNativeAd, MoPubAdRenderer moPubAdRenderer) {
        this.f9100a = context.getApplicationContext();
        this.f9105f = str;
        HashSet hashSet = new HashSet();
        this.f9103d = hashSet;
        hashSet.addAll(list);
        Objects.requireNonNull(baseNativeAd);
        hashSet.addAll(new HashSet(baseNativeAd.f9035a));
        HashSet hashSet2 = new HashSet();
        this.f9104e = hashSet2;
        MoPubCollections.addAllNonNull(hashSet2, list2);
        MoPubCollections.addAllNonNull(hashSet2, new HashSet(baseNativeAd.f9036b));
        this.f9101b = baseNativeAd;
        baseNativeAd.setNativeEventListener(new a(this));
        this.f9102c = moPubAdRenderer;
    }

    public void clear(View view) {
        if (this.f9110k) {
            return;
        }
        this.f9101b.clear(view);
    }

    public View createAdView(Context context, ViewGroup viewGroup) {
        return this.f9102c.createAdView(context, viewGroup);
    }

    public void destroy() {
        if (this.f9110k) {
            return;
        }
        this.f9107h = null;
        this.f9101b.destroy();
        this.f9110k = true;
    }

    public String getAdUnitId() {
        return this.f9105f;
    }

    public BaseNativeAd getBaseNativeAd() {
        return this.f9101b;
    }

    public MoPubAdRenderer getMoPubAdRenderer() {
        return this.f9102c;
    }

    public boolean isDestroyed() {
        return this.f9110k;
    }

    public void prepare(View view) {
        if (this.f9110k) {
            return;
        }
        this.f9101b.prepare(view);
    }

    public void renderAdView(View view) {
        this.f9102c.renderAdView(view, this.f9101b);
    }

    public void setMoPubNativeEventListener(MoPubNativeEventListener moPubNativeEventListener) {
        this.f9107h = moPubNativeEventListener;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(StringConstant.NEW_LINE);
        sb.append("impressionTrackers");
        sb.append(StringConstant.COLON);
        sb.append(this.f9103d);
        sb.append(StringConstant.NEW_LINE);
        sb.append("clickTrackers");
        sb.append(StringConstant.COLON);
        sb.append(this.f9104e);
        sb.append(StringConstant.NEW_LINE);
        sb.append("recordedImpression");
        sb.append(StringConstant.COLON);
        sb.append(this.f9108i);
        sb.append(StringConstant.NEW_LINE);
        sb.append("isClicked");
        sb.append(StringConstant.COLON);
        sb.append(this.f9109j);
        sb.append(StringConstant.NEW_LINE);
        sb.append("isDestroyed");
        sb.append(StringConstant.COLON);
        return C22128a.m8590o(sb, this.f9110k, StringConstant.NEW_LINE);
    }
}
