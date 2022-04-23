package com.mopub.nativeads;

import android.os.Bundle;
import android.view.View;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.ImpressionData;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/BaseNativeAd.class */
public abstract class BaseNativeAd {
    private ImpressionData mImpressionData;
    private NativeEventListener mNativeEventListener;
    public Bundle callappExtras = new Bundle();
    private final Set<String> mImpressionTrackers = new HashSet();
    private final Set<String> mClickTrackers = new HashSet();
    private boolean mInvalidated = false;

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/BaseNativeAd$NativeEventListener.class */
    public interface NativeEventListener {
        void onAdClicked();

        void onAdImpressed();
    }

    public final void addClickTracker(String str) {
        if (Preconditions.NoThrow.checkNotNull(str, "clickTracker url is not allowed to be null")) {
            this.mClickTrackers.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void addClickTrackers(Object obj) throws ClassCastException {
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    addClickTracker(jSONArray.getString(i));
                } catch (JSONException e) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Unable to parse click trackers.");
                }
            }
            return;
        }
        throw new ClassCastException("Expected click trackers of type JSONArray.");
    }

    public final void addImpressionTracker(String str) {
        if (Preconditions.NoThrow.checkNotNull(str, "impressionTracker url is not allowed to be null")) {
            this.mImpressionTrackers.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void addImpressionTrackers(Object obj) throws ClassCastException {
        if (obj instanceof JSONArray) {
            JSONArray jSONArray = (JSONArray) obj;
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    addImpressionTracker(jSONArray.getString(i));
                } catch (JSONException e) {
                    MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Unable to parse impression trackers.");
                }
            }
            return;
        }
        throw new ClassCastException("Expected impression trackers of type JSONArray.");
    }

    public abstract void clear(View view);

    public abstract void destroy();

    public Bundle getCallAppExtras() {
        return this.callappExtras;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> getClickTrackers() {
        return new HashSet(this.mClickTrackers);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> getImpressionTrackers() {
        return new HashSet(this.mImpressionTrackers);
    }

    public double getPublisherRevenue() {
        return MoPub.getPublisherRevenue(this.mImpressionData, getImpressionTrackers(), getClickTrackers(), null, getCallAppExtras());
    }

    public void invalidate() {
        this.mInvalidated = true;
    }

    public boolean isInvalidated() {
        return this.mInvalidated;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyAdClicked() {
        NativeEventListener nativeEventListener = this.mNativeEventListener;
        if (nativeEventListener != null) {
            nativeEventListener.onAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void notifyAdImpressed() {
        NativeEventListener nativeEventListener = this.mNativeEventListener;
        if (nativeEventListener != null) {
            nativeEventListener.onAdImpressed();
        }
    }

    public abstract void prepare(View view);

    public void setImpressionData(ImpressionData impressionData) {
        this.mImpressionData = impressionData;
    }

    public void setNativeEventListener(NativeEventListener nativeEventListener) {
        this.mNativeEventListener = nativeEventListener;
    }
}
