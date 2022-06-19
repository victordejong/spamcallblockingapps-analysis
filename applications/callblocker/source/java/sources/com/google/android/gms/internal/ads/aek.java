package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aek.class */
public final class aek extends MutableContextWrapper {

    /* renamed from: a */
    private Activity f7986a;

    /* renamed from: b */
    private Context f7987b;

    /* renamed from: c */
    private Context f7988c;

    public aek(Context context) {
        super(context);
        setBaseContext(context);
    }

    /* renamed from: a */
    public final Activity m13538a() {
        return this.f7986a;
    }

    /* renamed from: b */
    public final Context m13537b() {
        return this.f7988c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        return this.f7988c.getSystemService(str);
    }

    @Override // android.content.MutableContextWrapper
    public final void setBaseContext(Context context) {
        this.f7987b = context.getApplicationContext();
        this.f7986a = context instanceof Activity ? (Activity) context : null;
        this.f7988c = context;
        super.setBaseContext(this.f7987b);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void startActivity(Intent intent) {
        if (this.f7986a != null) {
            this.f7986a.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.f7987b.startActivity(intent);
    }
}
