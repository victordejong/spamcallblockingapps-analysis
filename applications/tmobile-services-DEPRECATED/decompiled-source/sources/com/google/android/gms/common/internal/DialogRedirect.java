package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.internal.LifecycleFragment;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/DialogRedirect.class */
public abstract class DialogRedirect implements DialogInterface.OnClickListener {
    /* renamed from: a */
    public static DialogRedirect m14557a(Activity activity, Intent intent, int i) {
        return new zad(intent, activity, i);
    }

    /* renamed from: b */
    public static DialogRedirect m14556b(@NonNull LifecycleFragment lifecycleFragment, Intent intent, int i) {
        return new zae(intent, lifecycleFragment, i);
    }

    /* renamed from: c */
    protected abstract void mo14435c();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            mo14435c();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
