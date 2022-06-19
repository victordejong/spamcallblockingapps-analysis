package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.LifecycleFragment;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zad.class */
public abstract class zad implements DialogInterface.OnClickListener {
    public static zad zaa(Activity activity, Intent intent, int i) {
        return new zac(intent, activity, i);
    }

    public static zad zaa(Fragment fragment, Intent intent, int i) {
        return new zaf(intent, fragment, i);
    }

    public static zad zaa(LifecycleFragment lifecycleFragment, Intent intent, int i) {
        return new zae(intent, lifecycleFragment, 2);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            zaa();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }

    public abstract void zaa();
}
