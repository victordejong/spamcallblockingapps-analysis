package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzcmz;
import com.inmobi.ads.C8303s;
import com.inmobi.ads.C8310v;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmz.class */
public final class zzcmz {

    /* renamed from: b */
    public final Executor f26273b;

    /* renamed from: c */
    public final zzbbu f26274c;

    /* renamed from: d */
    public final Context f26275d;

    /* renamed from: e */
    public final String f26276e;

    /* renamed from: g */
    public final boolean f26278g;

    /* renamed from: h */
    public final String f26279h;

    /* renamed from: a */
    public final String f26272a = zzacp.f23967b.mo16862a();

    /* renamed from: f */
    public final Map<String, String> f26277f = new HashMap();

    public zzcmz(Executor executor, zzbbu zzbbuVar, Context context, zzbbx zzbbxVar) {
        this.f26273b = executor;
        this.f26274c = zzbbuVar;
        this.f26275d = context;
        this.f26276e = context.getPackageName();
        this.f26278g = ((double) zzwm.m11163h().nextFloat()) <= zzacp.f23966a.mo16862a().doubleValue();
        this.f26279h = zzbbxVar.f24759a;
        this.f26277f.put(C8303s.f32309d, "gmob_sdk");
        this.f26277f.put(C8310v.f32322d, "3");
        this.f26277f.put("os", Build.VERSION.RELEASE);
        this.f26277f.put("api_v", Build.VERSION.SDK);
        Map<String, String> map = this.f26277f;
        zzp.m17969c();
        map.put("device", zzayu.m16105c());
        this.f26277f.put("app", this.f26276e);
        Map<String, String> map2 = this.f26277f;
        zzp.m17969c();
        map2.put("is_lite_sdk", zzayu.m16083k(this.f26275d) ? "1" : "0");
        this.f26277f.put("e", TextUtils.join(",", zzabb.m16914b()));
        this.f26277f.put("sdkVersion", this.f26279h);
    }

    /* renamed from: a */
    public final Map<String, String> m14037a() {
        return new HashMap(this.f26277f);
    }

    /* renamed from: a */
    public final /* synthetic */ void m14036a(String str) {
        this.f26274c.mo15845a(str);
    }

    /* renamed from: a */
    public final void m14035a(Map<String, String> map) {
        final String b = m14033b(map);
        if (this.f26278g) {
            this.f26273b.execute(new Runnable(this, b) { // from class: c.d.b.d.g.a.gl

                /* renamed from: a */
                public final zzcmz f13213a;

                /* renamed from: b */
                public final String f13214b;

                {
                    this.f13213a = this;
                    this.f13214b = b;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f13213a.m14036a(this.f13214b);
                }
            });
        }
        zzayp.m16153g(b);
    }

    /* renamed from: b */
    public final String m14033b(Map<String, String> map) {
        Uri.Builder buildUpon = Uri.parse(this.f26272a).buildUpon();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
        }
        return buildUpon.build().toString();
    }

    /* renamed from: b */
    public final ConcurrentHashMap<String, String> m14034b() {
        return new ConcurrentHashMap<>(this.f26277f);
    }
}
