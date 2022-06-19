package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.C1441o0;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.p080g.C1562c;
/* renamed from: com.google.android.gms.internal.ads.x2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/x2.class */
public final class C2030x2 {

    /* renamed from: a */
    private final Context f9084a;

    public C2030x2(Context context) {
        C1581h.m8346i(context, "Context can not be null");
        this.f9084a = context;
    }

    /* renamed from: a */
    public final boolean m4972a() {
        return ((Boolean) C1441o0.m8726a(this.f9084a, new CallableC2009w2())).booleanValue() && C1562c.m8427a(this.f9084a).m8435a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    @TargetApi(14)
    /* renamed from: b */
    public final boolean m4971b() {
        return m4970c(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }

    /* renamed from: c */
    public final boolean m4970c(Intent intent) {
        C1581h.m8346i(intent, "Intent can not be null");
        return !this.f9084a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }
}
