package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p352d.C11946c;
/* renamed from: com.google.android.gms.internal.ads.ab */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ab.class */
public final class C12166ab {

    /* renamed from: a */
    private final Context f39774a;

    public C12166ab(Context context) {
        C12045o.m19161a(context, "Context can not be null");
        this.f39774a = context;
    }

    /* renamed from: a */
    public final boolean m18926a() {
        return ((Boolean) zzbr.zza(this.f39774a, new CallableC12165aa())).booleanValue() && C11946c.m19258a(this.f39774a).m19263a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    /* renamed from: a */
    public final boolean m18925a(Intent intent) {
        C12045o.m19161a(intent, "Intent can not be null");
        return !this.f39774a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    /* renamed from: b */
    public final boolean m18924b() {
        return m18925a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }
}
