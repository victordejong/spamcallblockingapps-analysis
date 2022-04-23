package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.internal.f.a;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ProxyBillingActivity.class */
public class ProxyBillingActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    private ResultReceiver f6936a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6937b;

    private final Intent a() {
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
        if (bundle == null) {
            a.a("ProxyBillingActivity");
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
                this.f6936a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
            } else {
                pendingIntent = null;
            }
            try {
                this.f6937b = true;
                startIntentSenderForResult(pendingIntent.getIntentSender(), 100, new Intent(), 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 53);
                sb.append("Got exception while trying to start a purchase flow: ");
                sb.append(valueOf);
                a.a("ProxyBillingActivity", sb.toString());
                ResultReceiver resultReceiver = this.f6936a;
                if (resultReceiver != null) {
                    resultReceiver.send(6, null);
                } else {
                    Intent a2 = a();
                    a2.putExtra("RESPONSE_CODE", 6);
                    a2.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(a2);
                }
                this.f6937b = false;
                finish();
            }
        } else {
            a.a("ProxyBillingActivity");
            this.f6937b = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (bundle.containsKey("result_receiver")) {
                this.f6936a = (ResultReceiver) bundle.getParcelable("result_receiver");
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f6937b) {
            Intent a2 = a();
            a2.putExtra("RESPONSE_CODE", 1);
            a2.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(a2);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        ResultReceiver resultReceiver = this.f6936a;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f6937b);
    }
}
