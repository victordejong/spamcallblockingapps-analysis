package com.pubmatic.sdk.webrendering.p021ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.ViewGroup;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.cache.POBAdViewCacheService;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.p019ui.POBFullScreenActivityBackPressListener;
import com.pubmatic.sdk.common.p019ui.POBFullScreenActivityListener;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.util.Objects;
/* renamed from: com.pubmatic.sdk.webrendering.ui.POBFullScreenActivity */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBFullScreenActivity.class */
public class POBFullScreenActivity extends Activity {
    public static final String ALLOW_ORIENTATION_CHANGE = "AllowOrientation";
    public static final String ENABLE_BACK_PRESS = "EnableBackPress";
    public static final String RENDERER_IDENTIFIER = "RendererIdentifier";
    public static final String REQUESTED_ORIENTATION = "RequestedOrientation";

    /* renamed from: a */
    private ViewGroup f1209a;

    /* renamed from: b */
    private int f1210b;

    /* renamed from: c */
    private LocalBroadcastManager f1211c;

    /* renamed from: d */
    private POBFullScreenActivityListener f1212d;

    /* renamed from: e */
    private POBFullScreenActivityBackPressListener f1213e;

    /* renamed from: g */
    private boolean f1215g = true;

    /* renamed from: f */
    private BroadcastReceiver f1214f = new C2059a();

    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBFullScreenActivity$ACTIONS */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$ACTIONS.class */
    public enum ACTIONS {
        POB_CLOSE,
        POB_BACK_PRESS
    }

    /* renamed from: com.pubmatic.sdk.webrendering.ui.POBFullScreenActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/webrendering/ui/POBFullScreenActivity$a.class */
    class C2059a extends BroadcastReceiver {
        C2059a() {
            POBFullScreenActivity.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Objects.equals(Integer.valueOf(intent.getIntExtra(POBFullScreenActivity.RENDERER_IDENTIFIER, 0)), Integer.valueOf(POBFullScreenActivity.this.f1210b))) {
                POBFullScreenActivity.this.onBroadcastReceived(intent);
            }
        }
    }

    /* renamed from: a */
    private IntentFilter m439a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTIONS.POB_CLOSE.name());
        intentFilter.addAction(ACTIONS.POB_BACK_PRESS.name());
        return intentFilter;
    }

    /* renamed from: a */
    private void m438a(int i) {
        int i2;
        if (i == 0) {
            i2 = -1;
        } else if (i == 2) {
            i2 = 6;
        } else if (i != 1) {
            return;
        } else {
            i2 = 7;
        }
        setRequestedOrientation(i2);
    }

    public static void enableBackPress(Context context, int i) {
        Intent intent = new Intent(ACTIONS.POB_BACK_PRESS.name());
        intent.putExtra(RENDERER_IDENTIFIER, i);
        intent.putExtra(ENABLE_BACK_PRESS, Boolean.TRUE);
        sendBroadcast(context, intent);
    }

    public static void sendBroadcast(Context context, Intent intent) {
        LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
    }

    public static void startActivity(Context context, Intent intent) {
        intent.setClass(context, POBFullScreenActivity.class);
        intent.addFlags(268435456);
        context.startActivity(intent);
    }

    public static void startFullScreenActivity(Context context, int i, POBAdDescriptor pOBAdDescriptor, int i2) {
        String str;
        Boolean bool;
        Intent intent = new Intent();
        intent.putExtra(REQUESTED_ORIENTATION, i);
        intent.putExtra(RENDERER_IDENTIFIER, i2);
        if (pOBAdDescriptor.isVideo()) {
            bool = Boolean.FALSE;
            str = ENABLE_BACK_PRESS;
        } else {
            bool = Boolean.FALSE;
            str = ALLOW_ORIENTATION_CHANGE;
        }
        intent.putExtra(str, bool);
        startActivity(context, intent);
    }

    public static void startFullScreenActivity(Context context, boolean z, int i) {
        String str;
        Boolean bool;
        Intent intent = new Intent();
        intent.putExtra(RENDERER_IDENTIFIER, i);
        if (z) {
            bool = Boolean.FALSE;
            str = ENABLE_BACK_PRESS;
        } else {
            bool = Boolean.FALSE;
            str = ALLOW_ORIENTATION_CHANGE;
        }
        intent.putExtra(str, bool);
        startActivity(context, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.f1215g) {
            POBFullScreenActivityBackPressListener pOBFullScreenActivityBackPressListener = this.f1213e;
            if (pOBFullScreenActivityBackPressListener != null) {
                pOBFullScreenActivityBackPressListener.onBackPressed();
            } else {
                super.onBackPressed();
            }
        }
    }

    protected void onBroadcastReceived(Intent intent) {
        String action = intent.getAction();
        if (Objects.equals(action, ACTIONS.POB_CLOSE.name())) {
            finish();
        } else if (!Objects.equals(action, ACTIONS.POB_BACK_PRESS.name())) {
        } else {
            this.f1215g = intent.getBooleanExtra(ENABLE_BACK_PRESS, true);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        int intExtra = intent.getIntExtra(REQUESTED_ORIENTATION, POBUtils.getDeviceOrientation(getApplicationContext()));
        boolean booleanExtra = intent.getBooleanExtra(ALLOW_ORIENTATION_CHANGE, true);
        this.f1215g = intent.getBooleanExtra(ENABLE_BACK_PRESS, true);
        int intExtra2 = intent.getIntExtra(RENDERER_IDENTIFIER, 0);
        this.f1210b = intExtra2;
        if (intExtra2 != 0) {
            POBAdViewCacheService.AdViewConfig popStoredAdView = POBInstanceProvider.getAdViewCacheService().popStoredAdView(Integer.valueOf(this.f1210b));
            if (popStoredAdView == null) {
                PMLog.error("POBFullScreenActivity", "Unable to retrieve stored ad view config for %s", Integer.valueOf(this.f1210b));
                finish();
                return;
            }
            this.f1209a = (ViewGroup) popStoredAdView.getAdView();
            this.f1212d = popStoredAdView.getEventListener();
            this.f1213e = popStoredAdView.getBackPressListener();
            setContentView(this.f1209a);
            POBFullScreenActivityListener pOBFullScreenActivityListener = this.f1212d;
            if (pOBFullScreenActivityListener != null) {
                pOBFullScreenActivityListener.onCreate(this);
            }
            LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(getApplicationContext());
            this.f1211c = localBroadcastManager;
            localBroadcastManager.registerReceiver(this.f1214f, m439a());
        }
        if (booleanExtra) {
            setRequestedOrientation(-1);
        } else {
            m438a(intExtra);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        ViewGroup viewGroup = this.f1209a;
        if (viewGroup != null && (viewGroup.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.f1209a.getParent()).removeView(this.f1209a);
            this.f1209a.removeAllViews();
        }
        super.onDestroy();
        setRequestedOrientation(-1);
        POBFullScreenActivityListener pOBFullScreenActivityListener = this.f1212d;
        if (pOBFullScreenActivityListener != null) {
            pOBFullScreenActivityListener.onDestroy();
        }
        LocalBroadcastManager localBroadcastManager = this.f1211c;
        if (localBroadcastManager != null) {
            localBroadcastManager.unregisterReceiver(this.f1214f);
        }
    }
}
