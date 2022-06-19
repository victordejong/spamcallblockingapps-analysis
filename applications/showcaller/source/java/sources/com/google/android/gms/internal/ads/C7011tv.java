package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.C5690f1;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.p272k.C6198c;
/* renamed from: com.google.android.gms.internal.ads.tv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tv.class */
public final class C7011tv {

    /* renamed from: a */
    private final Context f30373a;

    public C7011tv(Context context) {
        C6155o.m17017k(context, "Context can not be null");
        this.f30373a = context;
    }

    /* renamed from: a */
    public final boolean m10495a() {
        return ((Boolean) C5690f1.m18026a(this.f30373a, new CallableC6974sv())).booleanValue() && C6198c.m16885a(this.f30373a).m16893a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    @TargetApi(14)
    /* renamed from: b */
    public final boolean m10494b() {
        return m10493c(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }

    /* renamed from: c */
    public final boolean m10493c(Intent intent) {
        C6155o.m17017k(intent, "Intent can not be null");
        return !this.f30373a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }
}
