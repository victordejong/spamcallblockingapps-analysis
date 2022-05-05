package com.privacystar.core.service;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.call_center.CallCenterActivity;
import com.privacystar.core.receiver.CallBroadcastReceiver;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/CallerIDService.class */
public class CallerIDService extends Service {
    public static boolean isCallCenterFeatureAvailable(String str) {
        boolean z;
        boolean isFeatureAvailable = LicenseFeatureRealm.isFeatureAvailable(Feature.PRE_CC_GREEN);
        boolean isFeatureAvailable2 = LicenseFeatureRealm.isFeatureAvailable(Feature.PRE_CC_NONGREEN);
        boolean isFeatureAvailable3 = LicenseFeatureRealm.isFeatureAvailable(Feature.PRE_CC_SCAM);
        Caller caller = CallerFactory.getInstance().getCaller(str);
        if (caller.getIsInContactsSynchronous() || caller.isUnknownNumber()) {
            return false;
        }
        boolean isOffender = caller.isOffender(false);
        boolean isScammer = caller.isScammer();
        boolean isSpoofer = caller.isSpoofer();
        if (!isFeatureAvailable || !isFeatureAvailable2) {
            if (isFeatureAvailable2) {
                z = true;
                if (!isOffender) {
                    if (isSpoofer) {
                        z = true;
                    }
                }
            }
            z = (!isFeatureAvailable || isOffender) ? isFeatureAvailable3 && isScammer : true;
        } else {
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: responseToCallState */
    public void bridge$lambda$0$CallerIDService(String str, String str2) {
        Timber.m28v("Custom processing on number: '%s'", str2);
        if (str2 != null) {
            if (!PreferenceUtil.getIsCallCenterEnabled()) {
                Timber.m37d("Call Center prevented from starting because it is disabled in settings.", new Object[0]);
            } else if (!isCallCenterFeatureAvailable(str2)) {
                Timber.m37d("Call Center prevented from starting because this feature is not available for this number.", new Object[0]);
            } else if (Build.VERSION.SDK_INT < 23) {
                startCallCenter(str2);
            } else if (!Settings.canDrawOverlays(this)) {
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getPackageName()));
                intent.addFlags(268435456);
                startActivity(intent);
            } else if (str.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
                startCallCenter(str2);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        Timber.m37d("Binding to CallerIDService", new Object[0]);
        CallBroadcastReceiver.addOnAllResponder(new CallBroadcastReceiver.CallResponder(this) { // from class: com.privacystar.core.service.CallerIDService$$Lambda$0
            private final CallerIDService arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // com.privacystar.core.receiver.CallBroadcastReceiver.CallResponder
            public void act(String str, String str2) {
                this.arg$1.bridge$lambda$0$CallerIDService(str, str2);
            }
        });
    }

    void startCallCenter(String str) {
        startActivity(CallCenterActivity.getIntent(str, getApplicationContext()));
    }
}
