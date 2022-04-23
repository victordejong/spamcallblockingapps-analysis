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

    /* renamed from: c  reason: collision with root package name */
    private static final Logger f35616c = Logger.getInstance(VASActivity.class);

    /* renamed from: d  reason: collision with root package name */
    private static TimedMemoryCache<VASActivityConfig> f35617d = new TimedMemoryCache<>();

    /* renamed from: a  reason: collision with root package name */
    protected VASActivityConfig f35618a;

    /* renamed from: b  reason: collision with root package name */
    protected ViewGroup f35619b;
    private boolean e = true;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/VASActivity$VASActivityConfig.class */
    public static class VASActivityConfig {

        /* renamed from: a  reason: collision with root package name */
        private boolean f35621a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f35622b;
        private int e = 0;
        private int f = 0;

        /* renamed from: d  reason: collision with root package name */
        private int f35624d = -1;

        /* renamed from: c  reason: collision with root package name */
        private int f35623c = -1;

        public VASActivityConfig setAudioSource(int i) {
            this.f35624d = i;
            return this;
        }

        public VASActivityConfig setImmersive(boolean z) {
            this.f35621a = z;
            return this;
        }

        public VASActivityConfig setOrientation(int i) {
            this.f35623c = i;
            return this;
        }

        public VASActivityConfig setTransitionAnimation(int i, int i2) {
            this.e = i;
            this.f = i2;
            return this;
        }

        public VASActivityConfig setTransparent(boolean z) {
            this.f35622b = z;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        View decorView = getWindow().getDecorView();
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f35616c;
            logger.d("Enabling immersive mode:\ndecorView = " + decorView + "\nActivity = " + this);
        }
        decorView.setSystemUiVisibility(5894);
    }

    public static void launch(Context context, Class<? extends VASActivity> cls, VASActivityConfig vASActivityConfig) {
        VASActivityConfig vASActivityConfig2 = vASActivityConfig;
        if (vASActivityConfig == null) {
            if (Logger.isLogLevelEnabled(3)) {
                f35616c.d("No VASActivity Configuration specified, creating default activity Configuration.");
            }
            vASActivityConfig2 = new VASActivityConfig();
        }
        String add = f35617d.add(vASActivityConfig2, 5000L);
        if (add == null) {
            f35616c.e("Unable to launch VASActivity, failed to cache activity state");
            return;
        }
        Intent intent = new Intent(context, cls);
        intent.putExtra("activity_config_id", add);
        if (!ActivityUtils.isActivityContext(context)) {
            intent.addFlags(268435456);
        }
        if (vASActivityConfig2.e == 0 && vASActivityConfig2.f == 0) {
            context.startActivity(intent);
        } else {
            context.startActivity(intent, ActivityOptions.makeCustomAnimation(context, vASActivityConfig2.e, vASActivityConfig2.f).toBundle());
        }
    }

    @Override // android.app.Activity
    public void finish() {
        VASActivityConfig vASActivityConfig = this.f35618a;
        if (vASActivityConfig != null) {
            overridePendingTransition(vASActivityConfig.e, this.f35618a.f);
        }
        super.finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean z;
        super.onCreate(bundle);
        VASActivityConfig vASActivityConfig = f35617d.get(getIntent().getStringExtra("activity_config_id"));
        if (vASActivityConfig == null) {
            z = false;
        } else {
            this.f35618a = vASActivityConfig;
            z = true;
        }
        if (!z) {
            Logger logger = f35616c;
            logger.e("Failed to load activity config, aborting activity launch <" + this + ">");
            finish();
            return;
        }
        Logger logger2 = f35616c;
        logger2.d("New activity created");
        if (this.f35618a.f35624d != -1) {
            setVolumeControlStream(this.f35618a.f35624d);
        }
        if (Build.VERSION.SDK_INT >= 19 && this.f35618a.f35621a) {
            a();
            getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: com.verizon.ads.support.VASActivity.1
                @Override // android.view.View.OnSystemUiVisibilityChangeListener
                public void onSystemUiVisibilityChange(int i) {
                    if ((i & 4) == 0) {
                        VASActivity.this.a();
                    }
                }
            });
        } else if (this.f35618a.f35621a) {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
        }
        if (this.e && getRequestedOrientation() != this.f35618a.f35623c) {
            if (Logger.isLogLevelEnabled(3)) {
                logger2.d("Setting requested orientation on activity:\n\tCurrent requested orientation: " + getRequestedOrientation() + "\n\tDesired requested orientation: " + this.f35618a.f35623c);
            }
            ViewUtils.setRequestedOrientationSafe(this, this.f35618a.f35623c);
        }
        this.e = false;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        boolean z;
        if (this.f35618a != null && !isFinishing()) {
            Intent intent = getIntent();
            intent.removeExtra("activity_config_id");
            String add = f35617d.add(this.f35618a, null);
            if (add == null) {
                z = false;
            } else {
                intent.putExtra("activity_config_id", add);
                z = true;
            }
            if (!z) {
                Logger logger = f35616c;
                logger.e("Failed to save activity state <" + this + ">");
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        VASActivityConfig vASActivityConfig;
        super.onWindowFocusChanged(z);
        if (Logger.isLogLevelEnabled(3)) {
            Logger logger = f35616c;
            logger.d("onWindowFocusChanged: hasFocus = ".concat(String.valueOf(z)));
            if (this.f35618a != null) {
                logger.d("activityConfig.immersive = " + this.f35618a.f35621a);
            }
        }
        if (Build.VERSION.SDK_INT >= 19 && (vASActivityConfig = this.f35618a) != null && vASActivityConfig.f35621a && z) {
            a();
        }
    }

    public void setOrientation(int i) {
        if (i != getRequestedOrientation()) {
            this.f35618a.f35623c = i;
            ViewUtils.setRequestedOrientationSafe(this, i);
        }
    }
}
