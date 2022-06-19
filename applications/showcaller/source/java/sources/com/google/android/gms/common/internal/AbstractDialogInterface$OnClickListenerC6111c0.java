package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import com.google.android.gms.common.api.internal.AbstractC6031h;
/* renamed from: com.google.android.gms.common.internal.c0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/c0.class */
public abstract class AbstractDialogInterface$OnClickListenerC6111c0 implements DialogInterface.OnClickListener {
    /* renamed from: b */
    public static AbstractDialogInterface$OnClickListenerC6111c0 m17135b(Activity activity, Intent intent, int i) {
        return new C6105a0(intent, activity, i);
    }

    /* renamed from: c */
    public static AbstractDialogInterface$OnClickListenerC6111c0 m17134c(AbstractC6031h abstractC6031h, Intent intent, int i) {
        return new C6108b0(intent, abstractC6031h, 2);
    }

    /* renamed from: a */
    protected abstract void mo17136a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            mo17136a();
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
