package net.pubnative.lite.sdk.vpaid;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import net.pubnative.lite.sdk.vpaid.helpers.AssetsLoader;
import net.pubnative.lite.sdk.vpaid.models.vpaid.AdSpotDimensions;
import net.pubnative.lite.sdk.vpaid.response.AdParams;
import net.pubnative.lite.sdk.vpaid.response.VastProcessor;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdProcessor.class */
public class VideoAdProcessor {
    private static final String TAG = "VideoAdProcessor";

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdProcessor$Listener.class */
    public interface Listener {
        void onCacheError(Throwable th);

        void onCacheSuccess(AdParams adParams, String str, String str2);
    }

    private AdSpotDimensions getAdSpotDimensions(Context context, View view) {
        if (view != null) {
            return new AdSpotDimensions(view.getWidth(), view.getHeight());
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return new AdSpotDimensions(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void prepare(Context context, final AdParams adParams, final Listener listener) {
        new AssetsLoader().load(adParams, context, new AssetsLoader.OnAssetsLoaded() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdProcessor.2
            @Override // net.pubnative.lite.sdk.vpaid.helpers.AssetsLoader.OnAssetsLoaded
            public void onAssetsLoaded(String str, String str2) {
                Listener listener2 = listener;
                if (listener2 != null) {
                    listener2.onCacheSuccess(adParams, str, str2);
                }
            }

            @Override // net.pubnative.lite.sdk.vpaid.helpers.AssetsLoader.OnAssetsLoaded
            public void onError(PlayerInfo playerInfo) {
                Listener listener2 = listener;
                if (listener2 != null) {
                    listener2.onCacheError(new Exception(playerInfo.getMessage()));
                }
            }
        });
    }

    public void process(final Context context, String str, View view, final Listener listener) {
        new VastProcessor(context, getAdSpotDimensions(context, view)).parseResponse(str, new VastProcessor.Listener() { // from class: net.pubnative.lite.sdk.vpaid.VideoAdProcessor.1
            @Override // net.pubnative.lite.sdk.vpaid.response.VastProcessor.Listener
            public void onParseError(PlayerInfo playerInfo) {
                Listener listener2 = listener;
                if (listener2 != null) {
                    listener2.onCacheError(new Exception(playerInfo.getMessage()));
                }
            }

            @Override // net.pubnative.lite.sdk.vpaid.response.VastProcessor.Listener
            public void onParseSuccess(AdParams adParams, String str2) {
                VideoAdProcessor.this.prepare(context, adParams, listener);
            }
        });
    }
}
