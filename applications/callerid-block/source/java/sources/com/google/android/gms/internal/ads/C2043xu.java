package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
/* renamed from: com.google.android.gms.internal.ads.xu */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xu.class */
public final class C2043xu extends MutableContextWrapper {

    /* renamed from: a */
    private Activity f9182a;

    /* renamed from: b */
    private Context f9183b;

    /* renamed from: c */
    private Context f9184c;

    public C2043xu(Context context) {
        super(context);
        setBaseContext(context);
    }

    /* renamed from: a */
    public final Activity m4835a() {
        return this.f9182a;
    }

    /* renamed from: b */
    public final Context m4834b() {
        return this.f9184c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f9184c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f9183b = applicationContext;
        this.f9182a = context instanceof Activity ? (Activity) context : null;
        this.f9184c = context;
        super.setBaseContext(applicationContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        Activity activity = this.f9182a;
        if (activity != null) {
            activity.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.f9183b.startActivity(intent);
    }
}
