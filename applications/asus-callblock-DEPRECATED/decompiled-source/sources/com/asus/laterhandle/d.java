package com.asus.laterhandle;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.asus.laterhandle.b;
/* loaded from: classes-dex2jar.jar:com/asus/laterhandle/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    Bundle f2925a;

    /* renamed from: b  reason: collision with root package name */
    private Context f2926b;
    private b.a c;
    private Intent d = new Intent("com.asus.task.intent.ACTION_LATER");

    public d(Context context, Bundle bundle, b.a aVar, Intent intent) {
        this.f2926b = context;
        this.c = aVar;
        String packageName = context.getApplicationContext().getPackageName();
        this.f2925a = bundle;
        this.f2925a.putString("extra_later_package_name", packageName);
        this.d.putExtra("extra_later_callback", intent);
    }

    public final boolean a() {
        this.f2925a.remove("extra_boolean_issaveimage");
        this.d.putExtras(this.f2925a);
        this.f2926b.sendBroadcast(this.d);
        return true;
    }
}
