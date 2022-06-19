package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.IntentActions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Intents;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mraid.MraidVideoViewController;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MraidVideoPlayerActivity.class */
public class MraidVideoPlayerActivity extends BaseVideoPlayerActivity implements BaseVideoViewController.BaseVideoViewControllerListener {

    /* renamed from: a */
    public BaseVideoViewController f4773a;

    /* renamed from: b */
    public long f4774b;

    /* renamed from: c */
    public static long m3603c(Intent intent) {
        return intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }

    /* renamed from: b */
    public final BaseVideoViewController m3604b(Bundle bundle) {
        String stringExtra = getIntent().getStringExtra(BaseVideoPlayerActivity.VIDEO_CLASS_EXTRAS_KEY);
        if (FullAdType.VAST.equals(stringExtra)) {
            return new VastVideoViewController(this, getIntent().getExtras(), bundle, this.f4774b, this);
        }
        if ("mraid".equals(stringExtra)) {
            return new MraidVideoViewController(this, getIntent().getExtras(), bundle, this);
        }
        throw new IllegalStateException("Unsupported video type: " + stringExtra);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        BaseVideoViewController baseVideoViewController = this.f4773a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3543e(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        BaseVideoViewController baseVideoViewController = this.f4773a;
        if (baseVideoViewController == null || !baseVideoViewController.backButtonEnabled()) {
            return;
        }
        super.onBackPressed();
        this.f4773a.mo3398f();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        BaseVideoViewController baseVideoViewController = this.f4773a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3397g(configuration);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f4774b = m3603c(getIntent());
        try {
            this.f4773a = m3604b(bundle);
            Serializable serializableExtra = getIntent().getSerializableExtra(DataKeys.CREATIVE_ORIENTATION_KEY);
            CreativeOrientation creativeOrientation = CreativeOrientation.DEVICE;
            if (serializableExtra instanceof CreativeOrientation) {
                creativeOrientation = (CreativeOrientation) serializableExtra;
            }
            DeviceUtils.lockOrientation(this, creativeOrientation);
            this.f4773a.mo3396h();
        } catch (IllegalStateException e) {
            BaseBroadcastReceiver.broadcastAction(this, this.f4774b, IntentActions.ACTION_FULLSCREEN_FAIL);
            finish();
        }
    }

    @Override // com.mopub.mobileads.BaseVideoPlayerActivity, android.app.Activity
    public void onDestroy() {
        BaseVideoViewController baseVideoViewController = this.f4773a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3395i();
        }
        super.onDestroy();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onFinish() {
        finish();
    }

    @Override // android.app.Activity
    public void onPause() {
        BaseVideoViewController baseVideoViewController = this.f4773a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3394j();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        BaseVideoViewController baseVideoViewController = this.f4773a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3393k();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        BaseVideoViewController baseVideoViewController = this.f4773a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3392l(bundle);
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetContentView(View view) {
        setContentView(view);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetRequestedOrientation(int i) {
        setRequestedOrientation(i);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle) {
        if (cls == null) {
            return;
        }
        try {
            startActivityForResult(Intents.getStartActivityIntent(this, cls, bundle), i);
        } catch (ActivityNotFoundException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Activity " + cls.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
        }
    }
}
