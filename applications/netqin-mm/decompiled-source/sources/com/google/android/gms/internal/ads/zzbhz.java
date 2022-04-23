package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhz.class */
public final class zzbhz extends MutableContextWrapper {

    /* renamed from: a */
    public Activity f25004a;

    /* renamed from: b */
    public Context f25005b;

    /* renamed from: c */
    public Context f25006c;

    public zzbhz(Context context) {
        super(context);
        setBaseContext(context);
    }

    /* renamed from: a */
    public final Context m15503a() {
        return this.f25006c;
    }

    /* renamed from: b */
    public final Activity m15502b() {
        return this.f25004a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f25006c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        this.f25005b = context.getApplicationContext();
        this.f25004a = context instanceof Activity ? (Activity) context : null;
        this.f25006c = context;
        super.setBaseContext(this.f25005b);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f25004a;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.f25005b.startActivity(intent);
    }
}
