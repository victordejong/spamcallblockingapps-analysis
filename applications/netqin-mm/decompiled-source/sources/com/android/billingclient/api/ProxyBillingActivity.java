package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.gms.internal.play_billing.zza;
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/ProxyBillingActivity.class */
public class ProxyBillingActivity extends Activity {

    /* renamed from: a */
    public ResultReceiver f21077a;

    /* renamed from: a */
    public final Intent m19483a() {
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
    public void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle == null) {
            zza.m9445a("ProxyBillingActivity", "Launching Play Store billing flow");
            if (getIntent().hasExtra("BUY_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
                pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
                this.f21077a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
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
                zza.m9442b("ProxyBillingActivity", sb.toString());
                ResultReceiver resultReceiver = this.f21077a;
                if (resultReceiver != null) {
                    resultReceiver.send(6, null);
                } else {
                    Intent a = m19483a();
                    a.putExtra("RESPONSE_CODE", 6);
                    a.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                    sendBroadcast(a);
                }
                finish();
            }
        } else {
            zza.m9445a("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            if (bundle.containsKey("result_receiver")) {
                this.f21077a = (ResultReceiver) bundle.getParcelable("result_receiver");
            }
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        ResultReceiver resultReceiver = this.f21077a;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
    }
}
