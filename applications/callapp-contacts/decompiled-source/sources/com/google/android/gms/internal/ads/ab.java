package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ab.class */
public final class ab {

    /* renamed from: a  reason: collision with root package name */
    private final Context f23035a;

    public ab(Context context) {
        o.a(context, "Context can not be null");
        this.f23035a = context;
    }

    public final boolean a() {
        return ((Boolean) zzbr.zza(this.f23035a, new aa())).booleanValue() && c.a(this.f23035a).a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(Intent intent) {
        o.a(intent, "Intent can not be null");
        return !this.f23035a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public final boolean b() {
        return a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }
}
