package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.zzb;
@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ProxyBillingActivity.class */
public class ProxyBillingActivity extends Activity {

    /* renamed from: a */
    public ResultReceiver f3200a;

    /* renamed from: b */
    public ResultReceiver f3201b;

    /* renamed from: c */
    public boolean f3202c;

    /* renamed from: a */
    public final Intent m7235a() {
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006c  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r8, int r9, android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        int i;
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle != null) {
            zzb.zzm("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            this.f3202c = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (bundle.containsKey("result_receiver")) {
                this.f3200a = (ResultReceiver) bundle.getParcelable("result_receiver");
                return;
            } else if (!bundle.containsKey("in_app_message_result_receiver")) {
                return;
            } else {
                this.f3201b = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
                return;
            }
        }
        zzb.zzm("ProxyBillingActivity", "Launching Play Store billing flow");
        try {
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
                this.f3200a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
                this.f3201b = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
                i = 101;
                this.f3202c = true;
                startIntentSenderForResult(pendingIntent.getIntentSender(), i, new Intent(), 0, 0, 0);
                return;
            } else {
                pendingIntent = null;
            }
            this.f3202c = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), i, new Intent(), 0, 0, 0);
            return;
        } catch (IntentSender.SendIntentException e) {
            zzb.zzo("ProxyBillingActivity", "Got exception while trying to start a purchase flow.", e);
            ResultReceiver resultReceiver = this.f3200a;
            if (resultReceiver != null) {
                resultReceiver.send(6, null);
            } else {
                ResultReceiver resultReceiver2 = this.f3201b;
                if (resultReceiver2 != null) {
                    resultReceiver2.send(0, null);
                } else {
                    Intent m7235a = m7235a();
                    m7235a.putExtra("RESPONSE_CODE", 6);
                    m7235a.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(m7235a);
                }
            }
            this.f3202c = false;
            finish();
            return;
        }
        i = 100;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f3202c) {
            Intent m7235a = m7235a();
            m7235a.putExtra("RESPONSE_CODE", 1);
            m7235a.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(m7235a);
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        ResultReceiver resultReceiver = this.f3200a;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f3201b;
        if (resultReceiver2 != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver2);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f3202c);
    }
}
