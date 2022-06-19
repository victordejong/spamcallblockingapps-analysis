package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.internal.p360f.C13304a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ProxyBillingActivity.class */
public class ProxyBillingActivity extends Activity {

    /* renamed from: a */
    private ResultReceiver f12533a;

    /* renamed from: b */
    private boolean f12534b;

    /* renamed from: a */
    private final Intent m38207a() {
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0088  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle != null) {
            C13304a.m13374a("ProxyBillingActivity");
            this.f12534b = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (!bundle.containsKey("result_receiver")) {
                return;
            }
            this.f12533a = (ResultReceiver) bundle.getParcelable("result_receiver");
            return;
        }
        C13304a.m13374a("ProxyBillingActivity");
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
        } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
            this.f12533a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
        } else {
            pendingIntent = null;
        }
        try {
            this.f12534b = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), 100, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 53);
            sb.append("Got exception while trying to start a purchase flow: ");
            sb.append(valueOf);
            C13304a.m13373a("ProxyBillingActivity", sb.toString());
            ResultReceiver resultReceiver = this.f12533a;
            if (resultReceiver != null) {
                resultReceiver.send(6, null);
            } else {
                Intent m38207a = m38207a();
                m38207a.putExtra("RESPONSE_CODE", 6);
                m38207a.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                sendBroadcast(m38207a);
            }
            this.f12534b = false;
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f12534b) {
            Intent m38207a = m38207a();
            m38207a.putExtra("RESPONSE_CODE", 1);
            m38207a.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(m38207a);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        ResultReceiver resultReceiver = this.f12533a;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f12534b);
    }
}
