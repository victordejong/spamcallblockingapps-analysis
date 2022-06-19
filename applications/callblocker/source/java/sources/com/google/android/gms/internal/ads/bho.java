package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.C2341q;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bho.class */
public final class bho {

    /* renamed from: b */
    private final Executor f11263b;

    /* renamed from: c */
    private final C3649yf f11264c;

    /* renamed from: d */
    private final Context f11265d;

    /* renamed from: e */
    private final String f11266e;

    /* renamed from: g */
    private final boolean f11268g;

    /* renamed from: h */
    private final String f11269h;

    /* renamed from: a */
    private final String f11262a = C2772aj.f9780b.mo13599a();

    /* renamed from: f */
    private final Map<String, String> f11267f = new HashMap();

    public bho(Executor executor, C3649yf c3649yf, Context context, C3647yd c3647yd) {
        this.f11263b = executor;
        this.f11264c = c3649yf;
        this.f11265d = context;
        this.f11266e = context.getPackageName();
        this.f11268g = ((double) dyx.m8155h().nextFloat()) <= C2772aj.f9779a.mo13599a().doubleValue();
        this.f11269h = c3647yd.f17636a;
        this.f11267f.put("s", "gmob_sdk");
        this.f11267f.put("v", "3");
        this.f11267f.put("os", Build.VERSION.RELEASE);
        this.f11267f.put("api_v", Build.VERSION.SDK);
        Map<String, String> map = this.f11267f;
        C2341q.m14744c();
        map.put("device", C3567ve.m6979b());
        this.f11267f.put("app", this.f11266e);
        Map<String, String> map2 = this.f11267f;
        C2341q.m14744c();
        map2.put("is_lite_sdk", C3567ve.m6949j(this.f11265d) ? "1" : "0");
        this.f11267f.put("e", TextUtils.join(",", edi.m7864b()));
        this.f11267f.put("sdkVersion", this.f11269h);
    }

    /* renamed from: a */
    public final Map<String, String> m11925a() {
        return new HashMap(this.f11267f);
    }

    /* renamed from: a */
    public final /* synthetic */ void m11924a(String str) {
        this.f11264c.mo6739a(str);
    }

    /* renamed from: a */
    public final void m11923a(Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(this.f11262a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        String uri = buildUpon.build().toString();
        if (this.f11268g) {
            this.f11263b.execute(new Runnable(this, uri) { // from class: com.google.android.gms.internal.ads.bhr

                /* renamed from: a */
                private final bho f11277a;

                /* renamed from: b */
                private final String f11278b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f11277a = this;
                    this.f11278b = uri;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f11277a.m11924a(this.f11278b);
                }
            });
        }
        C3556uu.m7052a(uri);
    }

    /* renamed from: b */
    public final ConcurrentHashMap<String, String> m11922b() {
        return new ConcurrentHashMap<>(this.f11267f);
    }
}
