package com.google.android.play.core.missingsplits;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import e.m.a.h.a.d.b1;
import e.m.a.h.a.d.g;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/google/android/play/core/missingsplits/PlayCoreMissingSplitsActivity.class */
public class PlayCoreMissingSplitsActivity extends Activity implements DialogInterface.OnClickListener {
    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            String packageName = getPackageName();
            try {
                startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(C22128a.m8610j(new StringBuilder(String.valueOf(packageName).length() + 66), "market://details?id=", packageName, "&referrer=utm_source%3Dplay.core.missingsplits"))).setPackage("com.android.vending"));
            } catch (ActivityNotFoundException e) {
                String name = getClass().getName();
                StringBuilder m8546z = C22128a.m8546z(39, "UID: [", Process.myUid(), "]  PID: [", Process.myPid());
                m8546z.append("] ");
                String valueOf = String.valueOf(m8546z.toString());
                String concat = name.length() != 0 ? valueOf.concat(name) : new String(valueOf);
                if (Log.isLoggable("PlayCore", 6)) {
                    g.f(concat, "Couldn't start missing splits activity for %s", new Object[]{packageName});
                }
            }
        }
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AlertDialog.Builder neutralButton = new AlertDialog.Builder(this).setTitle("Installation failed").setCancelable(false).setNeutralButton("Close", this);
        if (b1.b(this)) {
            String charSequence = getApplicationInfo().loadLabel(getPackageManager()).toString();
            StringBuilder sb = new StringBuilder(String.valueOf(charSequence).length() + 91);
            sb.append("The app ");
            sb.append(charSequence);
            sb.append(" is missing required components and must be reinstalled from the Google Play Store.");
            neutralButton.setMessage(sb.toString()).setPositiveButton("Reinstall", this);
        } else {
            String charSequence2 = getApplicationInfo().loadLabel(getPackageManager()).toString();
            StringBuilder sb2 = new StringBuilder(String.valueOf(charSequence2).length() + 87);
            sb2.append("The app ");
            sb2.append(charSequence2);
            sb2.append(" is missing required components and must be reinstalled from an official store.");
            neutralButton.setMessage(sb2.toString());
        }
        neutralButton.create().show();
    }
}
