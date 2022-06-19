package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.util.VisibleForTesting;
import com.huawei.hms.adapter.internal.CommonCode;
import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
@KeepName
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/GoogleApiActivity.class */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: b */
    public static final /* synthetic */ int f5701b = 0;
    @VisibleForTesting

    /* renamed from: a */
    public int f5702a = 0;

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, @RecentlyNonNull Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f5702a = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                GoogleApiManager m39031f = GoogleApiManager.m39031f(this);
                if (i2 == -1) {
                    Handler handler = m39031f.f5759n;
                    handler.sendMessage(handler.obtainMessage(3));
                } else if (i2 == 0) {
                    m39031f.m39026k(new ConnectionResult(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i == 2) {
            this.f5702a = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(@RecentlyNonNull DialogInterface dialogInterface) {
        this.f5702a = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.f5702a = bundle.getInt(CommonCode.MapKey.HAS_RESOLUTION);
        }
        if (this.f5702a != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                finish();
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
            Integer num = (Integer) extras.get("error_code");
            if (pendingIntent == null && num == null) {
                finish();
            } else if (pendingIntent == null) {
                Objects.requireNonNull(num, "null reference");
                int intValue = num.intValue();
                GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f5673d;
                Dialog m39072f = googleApiAvailability.m39072f(this, intValue, 2, this);
                if (m39072f != null) {
                    googleApiAvailability.m39067k(this, m39072f, GooglePlayServicesUtil.GMS_ERROR_DIALOG, this);
                }
                this.f5702a = 1;
            } else {
                try {
                    startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                    this.f5702a = 1;
                } catch (ActivityNotFoundException e) {
                    if (extras.getBoolean("notify_manager", true)) {
                        GoogleApiManager.m39031f(this).m39026k(new ConnectionResult(22, null), getIntent().getIntExtra("failing_client_id", -1));
                    } else {
                        String valueOf = String.valueOf(pendingIntent);
                        String m8610j = C22128a.m8610j(new StringBuilder(valueOf.length() + 36), "Activity not found while launching ", valueOf, StringConstant.DOT);
                        if (Build.FINGERPRINT.contains("generic")) {
                            String.valueOf(m8610j).concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                        }
                    }
                    this.f5702a = 1;
                    finish();
                } catch (IntentSender.SendIntentException e2) {
                    finish();
                }
            }
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(@RecentlyNonNull Bundle bundle) {
        bundle.putInt(CommonCode.MapKey.HAS_RESOLUTION, this.f5702a);
        super.onSaveInstanceState(bundle);
    }
}
