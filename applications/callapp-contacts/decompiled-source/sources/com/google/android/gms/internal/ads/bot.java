package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bot.class */
public final class bot implements box {

    /* renamed from: a  reason: collision with root package name */
    final aua f24811a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, dsv<box>> f24812b;

    /* renamed from: c  reason: collision with root package name */
    private final dbs f24813c;

    public bot(Map<String, dsv<box>> map, dbs dbsVar, aua auaVar) {
        this.f24812b = map;
        this.f24813c = dbsVar;
        this.f24811a = auaVar;
    }

    @Override // com.google.android.gms.internal.ads.box
    public final dbt<cpk> a(final zzauj zzaujVar) {
        this.f24811a.a(zzaujVar);
        dbt<cpk> a2 = dbh.a((Throwable) new zzcnp(cqj.NO_FILL));
        for (String str : ((String) ekb.e().a(aq.eO)).split(",")) {
            final dsv<box> dsvVar = this.f24812b.get(str.trim());
            a2 = a2;
            if (dsvVar != null) {
                a2 = dac.a(a2, zzcnp.class, new daq(dsvVar, zzaujVar) { // from class: com.google.android.gms.internal.ads.bow

                    /* renamed from: a  reason: collision with root package name */
                    private final dsv f24817a;

                    /* renamed from: b  reason: collision with root package name */
                    private final zzauj f24818b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24817a = dsvVar;
                        this.f24818b = zzaujVar;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        dsv dsvVar2 = this.f24817a;
                        return ((box) dsvVar2.a()).a(this.f24818b);
                    }
                }, this.f24813c);
            }
        }
        dbh.a(a2, new bov(this), zd.f);
        return a2;
    }
}
