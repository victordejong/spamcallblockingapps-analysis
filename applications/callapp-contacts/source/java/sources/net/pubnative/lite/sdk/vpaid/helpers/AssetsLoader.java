package net.pubnative.lite.sdk.vpaid.helpers;

import android.content.Context;
import java.util.Locale;
import net.pubnative.lite.sdk.utils.Logger;
import net.pubnative.lite.sdk.vpaid.PlayerInfo;
import net.pubnative.lite.sdk.vpaid.enums.VastError;
import net.pubnative.lite.sdk.vpaid.helpers.FileLoader;
import net.pubnative.lite.sdk.vpaid.response.AdParams;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/AssetsLoader.class */
public class AssetsLoader {
    private static final String LOG_TAG = "AssetsLoader";
    private int endCardFileIndex;
    private AdParams mAdParams;
    private Context mContext;
    private FileLoader mFileLoader;
    private OnAssetsLoaded mListener;
    private String mVideoFilePath;
    private FileLoader mVideoLoader;
    private int videoFileIndex;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/AssetsLoader$OnAssetsLoaded.class */
    public interface OnAssetsLoaded {
        void onAssetsLoaded(String str, String str2);

        void onError(PlayerInfo playerInfo);
    }

    static /* synthetic */ int access$308(AssetsLoader assetsLoader) {
        int i = assetsLoader.videoFileIndex;
        assetsLoader.videoFileIndex = i + 1;
        return i;
    }

    static /* synthetic */ int access$808(AssetsLoader assetsLoader) {
        int i = assetsLoader.endCardFileIndex;
        assetsLoader.endCardFileIndex = i + 1;
        return i;
    }

    public void loadEndCard() {
        if (this.mAdParams.getEndCardUrlList() == null || this.mAdParams.getEndCardUrlList().isEmpty()) {
            this.mListener.onAssetsLoaded(this.mVideoFilePath, null);
            return;
        }
        FileLoader fileLoader = new FileLoader(this.mAdParams.getEndCardUrlList().get(this.endCardFileIndex), this.mContext, new FileLoader.Callback() { // from class: net.pubnative.lite.sdk.vpaid.helpers.AssetsLoader.2
            @Override // net.pubnative.lite.sdk.vpaid.helpers.FileLoader.Callback
            public void onError(PlayerInfo playerInfo) {
                ErrorLog.postError(AssetsLoader.this.mContext, VastError.COMPANION);
                AssetsLoader.access$808(AssetsLoader.this);
                if (AssetsLoader.this.endCardFileIndex < AssetsLoader.this.mAdParams.getEndCardUrlList().size()) {
                    AssetsLoader.this.loadEndCard();
                } else {
                    AssetsLoader.this.mListener.onAssetsLoaded(AssetsLoader.this.mVideoFilePath, null);
                }
            }

            @Override // net.pubnative.lite.sdk.vpaid.helpers.FileLoader.Callback
            public void onFileLoaded(String str) {
                AssetsLoader.this.mListener.onAssetsLoaded(AssetsLoader.this.mVideoFilePath, str);
            }

            @Override // net.pubnative.lite.sdk.vpaid.helpers.FileLoader.Callback
            public void onProgress(double d) {
                Logger.m630d(AssetsLoader.LOG_TAG, String.format(Locale.US, "Loaded: %.2f%%", Double.valueOf(d * 100.0d)));
            }
        });
        this.mFileLoader = fileLoader;
        fileLoader.start();
    }

    public void loadVideoAndEndCard() {
        FileLoader fileLoader = new FileLoader(this.mAdParams.getVideoFileUrlsList().get(this.videoFileIndex), this.mContext, new FileLoader.Callback() { // from class: net.pubnative.lite.sdk.vpaid.helpers.AssetsLoader.1
            @Override // net.pubnative.lite.sdk.vpaid.helpers.FileLoader.Callback
            public void onError(PlayerInfo playerInfo) {
                String str = AssetsLoader.LOG_TAG;
                Logger.m628e(str, "Load video fail:" + playerInfo.getMessage());
                AssetsLoader.access$308(AssetsLoader.this);
                if (AssetsLoader.this.videoFileIndex < AssetsLoader.this.mAdParams.getVideoFileUrlsList().size()) {
                    AssetsLoader.this.loadVideoAndEndCard();
                } else {
                    AssetsLoader.this.mListener.onError(playerInfo);
                }
            }

            @Override // net.pubnative.lite.sdk.vpaid.helpers.FileLoader.Callback
            public void onFileLoaded(String str) {
                Logger.m630d(AssetsLoader.LOG_TAG, "onFullVideoLoaded");
                AssetsLoader.this.mVideoFilePath = str;
                AssetsLoader.this.loadEndCard();
            }

            @Override // net.pubnative.lite.sdk.vpaid.helpers.FileLoader.Callback
            public void onProgress(double d) {
                Logger.m630d(AssetsLoader.LOG_TAG, String.format(Locale.US, "Loaded: %.2f%%", Double.valueOf(d * 100.0d)));
            }
        });
        this.mVideoLoader = fileLoader;
        fileLoader.start();
    }

    public void breakLoading() {
        FileLoader fileLoader = this.mVideoLoader;
        if (fileLoader != null) {
            fileLoader.stop();
        }
        FileLoader fileLoader2 = this.mFileLoader;
        if (fileLoader2 != null) {
            fileLoader2.stop();
        }
    }

    public void load(AdParams adParams, Context context, OnAssetsLoaded onAssetsLoaded) {
        this.mContext = context;
        this.mAdParams = adParams;
        this.mListener = onAssetsLoaded;
        this.videoFileIndex = 0;
        this.endCardFileIndex = 0;
        this.mVideoFilePath = null;
        if (adParams.isVpaid()) {
            loadEndCard();
        } else {
            loadVideoAndEndCard();
        }
    }
}
