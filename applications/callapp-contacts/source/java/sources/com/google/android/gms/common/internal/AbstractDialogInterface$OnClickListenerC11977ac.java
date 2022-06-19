package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.AbstractC11898h;
/* renamed from: com.google.android.gms.common.internal.ac */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ac.class */
public abstract class AbstractDialogInterface$OnClickListenerC11977ac implements DialogInterface.OnClickListener {
    /* renamed from: a */
    public static AbstractDialogInterface$OnClickListenerC11977ac m19227a(Activity activity, Intent intent, int i) {
        return new C12059z(intent, activity, i);
    }

    /* renamed from: a */
    public static AbstractDialogInterface$OnClickListenerC11977ac m19226a(Fragment fragment, Intent intent, int i) {
        return new C11975aa(intent, fragment, i);
    }

    /* renamed from: a */
    public static AbstractDialogInterface$OnClickListenerC11977ac m19225a(AbstractC11898h abstractC11898h, Intent intent) {
        return new C11976ab(intent, abstractC11898h, 2);
    }

    /* renamed from: a */
    protected abstract void mo19079a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            mo19079a();
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
