package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.LifecycleFragment;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zag.class */
public abstract class zag implements DialogInterface.OnClickListener {
    public static zag zab(Activity activity, Intent intent, int i) {
        return new zad(intent, activity, i);
    }

    public static zag zac(Fragment fragment, Intent intent, int i) {
        return new zae(intent, fragment, i);
    }

    public static zag zad(LifecycleFragment lifecycleFragment, Intent intent, int i) {
        return new zaf(intent, lifecycleFragment, 2);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            zaa();
        } catch (ActivityNotFoundException e) {
            Build.FINGERPRINT.contains("generic");
        } finally {
            dialogInterface.dismiss();
        }
    }

    public abstract void zaa();
}
