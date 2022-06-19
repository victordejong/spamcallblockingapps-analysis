package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bot.class */
public final class bot implements box {

    /* renamed from: a */
    final aua f44400a;

    /* renamed from: b */
    private final Map<String, dsv<box>> f44401b;

    /* renamed from: c */
    private final dbs f44402c;

    public bot(Map<String, dsv<box>> map, dbs dbsVar, aua auaVar) {
        this.f44401b = map;
        this.f44402c = dbsVar;
        this.f44400a = auaVar;
    }

    @Override // com.google.android.gms.internal.ads.box
    /* renamed from: a */
    public final dbt<cpk> mo17699a(zzauj zzaujVar) {
        this.f44400a.mo17548a(zzaujVar);
        dbt<cpk> m16898a = dbh.m16898a((Throwable) new zzcnp(cqj.NO_FILL));
        String[] split = ((String) ekb.m14831e().m18571a(C12187aq.f42864eO)).split(",");
        int length = split.length;
        int i = 0;
        while (i < length) {
            dsv<box> dsvVar = this.f44401b.get(split[i].trim());
            dbt<cpk> dbtVar = m16898a;
            if (dsvVar != null) {
                dbtVar = dac.m16972a(m16898a, zzcnp.class, new daq(dsvVar, zzaujVar) { // from class: com.google.android.gms.internal.ads.bow

                    /* renamed from: a */
                    private final dsv f44406a;

                    /* renamed from: b */
                    private final zzauj f44407b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44406a = dsvVar;
                        this.f44407b = zzaujVar;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        dsv dsvVar2 = this.f44406a;
                        return ((box) dsvVar2.mo14005a()).mo17699a(this.f44407b);
                    }
                }, this.f44402c);
            }
            i++;
            m16898a = dbtVar;
        }
        dbh.m16901a(m16898a, new bov(this), C13091zd.f50123f);
        return m16898a;
    }
}
