package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfr.class */
public final class zzbfr extends MutableContextWrapper {
    private Context zzaad;
    private Activity zzehf;
    private Context zzeun;

    public zzbfr(Context context) {
        super(context);
        setBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.zzeun.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.zzaad = applicationContext;
        this.zzehf = context instanceof Activity ? (Activity) context : null;
        this.zzeun = context;
        super.setBaseContext(applicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.zzehf;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.zzaad.startActivity(intent);
    }

    public final Activity zzabe() {
        return this.zzehf;
    }

    public final Context zzacs() {
        return this.zzeun;
    }
}
