package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.h;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ac.class */
public abstract class ac implements DialogInterface.OnClickListener {
    public static ac a(Activity activity, Intent intent, int i) {
        return new z(intent, activity, i);
    }

    public static ac a(Fragment fragment, Intent intent, int i) {
        return new aa(intent, fragment, i);
    }

    public static ac a(h hVar, Intent intent) {
        return new ab(intent, hVar, 2);
    }

    protected abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            a();
        } catch (ActivityNotFoundException e) {
            String str = "Failed to start resolution intent.";
            if (true == Build.FINGERPRINT.contains("generic")) {
                str = "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.";
            }
            Log.e("DialogRedirect", str, e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
