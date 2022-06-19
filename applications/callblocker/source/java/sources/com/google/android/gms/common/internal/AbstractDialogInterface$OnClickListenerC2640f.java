package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import com.google.android.gms.common.api.internal.AbstractC2554i;
/* renamed from: com.google.android.gms.common.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/f.class */
public abstract class AbstractDialogInterface$OnClickListenerC2640f implements DialogInterface.OnClickListener {
    /* renamed from: a */
    public static AbstractDialogInterface$OnClickListenerC2640f m14027a(Activity activity, Intent intent, int i) {
        return new C2671x(intent, activity, i);
    }

    /* renamed from: a */
    public static AbstractDialogInterface$OnClickListenerC2640f m14026a(AbstractC2554i abstractC2554i, Intent intent, int i) {
        return new C2672y(intent, abstractC2554i, i);
    }

    /* renamed from: a */
    protected abstract void mo13908a();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            mo13908a();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
