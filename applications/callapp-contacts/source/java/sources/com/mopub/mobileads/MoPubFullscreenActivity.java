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
import com.mopub.mobileads.FullscreenAdController;
import okhttp3.internal.http2.Http2Connection;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubFullscreenActivity.class */
public class MoPubFullscreenActivity extends Activity {

    /* renamed from: a */
    private FullscreenAdController f59276a;

    /* renamed from: a */
    private static AdData m6478a(Intent intent) {
        try {
            return (AdData) intent.getParcelableExtra(DataKeys.AD_DATA_KEY);
        } catch (ClassCastException e) {
            return null;
        }
    }

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
    protected void onActivityResult(int i, int i2, Intent intent) {
        FullscreenAdController fullscreenAdController = this.f59276a;
        if (fullscreenAdController != null) {
            fullscreenAdController.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        FullscreenAdController fullscreenAdController = this.f59276a;
        if (fullscreenAdController != null) {
            if (!((!FullscreenAdController.EnumC16773b.VIDEO.equals(fullscreenAdController.f59178b) || fullscreenAdController.f59177a == null) ? (FullscreenAdController.EnumC16773b.MRAID.equals(fullscreenAdController.f59178b) || FullscreenAdController.EnumC16773b.IMAGE.equals(fullscreenAdController.f59178b)) ? fullscreenAdController.f59179c : true : fullscreenAdController.f59177a.backButtonEnabled())) {
                return;
            }
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AdData m6478a = m6478a(getIntent());
        if (m6478a == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Ad data to show ad is null. Failed to show fullscreen ad.");
            finish();
            return;
        }
        long broadcastIdentifier = m6478a.getBroadcastIdentifier();
        try {
            this.f59276a = new FullscreenAdController(this, bundle, getIntent(), m6478a);
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
            BaseBroadcastReceiver.broadcastAction(this, m6478a.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_SHOW);
            getWindow().setFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE, Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        } catch (IllegalStateException e) {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, MoPubErrorCode.FULLSCREEN_SHOW_ERROR, Integer.valueOf(MoPubErrorCode.FULLSCREEN_SHOW_ERROR.getIntCode()));
            BaseBroadcastReceiver.broadcastAction(this, broadcastIdentifier, IntentActions.ACTION_FULLSCREEN_FAIL);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        FullscreenAdController fullscreenAdController = this.f59276a;
        if (fullscreenAdController != null) {
            fullscreenAdController.destroy();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        FullscreenAdController fullscreenAdController = this.f59276a;
        if (fullscreenAdController != null) {
            fullscreenAdController.pause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        FullscreenAdController fullscreenAdController = this.f59276a;
        if (fullscreenAdController != null) {
            fullscreenAdController.resume();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        Utils.hideNavigationBar(this);
    }
}
