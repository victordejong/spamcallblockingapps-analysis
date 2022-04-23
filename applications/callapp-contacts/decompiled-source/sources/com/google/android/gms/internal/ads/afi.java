package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/afi.class */
public final class afi extends MutableContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    Activity f23219a;

    /* renamed from: b  reason: collision with root package name */
    Context f23220b;

    /* renamed from: c  reason: collision with root package name */
    private Context f23221c;

    public afi(Context context) {
        super(context);
        setBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f23220b.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f23221c = applicationContext;
        this.f23219a = context instanceof Activity ? (Activity) context : null;
        this.f23220b = context;
        super.setBaseContext(applicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f23219a;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.f23221c.startActivity(intent);
    }
}
