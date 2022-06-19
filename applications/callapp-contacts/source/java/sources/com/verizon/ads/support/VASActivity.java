package com.verizon.ads.support;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.verizon.ads.Logger;
import com.verizon.ads.support.utils.ActivityUtils;
import com.verizon.ads.support.utils.ViewUtils;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/VASActivity.class */
public abstract class VASActivity extends Activity {

    /* renamed from: c */
    private static final Logger f61690c = Logger.getInstance(VASActivity.class);

    /* renamed from: d */
    private static TimedMemoryCache<VASActivityConfig> f61691d = new TimedMemoryCache<>();

    /* renamed from: a */
    protected VASActivityConfig f61692a;

    /* renamed from: b */
    protected ViewGroup f61693b;

    /* renamed from: e */
    private boolean f61694e = true;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/VASActivity$VASActivityConfig.class */
    public static class VASActivityConfig {

        /* renamed from: a */
        private boolean f61696a;

        /* renamed from: b */
        private boolean f61697b;

        /* renamed from: e */
        private int f61700e = 0;

        /* renamed from: f */
        private int f61701f = 0;

        /* renamed from: d */
        private int f61699d = -1;

        /* renamed from: c */
        private int f61698c = -1;

        public VASActivityConfig setAudioSource(int i) {
            this.f61699d = i;
            return this;
        }

        public VASActivityConfig setImmersive(boolean z) {
            this.f61696a = z;
            return this;
        }

        public VASActivityConfig setOrientation(int i) {
            this.f61698c = i;
            return this;
        }

        public VASActivityConfig setTransitionAnimation(int i, int i2) {
            this.f61700e = i;
            this.f61701f = i2;
            return this;
        }

        public VASActivityConfig setTransparent(boolean z) {
            this.f61697b = z;
            return this;
        }
    }

    /* renamed from: a */
    public void m5346a() {
        View decorView = getWindow().getDecorView();
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61690c;
            logger.m5567d("Enabling immersive mode:\ndecorView = " + decorView + "\nActivity = " + this);
        }
        decorView.setSystemUiVisibility(5894);
    }

    public static void launch(Context context, Class<? extends VASActivity> cls, VASActivityConfig vASActivityConfig) {
        VASActivityConfig vASActivityConfig2 = vASActivityConfig;
        if (vASActivityConfig == null) {
            if (Logger.isLogLevelEnabled(3)) {
                f61690c.m5567d("No VASActivity Configuration specified, creating default activity Configuration.");
            }
            vASActivityConfig2 = new VASActivityConfig();
        }
        String add = f61691d.add(vASActivityConfig2, 5000L);
        if (add == null) {
            f61690c.m5565e("Unable to launch VASActivity, failed to cache activity state");
            return;
        }
        Intent intent = new Intent(context, cls);
        intent.putExtra("activity_config_id", add);
        if (!ActivityUtils.isActivityContext(context)) {
            intent.addFlags(268435456);
        }
        if (vASActivityConfig2.f61700e == 0 && vASActivityConfig2.f61701f == 0) {
            context.startActivity(intent);
        } else {
            context.startActivity(intent, ActivityOptions.makeCustomAnimation(context, vASActivityConfig2.f61700e, vASActivityConfig2.f61701f).toBundle());
        }
    }

    @Override // android.app.Activity
    public void finish() {
        VASActivityConfig vASActivityConfig = this.f61692a;
        if (vASActivityConfig != null) {
            overridePendingTransition(vASActivityConfig.f61700e, this.f61692a.f61701f);
        }
        super.finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        VASActivityConfig vASActivityConfig = f61691d.get(getIntent().getStringExtra("activity_config_id"));
        if (vASActivityConfig == null) {
            z = false;
        } else {
            this.f61692a = vASActivityConfig;
            z = true;
        }
        if (!z) {
            f61690c.m5565e("Failed to load activity config, aborting activity launch <" + this + ">");
            finish();
            return;
        }
        Logger logger = f61690c;
        logger.m5567d("New activity created");
        if (this.f61692a.f61699d != -1) {
            setVolumeControlStream(this.f61692a.f61699d);
        }
        if (Build.VERSION.SDK_INT >= 19 && this.f61692a.f61696a) {
            m5346a();
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.verizon.ads.support.VASActivity.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i) {
                    if ((i & 4) == 0) {
                        VASActivity.this.m5346a();
                    }
                }
            });
        } else if (this.f61692a.f61696a) {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
        }
        if (this.f61694e && getRequestedOrientation() != this.f61692a.f61698c) {
            if (Logger.isLogLevelEnabled(3)) {
                logger.m5567d("Setting requested orientation on activity:\n\tCurrent requested orientation: " + getRequestedOrientation() + "\n\tDesired requested orientation: " + this.f61692a.f61698c);
            }
            ViewUtils.setRequestedOrientationSafe(this, this.f61692a.f61698c);
        }
        this.f61694e = false;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        boolean z;
        if (this.f61692a != null && !isFinishing()) {
            Intent intent = getIntent();
            intent.removeExtra("activity_config_id");
            String add = f61691d.add(this.f61692a, null);
            if (add == null) {
                z = false;
            } else {
                intent.putExtra("activity_config_id", add);
                z = true;
            }
            if (!z) {
                f61690c.m5565e("Failed to save activity state <" + this + ">");
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        VASActivityConfig vASActivityConfig;
        super.onWindowFocusChanged(z);
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f61690c;
            logger.m5567d("onWindowFocusChanged: hasFocus = ".concat(String.valueOf(z)));
            if (this.f61692a != null) {
                logger.m5567d("activityConfig.immersive = " + this.f61692a.f61696a);
            }
        }
        if (Build.VERSION.SDK_INT < 19 || (vASActivityConfig = this.f61692a) == null || !vASActivityConfig.f61696a || !z) {
            return;
        }
        m5346a();
    }

    public void setOrientation(int i) {
        if (i != getRequestedOrientation()) {
            this.f61692a.f61698c = i;
            ViewUtils.setRequestedOrientationSafe(this, i);
        }
    }
}
