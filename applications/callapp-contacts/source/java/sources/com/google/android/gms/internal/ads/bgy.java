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

    /* renamed from: b */
    final Context f43908b;

    /* renamed from: c */
    final bli f43909c;

    /* renamed from: d */
    final cty f43910d;

    /* renamed from: f */
    final brs f43912f;

    /* renamed from: g */
    final cus f43913g;

    /* renamed from: h */
    private final zzb f43914h;

    /* renamed from: i */
    private final aeb f43915i;

    /* renamed from: j */
    private final Executor f43916j;

    /* renamed from: k */
    private final die f43917k;

    /* renamed from: l */
    private final zzbar f43918l;

    /* renamed from: m */
    private dbt<adt> f43919m;

    /* renamed from: a */
    final bhh f43907a = new bhh(null);

    /* renamed from: e */
    final C12619hu f43911e = new C12619hu();

    public bgy(bhm bhmVar) {
        Context context;
        Executor executor;
        die dieVar;
        zzbar zzbarVar;
        zzb zzbVar;
        aeb aebVar;
        brs brsVar;
        cus cusVar;
        bli bliVar;
        cty ctyVar;
        context = bhmVar.f43956c;
        this.f43908b = context;
        executor = bhmVar.f43960g;
        this.f43916j = executor;
        dieVar = bhmVar.f43961h;
        this.f43917k = dieVar;
        zzbarVar = bhmVar.f43962i;
        this.f43918l = zzbarVar;
        zzbVar = bhmVar.f43954a;
        this.f43914h = zzbVar;
        aebVar = bhmVar.f43955b;
        this.f43915i = aebVar;
        brsVar = bhmVar.f43959f;
        this.f43912f = brsVar;
        cusVar = bhmVar.f43963j;
        this.f43913g = cusVar;
        bliVar = bhmVar.f43957d;
        this.f43909c = bliVar;
        ctyVar = bhmVar.f43958e;
        this.f43910d = ctyVar;
    }

    /* renamed from: a */
    public final dbt<JSONObject> m17867a(String str, JSONObject jSONObject) {
        synchronized (this) {
            dbt<adt> dbtVar = this.f43919m;
            if (dbtVar == null) {
                return dbh.m16899a((Object) null);
            }
            return daj.m16941a(dbtVar, new daq(this, str, jSONObject) { // from class: com.google.android.gms.internal.ads.bha

                /* renamed from: a */
                private final bgy f43925a;

                /* renamed from: b */
                private final String f43926b;

                /* renamed from: c */
                private final JSONObject f43927c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43925a = this;
                    this.f43926b = str;
                    this.f43927c = jSONObject;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    bgy bgyVar = this.f43925a;
                    String str2 = this.f43926b;
                    JSONObject jSONObject2 = this.f43927c;
                    return bgyVar.f43911e.m14610a((adt) obj, str2, jSONObject2);
                }
            }, this.f43916j);
        }
    }

    /* renamed from: a */
    public final void m17871a() {
        synchronized (this) {
            Context context = this.f43908b;
            zzbar zzbarVar = this.f43918l;
            String str = (String) ekb.m14831e().m18571a(C12187aq.f42708bR);
            dbt<adt> m16942a = daj.m16942a(daj.m16941a(dbh.m16899a((Object) null), new daq(context, this.f43917k, zzbarVar, this.f43914h, str) { // from class: com.google.android.gms.internal.ads.aea

                /* renamed from: a */
                private final Context f40036a;

                /* renamed from: b */
                private final die f40037b;

                /* renamed from: c */
                private final zzbar f40038c;

                /* renamed from: d */
                private final zzb f40039d;

                /* renamed from: e */
                private final String f40040e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f40036a = context;
                    this.f40037b = dieVar;
                    this.f40038c = zzbarVar;
                    this.f40039d = zzbVar;
                    this.f40040e = str;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    Context context2 = this.f40036a;
                    die dieVar2 = this.f40037b;
                    zzbar zzbarVar2 = this.f40038c;
                    zzb zzbVar2 = this.f40039d;
                    String str2 = this.f40040e;
                    zzr.zzkw();
                    adt m18830a = aeb.m18830a(context2, afh.m18777a(), "", false, false, dieVar2, null, zzbarVar2, null, zzbVar2, new ehk(), null, null);
                    final C13100zm m13898a = C13100zm.m13898a(m18830a);
                    m18830a.mo13808B().mo18789a(new afd(m13898a) { // from class: com.google.android.gms.internal.ads.aec

                        /* renamed from: a */
                        private final C13100zm f40041a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f40041a = m13898a;
                        }

                        @Override // com.google.android.gms.internal.ads.afd
                        public final void zzam(boolean z) {
                            this.f40041a.m13899a();
                        }
                    });
                    m18830a.loadUrl(str2);
                    return m13898a;
                }
            }, C13091zd.f50122e), new cxu(this) { // from class: com.google.android.gms.internal.ads.bhb

                /* renamed from: a */
                private final bgy f43928a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f43928a = this;
                }

                @Override // com.google.android.gms.internal.ads.cxu
                /* renamed from: a */
                public final Object mo14064a(Object obj) {
                    bgy bgyVar = this.f43928a;
                    adt adtVar = (adt) obj;
                    adtVar.mo13772a("/result", bgyVar.f43911e);
                    adtVar.mo13808B().mo18787a(null, bgyVar.f43907a, bgyVar.f43907a, bgyVar.f43907a, bgyVar.f43907a, false, null, new zza(bgyVar.f43908b, null, null), null, null, bgyVar.f43912f, bgyVar.f43913g, bgyVar.f43909c, bgyVar.f43910d);
                    return adtVar;
                }
            }, this.f43916j);
            this.f43919m = m16942a;
            C13099zl.m13900a(m16942a, "NativeJavascriptExecutor.initializeEngine");
        }
    }

    /* renamed from: a */
    public final void m17870a(cov covVar, coz cozVar) {
        synchronized (this) {
            dbt<adt> dbtVar = this.f43919m;
            if (dbtVar == null) {
                return;
            }
            dbh.m16901a(dbtVar, new bhi(this, covVar, cozVar), this.f43916j);
        }
    }

    /* renamed from: a */
    public final void m17869a(String str, AbstractC12607hi<Object> abstractC12607hi) {
        synchronized (this) {
            dbt<adt> dbtVar = this.f43919m;
            if (dbtVar == null) {
                return;
            }
            dbh.m16901a(dbtVar, new bhc(this, str, abstractC12607hi), this.f43916j);
        }
    }

    /* renamed from: a */
    public final void m17868a(String str, Map<String, ?> map) {
        synchronized (this) {
            dbt<adt> dbtVar = this.f43919m;
            if (dbtVar == null) {
                return;
            }
            dbh.m16901a(dbtVar, new bhf(this, str, map), this.f43916j);
        }
    }

    /* renamed from: a */
    public final <T> void m17866a(WeakReference<T> weakReference, String str, AbstractC12607hi<T> abstractC12607hi) {
        m17869a(str, new bhl(this, weakReference, str, abstractC12607hi, null));
    }

    /* renamed from: b */
    public final void m17865b() {
        synchronized (this) {
            dbt<adt> dbtVar = this.f43919m;
            if (dbtVar == null) {
                return;
            }
            dbh.m16901a(dbtVar, new bhd(this), this.f43916j);
            this.f43919m = null;
        }
    }

    /* renamed from: b */
    public final void m17864b(String str, AbstractC12607hi<Object> abstractC12607hi) {
        synchronized (this) {
            dbt<adt> dbtVar = this.f43919m;
            if (dbtVar == null) {
                return;
            }
            dbh.m16901a(dbtVar, new bhg(this, str, abstractC12607hi), this.f43916j);
        }
    }
}
