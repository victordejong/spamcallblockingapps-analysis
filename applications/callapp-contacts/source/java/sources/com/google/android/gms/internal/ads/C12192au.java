package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.au */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/au.class */
public final class C12192au {

    /* renamed from: a */
    String f43172a = C12273ci.f45829b.mo17481a();

    /* renamed from: b */
    Map<String, String> f43173b;

    /* renamed from: c */
    Context f43174c;

    /* renamed from: d */
    String f43175d;

    public C12192au(Context context, String str) {
        this.f43174c = null;
        this.f43175d = null;
        this.f43174c = context;
        this.f43175d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f43173b = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        this.f43173b.put("v", "3");
        this.f43173b.put("os", Build.VERSION.RELEASE);
        this.f43173b.put("api_v", Build.VERSION.SDK);
        Map<String, String> map = this.f43173b;
        zzr.zzkv();
        map.put("device", zzj.zzzs());
        this.f43173b.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.f43173b;
        zzr.zzkv();
        map2.put("is_lite_sdk", zzj.zzax(context) ? "1" : "0");
        dbt mo16890a = C13091zd.f50118a.mo16890a(new CallableC12928te(zzr.zzlg(), this.f43174c));
        try {
            this.f43173b.put("network_coarse", Integer.toString(((C12922sz) mo16890a.get()).f49804j));
            this.f43173b.put("network_fine", Integer.toString(((C12922sz) mo16890a.get()).f49805k));
        } catch (Exception e) {
            zzr.zzkz().m13979a(e, "CsiConfiguration.CsiConfiguration");
        }
    }
}
