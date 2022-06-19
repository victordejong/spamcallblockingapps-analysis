package com.google.android.play.core.missingsplits;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.play.core.internal.C15024ao;
import com.google.android.play.core.internal.C15072h;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/missingsplits/PlayCoreMissingSplitsActivity.class */
public class PlayCoreMissingSplitsActivity extends Activity implements DialogInterface.OnClickListener {
    /* renamed from: a */
    private final String m9476a() {
        return getApplicationInfo().loadLabel(getPackageManager()).toString();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            String packageName = getPackageName();
            StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 66);
            sb.append("market://details?id=");
            sb.append(packageName);
            sb.append("&referrer=utm_source%3Dplay.core.missingsplits");
            try {
                startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(sb.toString())).setPackage("com.android.vending"));
            } catch (ActivityNotFoundException e) {
                new C15072h(getClass().getName()).m9510a(e, "Couldn't start missing splits activity for %s", packageName);
            }
        }
        finish();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AlertDialog.Builder neutralButton = new AlertDialog.Builder(this).setTitle("Installation failed").setCancelable(false).setNeutralButton("Close", this);
        if (C15024ao.m9585a(this)) {
            String m9476a = m9476a();
            StringBuilder sb = new StringBuilder(String.valueOf(m9476a).length() + 91);
            sb.append("The app ");
            sb.append(m9476a);
            sb.append(" is missing required components and must be reinstalled from the Google Play Store.");
            neutralButton.setMessage(sb.toString()).setPositiveButton("Reinstall", this);
        } else {
            String m9476a2 = m9476a();
            StringBuilder sb2 = new StringBuilder(String.valueOf(m9476a2).length() + 87);
            sb2.append("The app ");
            sb2.append(m9476a2);
            sb2.append(" is missing required components and must be reinstalled from an official store.");
            neutralButton.setMessage(sb2.toString());
        }
        neutralButton.create().show();
    }
}
