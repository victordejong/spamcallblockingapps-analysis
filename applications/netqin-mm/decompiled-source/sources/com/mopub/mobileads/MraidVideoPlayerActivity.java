package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import com.mopub.common.AdType;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.IntentActions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Intents;
import com.mopub.common.util.Reflection;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mraid.MraidVideoViewController;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidVideoPlayerActivity.class */
public class MraidVideoPlayerActivity extends BaseVideoPlayerActivity implements BaseVideoViewController.BaseVideoViewControllerListener {

    /* renamed from: a */
    public BaseVideoViewController f34190a;

    /* renamed from: b */
    public long f34191b;

    /* renamed from: a */
    public static long m4301a(Intent intent) {
        return intent.getLongExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, -1L);
    }

    /* renamed from: a */
    public final BaseVideoViewController m4300a(Bundle bundle) throws IllegalStateException {
        String stringExtra = getIntent().getStringExtra(BaseVideoPlayerActivity.VIDEO_CLASS_EXTRAS_KEY);
        if (FullAdType.VAST.equals(stringExtra)) {
            return new VastVideoViewController(this, getIntent().getExtras(), bundle, this.f34191b, this);
        }
        if ("vast_new".equals(stringExtra)) {
            return new VastVideoViewControllerTwo(this, getIntent().getExtras(), bundle, this.f34191b, this);
        }
        if (AdType.MRAID.equals(stringExtra)) {
            return new MraidVideoViewController(this, getIntent().getExtras(), bundle, this);
        }
        if ("native".equals(stringExtra)) {
            Bundle extras = getIntent().getExtras();
            if (Reflection.classFound("com.mopub.nativeads.NativeVideoViewController")) {
                try {
                    return (BaseVideoViewController) Reflection.instantiateClassWithConstructor("com.mopub.nativeads.NativeVideoViewController", BaseVideoViewController.class, new Class[]{Context.class, Bundle.class, Bundle.class, BaseVideoViewController.BaseVideoViewControllerListener.class}, new Object[]{this, extras, bundle, this});
                } catch (Exception e) {
                    throw new IllegalStateException("Missing native video module");
                }
            } else {
                throw new IllegalStateException("Missing native video module");
            }
        } else {
            throw new IllegalStateException("Unsupported video type: " + stringExtra);
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        BaseVideoViewController baseVideoViewController = this.f34190a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo4200a(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        BaseVideoViewController baseVideoViewController = this.f34190a;
        if (baseVideoViewController != null && baseVideoViewController.backButtonEnabled()) {
            super.onBackPressed();
            this.f34190a.mo3875d();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        BaseVideoViewController baseVideoViewController = this.f34190a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3885a(configuration);
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f34191b = m4301a(getIntent());
        try {
            this.f34190a = m4300a(bundle);
            Serializable serializableExtra = getIntent().getSerializableExtra(DataKeys.CREATIVE_ORIENTATION_KEY);
            CreativeOrientation creativeOrientation = CreativeOrientation.DEVICE;
            if (serializableExtra instanceof CreativeOrientation) {
                creativeOrientation = (CreativeOrientation) serializableExtra;
            }
            DeviceUtils.lockOrientation(this, creativeOrientation);
            this.f34190a.mo3873e();
        } catch (IllegalStateException e) {
            BaseBroadcastReceiver.broadcastAction(this, this.f34191b, IntentActions.ACTION_INTERSTITIAL_FAIL);
            finish();
        }
    }

    @Override // com.mopub.mobileads.BaseVideoPlayerActivity, android.app.Activity
    public void onDestroy() {
        BaseVideoViewController baseVideoViewController = this.f34190a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3871f();
        }
        super.onDestroy();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onFinish() {
        finish();
    }

    @Override // android.app.Activity
    public void onPause() {
        BaseVideoViewController baseVideoViewController = this.f34190a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3869g();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        BaseVideoViewController baseVideoViewController = this.f34190a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3867h();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        BaseVideoViewController baseVideoViewController = this.f34190a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3884a(bundle);
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetContentView(View view) {
        setContentView(view);
    }

    public void onSetRequestedOrientation(int i) {
        setRequestedOrientation(i);
    }

    public void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle) {
        if (cls != null) {
            try {
                startActivityForResult(Intents.getStartActivityIntent(this, cls, bundle), i);
            } catch (ActivityNotFoundException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Activity " + cls.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
            }
        }
    }
}
