package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lp0.class */
public final class lp0 extends MutableContextWrapper {

    /* renamed from: a */
    private Activity f26198a;

    /* renamed from: b */
    private Context f26199b;

    /* renamed from: c */
    private Context f26200c;

    public lp0(Context context) {
        super(context);
        setBaseContext(context);
    }

    /* renamed from: a */
    public final Activity m13461a() {
        return this.f26198a;
    }

    /* renamed from: b */
    public final Context m13460b() {
        return this.f26200c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f26200c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f26199b = applicationContext;
        this.f26198a = context instanceof Activity ? (Activity) context : null;
        this.f26200c = context;
        super.setBaseContext(applicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f26198a;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.f26199b.startActivity(intent);
    }
}
