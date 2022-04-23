package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.internal.ads.anp;
import com.google.android.gms.internal.ads.aqx;
import java.io.InputStream;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/clt.class */
public final class clt<R extends aqx<AdT>, AdT extends anp> implements cmh<R, clx<AdT>> {

    /* renamed from: a  reason: collision with root package name */
    final cqz f26048a;

    /* renamed from: b  reason: collision with root package name */
    final Executor f26049b;

    /* renamed from: c  reason: collision with root package name */
    dbi<Void> f26050c = new clu(this);

    public clt(cqz cqzVar, Executor executor) {
        this.f26048a = cqzVar;
        this.f26049b = executor;
    }

    @Override // com.google.android.gms.internal.ads.cmh
    public final dbt<clx<AdT>> a(final cmm cmmVar, final cmj<R> cmjVar) {
        dbt dbtVar;
        dbt dbtVar2;
        cmb cmbVar = new cmb(this.f26048a, cmmVar.f26072b, cmjVar, this.f26049b);
        if (cmbVar.e != null) {
            dbtVar = dbh.a(cmbVar.e);
        } else {
            if (!ct.f26362a.a().booleanValue()) {
                cmbVar.e = new cmf(null, cmbVar.a(), null);
                dbtVar2 = dbh.a(cmbVar.e);
            } else {
                final aor c2 = ((aqx) cmbVar.f26062c.a(cmbVar.f26061b).a(new clq(cmbVar.f26060a.a().zzhqs)).b()).c();
                final zzdrc a2 = cmbVar.f26060a.a();
                csu a3 = c2.f23675a.a((cti) ctj.GET_CACHE_KEY, (dbt) c2.e.b()).a((daq<I, O2>) new daq(c2, a2) { // from class: com.google.android.gms.internal.ads.aos

                    /* renamed from: a  reason: collision with root package name */
                    private final aor f23679a;

                    /* renamed from: b  reason: collision with root package name */
                    private final zzdrc f23680b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23679a = c2;
                        this.f23680b = a2;
                    }

                    @Override // com.google.android.gms.internal.ads.daq
                    public final dbt zzf(Object obj) {
                        aor aorVar = this.f23679a;
                        final zzauj zzaujVar = (zzauj) obj;
                        zzaujVar.zzdyu = this.f23680b;
                        final boz bozVar = aorVar.f23678d;
                        daq bpaVar = new daq(zzaujVar) { // from class: com.google.android.gms.internal.ads.bpa

                            /* renamed from: a  reason: collision with root package name */
                            private final zzauj f24823a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24823a = zzaujVar;
                            }

                            @Override // com.google.android.gms.internal.ads.daq
                            public final dbt zzf(Object obj2) {
                                zzauj zzaujVar2 = this.f24823a;
                                zzaujVar2.zzdyv = new String(czw.a((InputStream) obj2), cxs.f26546a);
                                return dbh.a(zzaujVar2);
                            }
                        };
                        final bon bonVar = bozVar.f24821b;
                        bonVar.getClass();
                        return bozVar.a(zzaujVar, new bpg(bonVar) { // from class: com.google.android.gms.internal.ads.bpd

                            /* renamed from: a  reason: collision with root package name */
                            private final bon f24829a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24829a = bonVar;
                            }

                            @Override // com.google.android.gms.internal.ads.bpg
                            public final dbt a(zzauj zzaujVar2) {
                                return this.f24829a.a(zzaujVar2);
                            }
                        }, new bpg(bozVar) { // from class: com.google.android.gms.internal.ads.bpc

                            /* renamed from: a  reason: collision with root package name */
                            private final boz f24828a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24828a = bozVar;
                            }

                            @Override // com.google.android.gms.internal.ads.bpg
                            public final dbt a(zzauj zzaujVar2) {
                                return this.f24828a.f24822c.a().b(zzaujVar2, Binder.getCallingUid());
                            }
                        }, bpaVar);
                    }
                }).a();
                dbh.a(a3, new aov(c2), c2.f);
                dbtVar2 = dbc.c((dbt) a3).a(new cmg(cmbVar), cmbVar.f26063d).a(zzcpo.class, new cmd(cmbVar), cmbVar.f26063d);
            }
            dbtVar = daj.a(dbtVar2, cme.f26067a, cmbVar.f26063d);
        }
        return dbc.c(dbtVar).a(new daq(this, cmmVar, cmjVar) { // from class: com.google.android.gms.internal.ads.cls

            /* renamed from: a  reason: collision with root package name */
            private final clt f26045a;

            /* renamed from: b  reason: collision with root package name */
            private final cmm f26046b;

            /* renamed from: c  reason: collision with root package name */
            private final cmj f26047c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f26045a = this;
                this.f26046b = cmmVar;
                this.f26047c = cmjVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                clt cltVar = this.f26045a;
                cmm cmmVar2 = this.f26046b;
                cmj cmjVar2 = this.f26047c;
                cmf cmfVar = (cmf) obj;
                cri criVar = cmfVar.f26069b;
                zzauj zzaujVar = cmfVar.f26068a;
                crj<?> a4 = criVar != null ? cltVar.f26048a.a(criVar) : null;
                if (criVar == null) {
                    return dbh.a((Object) null);
                }
                if (!(a4 == null || zzaujVar == null)) {
                    aor c3 = ((aqx) cmjVar2.a(cmmVar2.f26072b).b()).c();
                    cti ctiVar = c3.f23675a;
                    ctj ctjVar = ctj.NOTIFY_CACHE_HIT;
                    boz bozVar = c3.f23678d;
                    csu a5 = ctiVar.a((cti) ctjVar, dtl.b(zzaujVar.zzdyv) ? dbh.a((Throwable) new zzcnp(cqj.INVALID_REQUEST, "Pool key missing from removeUrl call.")) : bozVar.a(zzaujVar, new bpg(bozVar) { // from class: com.google.android.gms.internal.ads.bpe

                        /* renamed from: a  reason: collision with root package name */
                        private final boz f24830a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24830a = bozVar;
                        }

                        @Override // com.google.android.gms.internal.ads.bpg
                        public final dbt a(zzauj zzaujVar2) {
                            return this.f24830a.f24821b.a(zzaujVar2.zzdyv);
                        }
                    }, new bpg(bozVar) { // from class: com.google.android.gms.internal.ads.bph

                        /* renamed from: a  reason: collision with root package name */
                        private final boz f24832a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f24832a = bozVar;
                        }

                        @Override // com.google.android.gms.internal.ads.bpg
                        public final dbt a(zzauj zzaujVar2) {
                            return this.f24832a.f24822c.a().a(zzaujVar2.zzdyv);
                        }
                    }, bpf.f24831a)).a();
                    dbh.a(a5, new aou(c3), c3.f);
                    dbh.a(a5, cltVar.f26050c, cltVar.f26049b);
                }
                return dbh.a(new clx(criVar, zzaujVar, a4));
            }
        }, this.f26049b).a(Exception.class, new clv(this), this.f26049b);
    }

    @Override // com.google.android.gms.internal.ads.cmh
    public final /* bridge */ /* synthetic */ Object a() {
        return null;
    }
}
