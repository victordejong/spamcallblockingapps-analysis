package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.f;
import com.google.android.gms.common.b;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/GoogleApiActivity.class */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: a  reason: collision with root package name */
    protected int f22608a = 0;

    public static Intent a(Context context, PendingIntent pendingIntent, int i, boolean z) {
        Intent intent = new Intent(context, GoogleApiActivity.class);
        intent.putExtra("pending_intent", pendingIntent);
        intent.putExtra("failing_client_id", i);
        intent.putExtra("notify_manager", z);
        return intent;
    }

    @Override // android.app.Activity
    protected final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f22608a = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                f a2 = f.a(this);
                if (i2 == -1) {
                    a2.b();
                } else if (i2 == 0) {
                    a2.b(new ConnectionResult(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i == 2) {
            this.f22608a = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f22608a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f22608a = bundle.getInt("resolution");
        }
        if (this.f22608a != 1) {
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
            } else if (pendingIntent != null) {
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                    this.f22608a = 1;
                } catch (ActivityNotFoundException e) {
                    if (extras.getBoolean("notify_manager", true)) {
                        f.a(this).b(new ConnectionResult(22, null), getIntent().getIntExtra("failing_client_id", -1));
                    } else {
                        String valueOf = String.valueOf(pendingIntent);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
                        sb.append("Activity not found while launching ");
                        sb.append(valueOf);
                        sb.append(".");
                        String sb2 = sb.toString();
                        String str = sb2;
                        if (Build.FINGERPRINT.contains("generic")) {
                            str = String.valueOf(sb2).concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                        }
                        Log.e("GoogleApiActivity", str, e);
                    }
                    this.f22608a = 1;
                    finish();
                } catch (IntentSender.SendIntentException e2) {
                    Log.e("GoogleApiActivity", "Failed to launch pendingIntent", e2);
                    finish();
                }
            } else {
                b.a().b(this, ((Integer) o.a(num)).intValue(), 2, this);
                this.f22608a = 1;
            }
        }
    }

    @Override // android.app.Activity
    protected final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f22608a);
        super.onSaveInstanceState(bundle);
    }
}
