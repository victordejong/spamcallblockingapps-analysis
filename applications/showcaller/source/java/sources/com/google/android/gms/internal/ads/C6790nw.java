package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.ads.internal.util.C5679c2;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* renamed from: com.google.android.gms.internal.ads.nw */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nw.class */
public final class C6790nw {

    /* renamed from: a */
    private final String f27335a = C7013tx.f30410b.m12799e();

    /* renamed from: b */
    private final Map<String, String> f27336b;

    /* renamed from: c */
    private final Context f27337c;

    /* renamed from: d */
    private final String f27338d;

    public C6790nw(Context context, String str) {
        this.f27337c = context;
        this.f27338d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f27336b = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        C5667s.m18160d();
        linkedHashMap.put("device", C5679c2.m18072e0());
        linkedHashMap.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        C5667s.m18160d();
        linkedHashMap.put("is_lite_sdk", true != C5679c2.m18067h(context) ? "0" : "1");
        Future<cd0> m15277b = C5667s.m18149o().m15277b(context);
        try {
            linkedHashMap.put("network_coarse", Integer.toString(m15277b.get().f21184k));
            linkedHashMap.put("network_fine", Integer.toString(m15277b.get().f21185l));
        } catch (Exception e) {
            C5667s.m18156h().m12235k(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* renamed from: a */
    public final String m12812a() {
        return this.f27335a;
    }

    /* renamed from: b */
    public final Context m12811b() {
        return this.f27337c;
    }

    /* renamed from: c */
    public final String m12810c() {
        return this.f27338d;
    }

    /* renamed from: d */
    public final Map<String, String> m12809d() {
        return this.f27336b;
    }
}
