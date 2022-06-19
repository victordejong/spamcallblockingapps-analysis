package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afi.class */
public final class afi extends MutableContextWrapper {

    /* renamed from: a */
    Activity f40149a;

    /* renamed from: b */
    Context f40150b;

    /* renamed from: c */
    private Context f40151c;

    public afi(Context context) {
        super(context);
        setBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f40150b.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f40151c = applicationContext;
        this.f40149a = context instanceof Activity ? (Activity) context : null;
        this.f40150b = context;
        super.setBaseContext(applicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f40149a;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.f40151c.startActivity(intent);
    }
}
