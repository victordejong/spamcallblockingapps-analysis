package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.C2591e;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.internal.C2548f;
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApiActivity.class */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    private int f7026a = 0;

    /* renamed from: a */
    public static PendingIntent m14465a(Context context, PendingIntent pendingIntent, int i) {
        return PendingIntent.getActivity(context, 0, m14464a(context, pendingIntent, i, true), 134217728);
    }

    /* renamed from: a */
    public static Intent m14464a(Context context, PendingIntent pendingIntent, int i, boolean z) {
        Intent intent = new Intent(context, GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i);
        intent.putExtra("notify_manager", z);
        return intent;
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f7026a = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                C2548f m14319a = C2548f.m14319a(this);
                switch (i2) {
                    case -1:
                        m14319a.m14307c();
                        break;
                    case 0:
                        m14319a.m14308b(new C2579b(13, null), getIntent().getIntExtra("failing_client_id", -1));
                        break;
                }
            }
        } else if (i == 2) {
            this.f7026a = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f7026a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f7026a = bundle.getInt("resolution");
        }
        if (this.f7026a != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                Log.e("GoogleApiActivity", "Activity started without extras");
                finish();
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
            Integer num = (Integer) extras.get("error_code");
            if (pendingIntent == null && num == null) {
                Log.e("GoogleApiActivity", "Activity started without resolution");
                finish();
            } else if (pendingIntent == null) {
                C2591e.m14185a().m14174b(this, num.intValue(), 2, this);
                this.f7026a = 1;
            } else {
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                    this.f7026a = 1;
                } catch (IntentSender.SendIntentException e) {
                    Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e);
                    finish();
                }
            }
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f7026a);
        super.onSaveInstanceState(bundle);
    }
}
