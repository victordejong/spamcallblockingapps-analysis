package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.ads.internal.util.C1433l1;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* renamed from: com.google.android.gms.internal.ads.p3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/p3.class */
public final class C1887p3 {

    /* renamed from: a */
    private final String f7918a = C1990v4.f8865b.m6222e();

    /* renamed from: b */
    private final Map<String, String> f7919b;

    /* renamed from: c */
    private final Context f7920c;

    /* renamed from: d */
    private final String f7921d;

    public C1887p3(Context context, String str) {
        this.f7920c = context;
        this.f7921d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f7919b = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        C1407r.m8920d();
        linkedHashMap.put("device", C1433l1.m8766c0());
        linkedHashMap.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        C1407r.m8920d();
        linkedHashMap.put("is_lite_sdk", true != C1433l1.m8760g(context) ? "0" : "1");
        Future<C1876oj> a = C1407r.m8909o().m5964a(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(a.get().f7862j));
            linkedHashMap.put("network_fine", Integer.toString(a.get().f7863k));
        } catch (Exception e) {
            C1407r.m8916h().m4590g(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m6234a() {
        return this.f7918a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Context m6233b() {
        return this.f7920c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final String m6232c() {
        return this.f7921d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final Map<String, String> m6231d() {
        return this.f7919b;
    }
}
