package com.mopub.nativeads;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BaseNativeAd.class */
public abstract class BaseNativeAd {
    @Nullable
    public NativeEventListener mNativeEventListener;
    @NonNull
    public final Set<String> mImpressionTrackers = new HashSet();
    @NonNull
    public final Set<String> mClickTrackers = new HashSet();
    public boolean mInvalidated = false;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/BaseNativeAd$NativeEventListener.class */
    public interface NativeEventListener {
        void onAdClicked();

        void onAdImpressed();
    }

    public final void addClickTracker(@NonNull String str) {
        if (Preconditions.NoThrow.checkNotNull(str, "clickTracker url is not allowed to be null")) {
            this.mClickTrackers.add(str);
        }
    }

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

    public final void addImpressionTracker(@NonNull String str) {
        if (Preconditions.NoThrow.checkNotNull(str, "impressionTracker url is not allowed to be null")) {
            this.mImpressionTrackers.add(str);
        }
    }

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

    public abstract void clear(@NonNull View view);

    public abstract void destroy();

    @NonNull
    public Set<String> getClickTrackers() {
        return new HashSet(this.mClickTrackers);
    }

    @NonNull
    public Set<String> getImpressionTrackers() {
        return new HashSet(this.mImpressionTrackers);
    }

    public void invalidate() {
        this.mInvalidated = true;
    }

    public boolean isInvalidated() {
        return this.mInvalidated;
    }

    public final void notifyAdClicked() {
        NativeEventListener nativeEventListener = this.mNativeEventListener;
        if (nativeEventListener != null) {
            nativeEventListener.onAdClicked();
        }
    }

    public final void notifyAdImpressed() {
        NativeEventListener nativeEventListener = this.mNativeEventListener;
        if (nativeEventListener != null) {
            nativeEventListener.onAdImpressed();
        }
    }

    public abstract void prepare(@NonNull View view);

    public void setNativeEventListener(@Nullable NativeEventListener nativeEventListener) {
        this.mNativeEventListener = nativeEventListener;
    }
}
