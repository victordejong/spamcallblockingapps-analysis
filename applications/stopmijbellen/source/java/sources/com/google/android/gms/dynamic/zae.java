package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/zae.class */
final class zae implements View.OnClickListener {
    public final /* synthetic */ Context zaa;
    public final /* synthetic */ Intent zab;

    public zae(Context context, Intent intent) {
        this.zaa = context;
        this.zab = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.zaa.startActivity(this.zab);
        } catch (ActivityNotFoundException e) {
        }
    }
}
