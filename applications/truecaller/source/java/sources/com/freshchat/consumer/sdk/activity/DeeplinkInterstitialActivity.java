package com.freshchat.consumer.sdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.util.DeepLinkUtils;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/DeeplinkInterstitialActivity.class */
public class DeeplinkInterstitialActivity extends Activity {
    public static final String TAG = DeeplinkInterstitialActivity.class.getName();

    /* renamed from: br */
    public Intent f3839br = null;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean z;
        Intent intent;
        super.onCreate(bundle);
        Intent m40354aI = C1594aa.m40354aI(getApplicationContext());
        Intent intent2 = getIntent();
        this.f3839br = intent2;
        boolean z2 = false;
        try {
            ?? longExtra = intent2.getLongExtra("MARKETING_ID", -1L);
            boolean booleanExtra = this.f3839br.getBooleanExtra("NOTIFICATION_CLICKED", false);
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Marketing message with id : ");
            sb.append((long) longExtra);
            sb.append(", clicked: ");
            sb.append(booleanExtra);
            C1613ai.m40284d(str, sb.toString());
            z = longExtra;
            if (booleanExtra) {
                z2 = longExtra;
                C1594aa.m40343f(getApplicationContext(), longExtra);
                z = longExtra;
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
            z = z2;
        }
        try {
            if (this.f3839br.hasExtra("DEEPLINK_URL")) {
                String stringExtra = this.f3839br.getStringExtra("DEEPLINK_URL");
                intent = m40354aI;
                if (C1626as.m40233a(stringExtra)) {
                    Uri parse = Uri.parse(stringExtra);
                    intent = m40354aI;
                    if (parse != null) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("MARKETING_ID", z ? 1L : 0L);
                        DeepLinkUtils.m39275c(getApplicationContext(), parse, bundle2);
                        intent = m40354aI;
                    }
                }
            } else {
                intent = m40354aI;
                if (this.f3839br.getBooleanExtra("LAUNCH_APP_ON_CLICK", false)) {
                    intent = C1594aa.m40354aI(getApplicationContext());
                }
            }
            if (intent != null) {
                intent.putExtras(this.f3839br.getExtras());
                startActivityForResult(intent, 0);
            }
        } catch (Exception e2) {
            C1723q.m39823a(e2);
        }
        finish();
    }
}
