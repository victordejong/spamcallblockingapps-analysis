package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/zad.class */
final class zad implements View.OnClickListener {

    /* renamed from: f */
    private final /* synthetic */ Context f7694f;

    /* renamed from: g */
    private final /* synthetic */ Intent f7695g;

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f7694f.startActivity(this.f7695g);
        } catch (ActivityNotFoundException e) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
        }
    }
}
