package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p203i.p204a.p224e.p259j.p278s.C8805a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ProxyBillingActivity.class */
public class ProxyBillingActivity extends Activity {
    @Nullable

    /* renamed from: a */
    public ResultReceiver f821a;

    /* renamed from: a */
    public final Intent m37021a() {
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 100) {
            int a = C8805a.m16918a(intent, "ProxyBillingActivity");
            if (!(i2 == -1 && a == 0)) {
                StringBuilder sb = new StringBuilder(85);
                sb.append("Activity finished with resultCode ");
                sb.append(i2);
                sb.append(" and billing's responseCode: ");
                sb.append(a);
                C8805a.m16910b("ProxyBillingActivity", sb.toString());
            }
            ResultReceiver resultReceiver = this.f821a;
            if (resultReceiver != null) {
                resultReceiver.send(a, intent == null ? null : intent.getExtras());
            } else {
                Intent a2 = m37021a();
                if (intent != null) {
                    a2.putExtras(intent.getExtras());
                }
                sendBroadcast(a2);
            }
        } else {
            StringBuilder sb2 = new StringBuilder(69);
            sb2.append("Got onActivityResult with wrong requestCode: ");
            sb2.append(i);
            sb2.append("; skipping...");
            C8805a.m16910b("ProxyBillingActivity", sb2.toString());
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle == null) {
            C8805a.m16914a("ProxyBillingActivity", "Launching Play Store billing flow");
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
                this.f821a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            } else {
                pendingIntent = null;
            }
            try {
                startIntentSenderForResult(pendingIntent.getIntentSender(), 100, new Intent(), 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 53);
                sb.append("Got exception while trying to start a purchase flow: ");
                sb.append(valueOf);
                C8805a.m16910b("ProxyBillingActivity", sb.toString());
                ResultReceiver resultReceiver = this.f821a;
                if (resultReceiver != null) {
                    resultReceiver.send(6, null);
                } else {
                    Intent a = m37021a();
                    a.putExtra("RESPONSE_CODE", 6);
                    a.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(a);
                }
                finish();
            }
        } else {
            C8805a.m16914a("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            if (bundle.containsKey("result_receiver")) {
                this.f821a = (ResultReceiver) bundle.getParcelable("result_receiver");
            }
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        ResultReceiver resultReceiver = this.f821a;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
    }
}
