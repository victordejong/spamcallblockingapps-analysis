package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/au.class */
public final class au {

    /* renamed from: a  reason: collision with root package name */
    String f23884a = ci.f25868b.a();

    /* renamed from: b  reason: collision with root package name */
    Map<String, String> f23885b;

    /* renamed from: c  reason: collision with root package name */
    Context f23886c;

    /* renamed from: d  reason: collision with root package name */
    String f23887d;

    public au(Context context, String str) {
        this.f23886c = null;
        this.f23887d = null;
        this.f23886c = context;
        this.f23887d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f23885b = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        this.f23885b.put("v", "3");
        this.f23885b.put("os", Build.VERSION.RELEASE);
        this.f23885b.put("api_v", Build.VERSION.SDK);
        Map<String, String> map = this.f23885b;
        zzr.zzkv();
        map.put("device", zzj.zzzs());
        this.f23885b.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.f23885b;
        zzr.zzkv();
        map2.put("is_lite_sdk", zzj.zzax(context) ? "1" : "0");
        dbt a2 = zd.f28573a.a(new te(zzr.zzlg(), this.f23886c));
        try {
            this.f23885b.put("network_coarse", Integer.toString(((sz) a2.get()).j));
            this.f23885b.put("network_fine", Integer.toString(((sz) a2.get()).k));
        } catch (Exception e) {
            zzr.zzkz().a(e, "CsiConfiguration.CsiConfiguration");
        }
    }
}
