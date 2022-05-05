package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/p.class */
public abstract class p implements DialogInterface.OnClickListener {
    public static p a(final Activity activity, final Intent intent) {
        return new p() { // from class: com.google.android.gms.common.internal.p.1
            final /* synthetic */ int c = 2;

            @Override // com.google.android.gms.common.internal.p
            public final void a() {
                activity.startActivityForResult(intent, this.c);
            }
        };
    }

    public abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            a();
            dialogInterface.dismiss();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Can't redirect to app settings for Google Play services");
        }
    }
}
