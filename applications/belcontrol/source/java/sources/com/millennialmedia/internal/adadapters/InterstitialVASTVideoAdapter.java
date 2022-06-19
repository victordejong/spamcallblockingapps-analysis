package com.millennialmedia.internal.adadapters;

import android.content.Context;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
import com.millennialmedia.internal.adcontrollers.VASTVideoController;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter.class */
public class InterstitialVASTVideoAdapter extends InterstitialAdapter {
    private static final String TAG = "InterstitialVASTVideoAdapter";
    private volatile boolean attached;
    private MMActivity mmVastActivity;
    private VASTVideoController vastVideoController;
    public VASTVideoController.VASTVideoControllerListener vastVideoControllerListener = new VASTVideoController.VASTVideoControllerListener() { // from class: com.millennialmedia.internal.adadapters.InterstitialVASTVideoAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void attachFailed() {
            if (!InterstitialVASTVideoAdapter.this.attached) {
                InterstitialVASTVideoAdapter.this.adapterListener.showFailed(new InterstitialAd.InterstitialErrorStatus(7));
            }
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void attachSucceeded() {
            if (!InterstitialVASTVideoAdapter.this.attached) {
                InterstitialVASTVideoAdapter.this.attached = true;
                InterstitialVASTVideoAdapter.this.adapterListener.shown();
            }
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void close() {
            if (InterstitialVASTVideoAdapter.this.mmVastActivity != null) {
                InterstitialVASTVideoAdapter.this.mmVastActivity.finish();
            }
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void initFailed() {
            InterstitialVASTVideoAdapter.this.adapterListener.initFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void initSucceeded() {
            InterstitialVASTVideoAdapter.this.adapterListener.initSucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void onAdLeftApplication() {
            InterstitialVASTVideoAdapter.this.adapterListener.onAdLeftApplication();
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void onClick() {
            InterstitialVASTVideoAdapter.this.adapterListener.onClicked();
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
            InterstitialVASTVideoAdapter.this.adapterListener.onIncentiveEarned(xIncentiveEvent);
        }
    };

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void init(Context context, InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener) {
        this.adapterListener = interstitialAdapterListener;
        VASTVideoController vASTVideoController = new VASTVideoController(this.vastVideoControllerListener);
        this.vastVideoController = vASTVideoController;
        vASTVideoController.init(context, this.adContent);
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public void release() {
        VASTVideoController vASTVideoController = this.vastVideoController;
        if (vASTVideoController != null) {
            vASTVideoController.close();
            this.vastVideoController.release();
            this.vastVideoController = null;
        }
    }

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void show(Context context, AdPlacement.DisplayOptions displayOptions) {
        AdPlacement.DisplayOptions displayOptions2 = displayOptions;
        if (displayOptions == null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Display options not specified, using defaults.");
            }
            displayOptions2 = new AdPlacement.DisplayOptions().setImmersive(true);
        }
        MMActivity.launch(context, new MMActivity.MMActivityConfig().setImmersive(displayOptions2.isImmersive()), new MMActivity.MMActivityListener() { // from class: com.millennialmedia.internal.adadapters.InterstitialVASTVideoAdapter.2
            @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
            public boolean onBackPressed() {
                if (InterstitialVASTVideoAdapter.this.vastVideoController == null) {
                    return true;
                }
                return InterstitialVASTVideoAdapter.this.vastVideoController.onBackPressed();
            }

            @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
            public void onCreate(MMActivity mMActivity) {
                InterstitialVASTVideoAdapter.this.mmVastActivity = mMActivity;
                if (InterstitialVASTVideoAdapter.this.vastVideoController != null) {
                    InterstitialVASTVideoAdapter.this.vastVideoController.attach(mMActivity);
                }
            }

            @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
            public void onDestroy(MMActivity mMActivity) {
                if (mMActivity.isFinishing()) {
                    InterstitialVASTVideoAdapter.this.adapterListener.onClosed();
                    InterstitialVASTVideoAdapter.this.mmVastActivity = null;
                }
            }
        });
    }
}
