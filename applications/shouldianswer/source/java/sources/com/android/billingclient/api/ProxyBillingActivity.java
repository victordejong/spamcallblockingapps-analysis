package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.p060a.C1158a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ProxyBillingActivity.class */
public class ProxyBillingActivity extends Activity {

    /* renamed from: a */
    private ResultReceiver f3705a;

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            int m3929a = C1158a.m3929a(intent, "ProxyBillingActivity");
            if (i2 != -1 || m3929a != 0) {
                C1158a.m3925b("ProxyBillingActivity", "Activity finished with resultCode " + i2 + " and billing's responseCode: " + m3929a);
            }
            this.f3705a.send(m3929a, intent == null ? null : intent.getExtras());
        } else {
            C1158a.m3925b("ProxyBillingActivity", "Got onActivityResult with wrong requestCode: " + i + "; skipping...");
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C1158a.m3926a("ProxyBillingActivity", "Launching Play Store billing flow");
        this.f3705a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
        try {
            startIntentSenderForResult((getIntent().hasExtra("BUY_INTENT") ? (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT") : getIntent().hasExtra("SUBS_MANAGEMENT_INTENT") ? (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT") : null).getIntentSender(), 100, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            C1158a.m3925b("ProxyBillingActivity", "Got exception while trying to start a purchase flow: " + e);
            this.f3705a.send(6, null);
            finish();
        }
    }
}
