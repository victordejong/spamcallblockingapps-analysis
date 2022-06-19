package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.dynamic.BinderC2734b;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bzh.class */
public final class bzh implements cah<bze> {

    /* renamed from: a */
    private final crs f12531a;

    /* renamed from: b */
    private final ScheduledExecutorService f12532b;

    /* renamed from: c */
    private final bsn f12533c;

    /* renamed from: d */
    private final Context f12534d;

    /* renamed from: e */
    private final chh f12535e;

    /* renamed from: f */
    private final bsl f12536f;

    /* renamed from: g */
    private String f12537g;

    public bzh(crs crsVar, ScheduledExecutorService scheduledExecutorService, String str, bsn bsnVar, Context context, chh chhVar, bsl bslVar) {
        this.f12531a = crsVar;
        this.f12532b = scheduledExecutorService;
        this.f12537g = str;
        this.f12533c = bsnVar;
        this.f12534d = context;
        this.f12535e = chhVar;
        this.f12536f = bslVar;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bze> mo11479a() {
        return ((Boolean) dyx.m8158e().m7876a(edi.f16350aI)).booleanValue() ? crg.m10785a(new cqr(this) { // from class: com.google.android.gms.internal.ads.bzg

            /* renamed from: a */
            private final bzh f12530a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12530a = this;
            }

            @Override // com.google.android.gms.internal.ads.cqr
            /* renamed from: a */
            public final crt mo10802a() {
                return this.f12530a.m11537b();
            }
        }, this.f12531a) : crg.m10778a((Object) null);
    }

    /* renamed from: a */
    public final /* synthetic */ crt m11538a(String str, List list, Bundle bundle) {
        C3658yo c3658yo = new C3658yo();
        this.f12536f.m11675a(str);
        AbstractC3333mn m11674b = this.f12536f.m11674b(str);
        if (m11674b == null) {
            throw new NullPointerException();
        }
        m11674b.mo7455a(BinderC2734b.m13794a(this.f12534d), this.f12537g, bundle, (Bundle) list.get(0), this.f12535e.f13041e, new bsu(str, m11674b, c3658yo));
        return c3658yo;
    }

    /* renamed from: b */
    public final /* synthetic */ crt m11537b() {
        Map<String, List<Bundle>> m11671a = this.f12533c.m11671a(this.f12537g, this.f12535e.f13042f);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, List<Bundle>> entry : m11671a.entrySet()) {
            String key = entry.getKey();
            arrayList.add(crb.m10789c(crg.m10785a(new cqr(this, key, entry.getValue(), this.f12535e.f13040d.f16079m != null ? this.f12535e.f13040d.f16079m.getBundle(key) : null) { // from class: com.google.android.gms.internal.ads.bzj

                /* renamed from: a */
                private final bzh f12539a;

                /* renamed from: b */
                private final String f12540b;

                /* renamed from: c */
                private final List f12541c;

                /* renamed from: d */
                private final Bundle f12542d;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12539a = this;
                    this.f12540b = key;
                    this.f12541c = value;
                    this.f12542d = bundle;
                }

                @Override // com.google.android.gms.internal.ads.cqr
                /* renamed from: a */
                public final crt mo10802a() {
                    return this.f12539a.m11538a(this.f12540b, this.f12541c, this.f12542d);
                }
            }, this.f12531a)).m10793a(((Long) dyx.m8158e().m7876a(edi.f16349aH)).longValue(), TimeUnit.MILLISECONDS, this.f12532b).m10790a(Throwable.class, new coe(key) { // from class: com.google.android.gms.internal.ads.bzi

                /* renamed from: a */
                private final String f12538a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12538a = key;
                }

                @Override // com.google.android.gms.internal.ads.coe
                /* renamed from: a */
                public final Object mo7184a(Object obj) {
                    Throwable th = (Throwable) obj;
                    String valueOf = String.valueOf(this.f12538a);
                    C3556uu.m6749c(valueOf.length() != 0 ? "Error calling adapter: ".concat(valueOf) : new String("Error calling adapter: "));
                    return null;
                }
            }, this.f12531a));
        }
        return crg.m10771c(arrayList).m10770a(new Callable(arrayList) { // from class: com.google.android.gms.internal.ads.bzl

            /* renamed from: a */
            private final List f12550a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12550a = arrayList;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                List<crt> list = this.f12550a;
                JSONArray jSONArray = new JSONArray();
                for (crt crtVar : list) {
                    if (((JSONObject) crtVar.get()) != null) {
                        jSONArray.put(crtVar.get());
                    }
                }
                return jSONArray.length() == 0 ? null : new bze(jSONArray.toString());
            }
        }, this.f12531a);
    }
}
