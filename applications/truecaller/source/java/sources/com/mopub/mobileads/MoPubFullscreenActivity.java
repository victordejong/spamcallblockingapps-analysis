package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.mopub.common.DataKeys;
import com.mopub.common.IntentActions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.common.util.Utils;
import com.mopub.exceptions.IntentNotResolvableException;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubFullscreenActivity.class */
public class MoPubFullscreenActivity extends Activity {

    /* renamed from: a */
    public FullscreenAdController f8794a;

    public static void start(Context context, AdData adData) {
        Intent intent = new Intent(context, MoPubFullscreenActivity.class);
        intent.putExtra(DataKeys.AD_DATA_KEY, adData);
        intent.setFlags(268435456);
        try {
            Intents.startActivity(context, intent);
        } catch (IntentNotResolvableException e) {
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        FullscreenAdController fullscreenAdController = this.f8794a;
        if (fullscreenAdController != null) {
            fullscreenAdController.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        BaseVideoViewController baseVideoViewController;
        FullscreenAdController fullscreenAdController = this.f8794a;
        if (fullscreenAdController != null) {
            if (!((!FullscreenAdController$e.VIDEO.equals(fullscreenAdController.e) || (baseVideoViewController = fullscreenAdController.b) == null) ? (FullscreenAdController$e.MRAID.equals(fullscreenAdController.e) || FullscreenAdController$e.IMAGE.equals(fullscreenAdController.e)) ? fullscreenAdController.p : true : baseVideoViewController.backButtonEnabled())) {
                return;
            }
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        AdData adData;
        super.onCreate(bundle);
        try {
            adData = (AdData) getIntent().getParcelableExtra(DataKeys.AD_DATA_KEY);
        } catch (ClassCastException e) {
            adData = null;
        }
        if (adData == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ad data to show ad is null. Failed to show fullscreen ad.");
            finish();
            return;
        }
        long broadcastIdentifier = adData.getBroadcastIdentifier();
        try {
            this.f8794a = new FullscreenAdController(this, bundle, getIntent(), adData);
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            BaseBroadcastReceiver.broadcastAction(this, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_SHOW);
            getWindow().setFlags(16777216, 16777216);
        } catch (IllegalStateException e2) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.FULLSCREEN_SHOW_ERROR;
            MoPubLog.log(adLogEvent, moPubErrorCode, Integer.valueOf(moPubErrorCode.getIntCode()));
            BaseBroadcastReceiver.broadcastAction(this, broadcastIdentifier, IntentActions.ACTION_FULLSCREEN_FAIL);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        FullscreenAdController fullscreenAdController = this.f8794a;
        if (fullscreenAdController != null) {
            fullscreenAdController.destroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        FullscreenAdController fullscreenAdController = this.f8794a;
        if (fullscreenAdController != null) {
            fullscreenAdController.pause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        FullscreenAdController fullscreenAdController = this.f8794a;
        if (fullscreenAdController != null) {
            fullscreenAdController.resume();
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        Utils.hideNavigationBar(this);
    }
}
