package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bgy.class */
public final class bgy {

    /* renamed from: b  reason: collision with root package name */
    final Context f24427b;

    /* renamed from: c  reason: collision with root package name */
    final bli f24428c;

    /* renamed from: d  reason: collision with root package name */
    final cty f24429d;
    final brs f;
    final cus g;
    private final zzb h;
    private final aeb i;
    private final Executor j;
    private final die k;
    private final zzbar l;
    private dbt<adt> m;

    /* renamed from: a  reason: collision with root package name */
    final bhh f24426a = new bhh(null);
    final hu e = new hu();

    /* JADX INFO: Access modifiers changed from: package-private */
    public bgy(bhm bhmVar) {
        this.f24427b = bhm.a(bhmVar);
        this.j = bhm.b(bhmVar);
        this.k = bhm.c(bhmVar);
        this.l = bhm.d(bhmVar);
        this.h = bhm.e(bhmVar);
        this.i = bhm.f(bhmVar);
        this.f = bhm.g(bhmVar);
        this.g = bhm.h(bhmVar);
        this.f24428c = bhm.i(bhmVar);
        this.f24429d = bhm.j(bhmVar);
    }

    public final dbt<JSONObject> a(final String str, final JSONObject jSONObject) {
        synchronized (this) {
            dbt<adt> dbtVar = this.m;
            if (dbtVar == null) {
                return dbh.a((Object) null);
            }
            return daj.a(dbtVar, new daq(this, str, jSONObject) { // from class: com.google.android.gms.internal.ads.bha

                /* renamed from: a  reason: collision with root package name */
                private final bgy f24435a;

                /* renamed from: b  reason: collision with root package name */
                private final String f24436b;

                /* renamed from: c  reason: collision with root package name */
                private final JSONObject f24437c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24435a = this;
                    this.f24436b = str;
                    this.f24437c = jSONObject;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    bgy bgyVar = this.f24435a;
                    String str2 = this.f24436b;
                    JSONObject jSONObject2 = this.f24437c;
                    return bgyVar.e.a((adt) obj, str2, jSONObject2);
                }
            }, this.j);
        }
    }

    public final void a() {
        synchronized (this) {
            final Context context = this.f24427b;
            final zzbar zzbarVar = this.l;
            final String str = (String) ekb.e().a(aq.bR);
            final die dieVar = this.k;
            final zzb zzbVar = this.h;
            dbt<adt> a2 = daj.a(daj.a(dbh.a((Object) null), new daq(context, dieVar, zzbarVar, zzbVar, str) { // from class: com.google.android.gms.internal.ads.aea

                /* renamed from: a  reason: collision with root package name */
                private final Context f23176a;

                /* renamed from: b  reason: collision with root package name */
                private final die f23177b;

                /* renamed from: c  reason: collision with root package name */
                private final zzbar f23178c;

                /* renamed from: d  reason: collision with root package name */
                private final zzb f23179d;
                private final String e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23176a = context;
                    this.f23177b = dieVar;
                    this.f23178c = zzbarVar;
                    this.f23179d = zzbVar;
                    this.e = str;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    Context context2 = this.f23176a;
                    die dieVar2 = this.f23177b;
                    zzbar zzbarVar2 = this.f23178c;
                    zzb zzbVar2 = this.f23179d;
                    String str2 = this.e;
                    zzr.zzkw();
                    adt a3 = aeb.a(context2, afh.a(), "", false, false, dieVar2, null, zzbarVar2, null, zzbVar2, new ehk(), null, null);
                    final zm a4 = zm.a(a3);
                    a3.B().a(new afd(a4) { // from class: com.google.android.gms.internal.ads.aec

                        /* renamed from: a  reason: collision with root package name */
                        private final zm f23180a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f23180a = a4;
                        }

                        @Override // com.google.android.gms.internal.ads.afd
                        public final void zzam(boolean z) {
                            this.f23180a.a();
                        }
                    });
                    a3.loadUrl(str2);
                    return a4;
                }
            }, zd.e), new cxu(this) { // from class: com.google.android.gms.internal.ads.bhb

                /* renamed from: a  reason: collision with root package name */
                private final bgy f24438a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24438a = this;
                }

                @Override // com.google.android.gms.internal.ads.cxu
                public final Object a(Object obj) {
                    bgy bgyVar = this.f24438a;
                    adt adtVar = (adt) obj;
                    adtVar.a("/result", bgyVar.e);
                    adtVar.B().a(null, bgyVar.f24426a, bgyVar.f24426a, bgyVar.f24426a, bgyVar.f24426a, false, null, new zza(bgyVar.f24427b, null, null), null, null, bgyVar.f, bgyVar.g, bgyVar.f24428c, bgyVar.f24429d);
                    return adtVar;
                }
            }, this.j);
            this.m = a2;
            zl.a(a2, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    public final void a(cov covVar, coz cozVar) {
        synchronized (this) {
            dbt<adt> dbtVar = this.m;
            if (dbtVar != null) {
                dbh.a(dbtVar, new bhi(this, covVar, cozVar), this.j);
            }
        }
    }

    public final void a(String str, hi<Object> hiVar) {
        synchronized (this) {
            dbt<adt> dbtVar = this.m;
            if (dbtVar != null) {
                dbh.a(dbtVar, new bhc(this, str, hiVar), this.j);
            }
        }
    }

    public final void a(String str, Map<String, ?> map) {
        synchronized (this) {
            dbt<adt> dbtVar = this.m;
            if (dbtVar != null) {
                dbh.a(dbtVar, new bhf(this, str, map), this.j);
            }
        }
    }

    public final <T> void a(WeakReference<T> weakReference, String str, hi<T> hiVar) {
        a(str, new bhl(this, weakReference, str, hiVar, null));
    }

    public final void b() {
        synchronized (this) {
            dbt<adt> dbtVar = this.m;
            if (dbtVar != null) {
                dbh.a(dbtVar, new bhd(this), this.j);
                this.m = null;
            }
        }
    }

    public final void b(String str, hi<Object> hiVar) {
        synchronized (this) {
            dbt<adt> dbtVar = this.m;
            if (dbtVar != null) {
                dbh.a(dbtVar, new bhg(this, str, hiVar), this.j);
            }
        }
    }
}
