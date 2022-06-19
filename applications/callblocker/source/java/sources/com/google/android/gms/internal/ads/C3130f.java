package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.C2341q;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* renamed from: com.google.android.gms.internal.ads.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/f.class */
public final class C3130f {

    /* renamed from: a */
    private String f16648a = C2772aj.f9780b.mo13599a();

    /* renamed from: b */
    private Map<String, String> f16649b = new LinkedHashMap();

    /* renamed from: c */
    private Context f16650c;

    /* renamed from: d */
    private String f16651d;

    public C3130f(Context context, String str) {
        this.f16650c = null;
        this.f16651d = null;
        this.f16650c = context;
        this.f16651d = str;
        this.f16649b.put("s", "gmob_sdk");
        this.f16649b.put("v", "3");
        this.f16649b.put("os", Build.VERSION.RELEASE);
        this.f16649b.put("api_v", Build.VERSION.SDK);
        Map<String, String> map = this.f16649b;
        C2341q.m14744c();
        map.put("device", C3567ve.m6979b());
        this.f16649b.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.f16649b;
        C2341q.m14744c();
        map2.put("is_lite_sdk", C3567ve.m6949j(context) ? "1" : "0");
        Future<C3433qf> m7310a = C2341q.m14733n().m7310a(this.f16650c);
        try {
            this.f16649b.put("network_coarse", Integer.toString(m7310a.get().f17266j));
            this.f16649b.put("network_fine", Integer.toString(m7310a.get().f17267k));
        } catch (Exception e) {
            C2341q.m14740g().m7095a(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* renamed from: a */
    public final String m7846a() {
        return this.f16648a;
    }

    /* renamed from: b */
    public final Context m7845b() {
        return this.f16650c;
    }

    /* renamed from: c */
    public final String m7844c() {
        return this.f16651d;
    }

    /* renamed from: d */
    public final Map<String, String> m7843d() {
        return this.f16649b;
    }
}
