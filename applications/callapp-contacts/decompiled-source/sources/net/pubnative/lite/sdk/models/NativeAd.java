package net.pubnative.lite.sdk.models;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import java.util.List;
import java.util.Map;
import net.pubnative.lite.sdk.views.PNBeaconWebView;
import net.pubnative.lite.sdk.visibility.ImpressionManager;
import net.pubnative.lite.sdk.visibility.ImpressionTracker;
import net.pubnative.lite.sdk.visibility.TrackingManager;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/NativeAd.class */
public class NativeAd implements ImpressionTracker.Listener {
    private static String TAG = "NativeAd";
    protected Ad mAd;
    private transient View mAdView;
    private transient View mClickableView;
    private transient boolean mIsImpressionConfirmed;
    protected transient Listener mListener;
    private Map<String, String> mTrackingExtras;
    private List<String> mUsedAssets;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/NativeAd$Listener.class */
    public interface Listener {
        void onAdClick(NativeAd nativeAd, View view);

        void onAdImpression(NativeAd nativeAd, View view);
    }

    public NativeAd() {
        this.mAd = null;
    }

    public NativeAd(Ad ad) {
        this.mAd = ad;
    }

    private void confirmBeacons(String str, Context context) {
        Ad ad = this.mAd;
        if (ad == null) {
            Log.w(TAG, "confirmBeacons - Error: ad data not present");
            return;
        }
        List<AdData> beacons = ad.getBeacons(str);
        if (beacons != null) {
            for (AdData adData : beacons) {
                String injectExtras = injectExtras(adData.getURL());
                String stringField = adData.getStringField("js");
                if (!TextUtils.isEmpty(injectExtras)) {
                    TrackingManager.track(context, injectExtras);
                } else if (!TextUtils.isEmpty(stringField)) {
                    try {
                        new PNBeaconWebView(context).loadBeacon(stringField);
                    } catch (Exception e) {
                        Log.e(TAG, "confirmImpressionBeacons - JS Error: ".concat(String.valueOf(e)));
                    }
                }
            }
        }
    }

    private void confirmClickBeacons(Context context) {
        confirmBeacons("click", context);
    }

    private void confirmImpressionBeacons(Context context) {
        List<String> list = this.mUsedAssets;
        if (list != null) {
            for (String str : list) {
                TrackingManager.track(context, str);
            }
        }
        confirmBeacons("impression", context);
    }

    private String getClickUrl() {
        return injectExtras(this.mAd.link);
    }

    private String injectExtras(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            Map<String, String> map = this.mTrackingExtras;
            str2 = str;
            if (map != null) {
                str2 = str;
                if (map.size() > 0) {
                    Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                    for (String str3 : this.mTrackingExtras.keySet()) {
                        buildUpon.appendQueryParameter(str3, this.mTrackingExtras.get(str3));
                    }
                    str2 = buildUpon.build().toString();
                }
            }
        }
        return str2;
    }

    private void startTrackingClicks(View view) {
        if (TextUtils.isEmpty(getClickUrl())) {
            Log.w(TAG, "click url is empty, clicks won't be tracked");
        } else if (view == null) {
            Log.w(TAG, "click view is null, clicks won't be tracked");
        } else {
            this.mClickableView = view;
            view.setOnClickListener(new View.OnClickListener() { // from class: net.pubnative.lite.sdk.models.NativeAd.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    NativeAd.this.onNativeClick(view2);
                }
            });
        }
    }

    private void startTrackingImpression(View view) {
        if (view == null) {
            Log.w(TAG, "ad view is null, cannot start tracking");
        } else if (!this.mIsImpressionConfirmed) {
            this.mAdView = view;
            ImpressionManager.startTrackingView(view, this);
        }
    }

    private void stopTrackingClicks() {
        View view = this.mClickableView;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    private void stopTrackingImpression() {
        ImpressionManager.stopTrackingAll(this);
    }

    public String getBannerUrl() {
        AdData asset = this.mAd.getAsset("banner");
        return asset != null ? asset.getURL() : null;
    }

    public Integer getBidPoints() {
        Ad ad = this.mAd;
        return Integer.valueOf(ad != null ? ad.getECPM().intValue() : 0);
    }

    public String getCallToActionText() {
        AdData asset = this.mAd.getAsset("cta");
        return asset != null ? asset.getText() : null;
    }

    public View getContentInfo(Context context) {
        return this.mAd.getContentInfo(context);
    }

    public String getContentInfoClickUrl() {
        return this.mAd.getContentInfoClickUrl();
    }

    public String getContentInfoIconUrl() {
        return this.mAd.getContentInfoIconUrl();
    }

    public String getCreativeId() {
        Ad ad = this.mAd;
        if (ad != null) {
            return ad.getCreativeId();
        }
        return null;
    }

    public String getDescription() {
        AdData asset = this.mAd.getAsset("description");
        return asset != null ? asset.getText() : null;
    }

    public String getIconUrl() {
        AdData asset = this.mAd.getAsset(APIAsset.ICON);
        return asset != null ? asset.getURL() : null;
    }

    public String getImpressionId() {
        Ad ad = this.mAd;
        if (ad != null) {
            return ad.getImpressionId();
        }
        return null;
    }

    public int getRating() {
        Double number;
        AdData asset = this.mAd.getAsset("rating");
        return (asset == null || (number = asset.getNumber()) == null) ? 0 : number.intValue();
    }

    public String getTitle() {
        AdData asset = this.mAd.getAsset("title");
        return asset != null ? asset.getText() : null;
    }

    protected void invokeOnClick(View view) {
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onAdClick(this, view);
        }
    }

    public void invokeOnImpression(View view) {
        this.mIsImpressionConfirmed = true;
        Listener listener = this.mListener;
        if (listener != null) {
            listener.onAdImpression(this, view);
        }
    }

    @Override // net.pubnative.lite.sdk.visibility.ImpressionTracker.Listener
    public void onImpression(View view) {
        confirmImpressionBeacons(view.getContext());
        invokeOnImpression(view);
    }

    public void onNativeClick() {
        View view = this.mAdView;
        if (view != null) {
            confirmClickBeacons(view.getContext());
            openURL(getClickUrl(), true);
        }
    }

    public void onNativeClick(View view) {
        invokeOnClick(view);
        confirmClickBeacons(view.getContext());
        openURL(getClickUrl(), false);
    }

    protected void openURL(String str, boolean z) {
        View view;
        if (TextUtils.isEmpty(str)) {
            Log.w(TAG, "Error: ending URL cannot be opened - ".concat(String.valueOf(str)));
        } else if (z || this.mClickableView != null) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent.setFlags(268435456);
                if (!z || (view = this.mAdView) == null) {
                    this.mClickableView.getContext().startActivity(intent);
                } else {
                    view.getContext().startActivity(intent);
                }
            } catch (Exception e) {
                String str2 = TAG;
                Log.w(str2, "openURL: Error - " + e.getMessage());
            }
        } else {
            Log.w(TAG, "Error: clickable view not set");
        }
    }

    public void startTracking(View view, View view2, Map<String, String> map, Listener listener) {
        if (listener == null) {
            Log.w(TAG, "startTracking - listener is null, start tracking without callbacks");
        }
        this.mListener = listener;
        this.mTrackingExtras = map;
        stopTracking();
        startTrackingImpression(view);
        startTrackingClicks(view2);
    }

    public void startTracking(View view, View view2, Listener listener) {
        startTracking(view, view2, null, listener);
    }

    public void startTracking(View view, Listener listener) {
        startTracking(view, view, listener);
    }

    public void stopTracking() {
        stopTrackingImpression();
        stopTrackingClicks();
    }
}
