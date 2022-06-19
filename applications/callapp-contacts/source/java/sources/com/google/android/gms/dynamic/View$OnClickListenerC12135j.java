package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
/* renamed from: com.google.android.gms.dynamic.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/j.class */
final class View$OnClickListenerC12135j implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f39667a;

    /* renamed from: b */
    final /* synthetic */ Intent f39668b;

    public View$OnClickListenerC12135j(Context context, Intent intent) {
        this.f39667a = context;
        this.f39668b = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f39667a.startActivity(this.f39668b);
        } catch (ActivityNotFoundException e) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
        }
    }
}
