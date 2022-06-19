package com.google.android.play.core.missingsplits;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.play.core.internal.C8466a;
import com.google.android.play.core.internal.C8483e0;
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/missingsplits/PlayCoreMissingSplitsActivity.class */
public class PlayCoreMissingSplitsActivity extends Activity implements DialogInterface.OnClickListener {
    /* renamed from: a */
    private final String m3408a() {
        return getApplicationInfo().loadLabel(getPackageManager()).toString();
    }

    /* renamed from: b */
    private final void m3407b(String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 66);
        sb.append("market://details?id=");
        sb.append(str);
        sb.append("&referrer=utm_source%3Dplay.core.missingsplits");
        try {
            startActivity(new Intent("android.intent.action.VIEW").setData(Uri.parse(sb.toString())).setPackage("com.android.vending"));
        } catch (ActivityNotFoundException e) {
            new C8466a(getClass().getName()).m3565c(e, "Couldn't start missing splits activity for %s", str);
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            m3407b(getPackageName());
        }
        finish();
    }

    @Override // android.app.Activity
    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AlertDialog.Builder neutralButton = new AlertDialog.Builder(this).setTitle("Installation failed").setCancelable(false).setNeutralButton("Close", this);
        if (C8483e0.m3521a(this)) {
            String m3408a = m3408a();
            StringBuilder sb = new StringBuilder(String.valueOf(m3408a).length() + 91);
            sb.append("The app ");
            sb.append(m3408a);
            sb.append(" is missing required components and must be reinstalled from the Google Play Store.");
            neutralButton.setMessage(sb.toString()).setPositiveButton("Reinstall", this);
        } else {
            String m3408a2 = m3408a();
            StringBuilder sb2 = new StringBuilder(String.valueOf(m3408a2).length() + 87);
            sb2.append("The app ");
            sb2.append(m3408a2);
            sb2.append(" is missing required components and must be reinstalled from an official store.");
            neutralButton.setMessage(sb2.toString());
        }
        neutralButton.create().show();
    }
}
