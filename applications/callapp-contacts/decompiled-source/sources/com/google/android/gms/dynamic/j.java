package com.google.android.gms.dynamic;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.View;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/j.class */
final class j implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Context f22976a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Intent f22977b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context, Intent intent) {
        this.f22976a = context;
        this.f22977b = intent;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        try {
            this.f22976a.startActivity(this.f22977b);
        } catch (ActivityNotFoundException e) {
            Log.e("DeferredLifecycleHelper", "Failed to start resolution intent", e);
        }
    }
}
