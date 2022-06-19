package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.p132c.C2586c;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecp.class */
public final class ecp {

    /* renamed from: a */
    private final Context f16292a;

    public ecp(Context context) {
        C2662s.m13980a(context, "Context can not be null");
        this.f16292a = context;
    }

    /* renamed from: a */
    private final boolean m7903a(Intent intent) {
        boolean z = false;
        C2662s.m13980a(intent, "Intent can not be null");
        if (!this.f16292a.getPackageManager().queryIntentActivities(intent, 0).isEmpty()) {
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    public final boolean m7904a() {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return m7903a(intent);
    }

    /* renamed from: b */
    public final boolean m7902b() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return m7903a(intent);
    }

    /* renamed from: c */
    public final boolean m7901c() {
        return ((Boolean) C3626xj.m6821a(this.f16292a, new ecs())).booleanValue() && C2586c.m14193a(this.f16292a).m14199a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    @TargetApi(14)
    /* renamed from: d */
    public final boolean m7900d() {
        return m7903a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }
}
