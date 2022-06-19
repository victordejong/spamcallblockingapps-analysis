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
    public ResultReceiver f1647a;

    /* renamed from: b */
    public boolean f1648b;

    /* renamed from: a */
    public final Intent m42581a() {
        Intent intent = new Intent("com.android.vending.billing.PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0065  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r8, int r9, android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle != null) {
            zza.zzj("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            this.f1648b = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (!bundle.containsKey("result_receiver")) {
                return;
            }
            this.f1647a = (ResultReceiver) bundle.getParcelable("result_receiver");
            return;
        }
        zza.zzj("ProxyBillingActivity", "Launching Play Store billing flow");
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
        } else if (getIntent().hasExtra("SUBS_MANAGEMENT_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("SUBS_MANAGEMENT_INTENT");
            this.f1647a = (ResultReceiver) getIntent().getParcelableExtra("result_receiver");
        } else {
            pendingIntent = null;
        }
        try {
            this.f1648b = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), 100, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 53);
            sb.append("Got exception while trying to start a purchase flow: ");
            sb.append(valueOf);
            zza.zzk("ProxyBillingActivity", sb.toString());
            ResultReceiver resultReceiver = this.f1647a;
            if (resultReceiver != null) {
                resultReceiver.send(6, null);
            } else {
                Intent m42581a = m42581a();
                m42581a.putExtra("RESPONSE_CODE", 6);
                m42581a.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
                sendBroadcast(m42581a);
            }
            this.f1648b = false;
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f1648b) {
            Intent m42581a = m42581a();
            m42581a.putExtra("RESPONSE_CODE", 1);
            m42581a.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            sendBroadcast(m42581a);
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        ResultReceiver resultReceiver = this.f1647a;
        if (resultReceiver != null) {
            bundle.putParcelable("result_receiver", resultReceiver);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f1648b);
    }
}
