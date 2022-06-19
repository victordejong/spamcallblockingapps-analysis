package com.google.android.gms.common.internal;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.os.Build;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zag.class */
public abstract class zag implements DialogInterface.OnClickListener {
    /* renamed from: a */
    public abstract void mo4257a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            mo4257a();
        } catch (ActivityNotFoundException e) {
            Build.FINGERPRINT.contains("generic");
        } finally {
            dialogInterface.dismiss();
        }
    }
}
