package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.exoplayer2.C0515C;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.IntentActions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Intents;
import com.mopub.common.util.Utils;
import com.mopub.exceptions.IntentNotResolvableException;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubFullscreenActivity.class */
public class MoPubFullscreenActivity extends Activity {

    /* renamed from: a */
    public FullscreenAdController f4706a;

    @VisibleForTesting
    /* renamed from: a */
    public static Intent m3662a(Context context, AdData adData) {
        Intent intent = new Intent(context, MoPubFullscreenActivity.class);
        intent.putExtra(DataKeys.AD_DATA_KEY, adData);
        intent.setFlags(268435456);
        return intent;
    }

    /* renamed from: b */
    public static AdData m3661b(Intent intent) {
        try {
            return (AdData) intent.getParcelableExtra(DataKeys.AD_DATA_KEY);
        } catch (ClassCastException e) {
            return null;
        }
    }

    public static void start(Context context, AdData adData) {
        try {
            Intents.startActivity(context, m3662a(context, adData));
        } catch (IntentNotResolvableException e) {
            Log.d("MoPubFullscreenActivity", "MoPubFullscreenActivity.class not found. Did you declare MoPubFullscreenActivity in your manifest?");
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        FullscreenAdController fullscreenAdController = this.f4706a;
        if (fullscreenAdController != null) {
            fullscreenAdController.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        FullscreenAdController fullscreenAdController = this.f4706a;
        if (fullscreenAdController == null || fullscreenAdController.m3686f()) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AdData m3661b = m3661b(getIntent());
        if (m3661b == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ad data to show ad is null. Failed to show fullscreen ad.");
            finish();
            return;
        }
        long broadcastIdentifier = m3661b.getBroadcastIdentifier();
        try {
            this.f4706a = new FullscreenAdController(this, bundle, getIntent(), m3661b);
            CreativeOrientation creativeOrientation = CreativeOrientation.DEVICE;
            if (m3661b.getOrientation() != null) {
                creativeOrientation = m3661b.getOrientation();
            }
            DeviceUtils.lockOrientation(this, creativeOrientation);
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            BaseBroadcastReceiver.broadcastAction(this, m3661b.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_SHOW);
            getWindow().setFlags(C0515C.DEFAULT_MUXED_BUFFER_SIZE, C0515C.DEFAULT_MUXED_BUFFER_SIZE);
        } catch (IllegalStateException e) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.FULLSCREEN_SHOW_ERROR;
            MoPubLog.log(adLogEvent, moPubErrorCode, Integer.valueOf(moPubErrorCode.getIntCode()));
            BaseBroadcastReceiver.broadcastAction(this, broadcastIdentifier, IntentActions.ACTION_FULLSCREEN_FAIL);
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        FullscreenAdController fullscreenAdController = this.f4706a;
        if (fullscreenAdController != null) {
            fullscreenAdController.destroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        FullscreenAdController fullscreenAdController = this.f4706a;
        if (fullscreenAdController != null) {
            fullscreenAdController.pause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        FullscreenAdController fullscreenAdController = this.f4706a;
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
