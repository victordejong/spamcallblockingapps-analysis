package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.C12108l;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bpk.class */
public final class bpk extends AbstractBinderC12909sm {

    /* renamed from: a */
    final AbstractC12932ti f44424a;

    /* renamed from: b */
    final HashMap<String, bpv> f44425b;

    /* renamed from: c */
    private final Context f44426c;

    /* renamed from: d */
    private final Executor f44427d;

    /* renamed from: e */
    private final AbstractC12931th f44428e;

    /* renamed from: f */
    private final ait f44429f;

    public bpk(Context context, Executor executor, AbstractC12931th abstractC12931th, ait aitVar, AbstractC12932ti abstractC12932ti, HashMap<String, bpv> hashMap) {
        C12187aq.m18474a(context);
        this.f44426c = context;
        this.f44427d = executor;
        this.f44428e = abstractC12931th;
        this.f44424a = abstractC12932ti;
        this.f44429f = aitVar;
        this.f44425b = hashMap;
    }

    /* renamed from: a */
    private static dbt<C12924ta> m17696a(dbt<JSONObject> dbtVar, cti ctiVar, C12720ln c12720ln) {
        return ctiVar.m17259a((cti) ctj.BUILD_URL, (dbt) dbtVar).m17248a((daq<I, O2>) c12720ln.m14525a("AFMA_getAdDictionary", C12719lm.f49472a, bpq.f44438a)).m17251a();
    }

    /* renamed from: a */
    private static dbt<JSONObject> m17693a(zzauj zzaujVar, cti ctiVar, cht chtVar) {
        daq daqVar = new daq(chtVar) { // from class: com.google.android.gms.internal.ads.bpo

            /* renamed from: a */
            private final cht f44436a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44436a = chtVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f44436a.mo17454a().m17461a(zzr.zzkv().zzc((Bundle) obj));
            }
        };
        return ctiVar.m17259a((cti) ctj.GMS_SIGNALS, dbh.m16899a(zzaujVar.zzdys)).m17248a((daq<I, O2>) daqVar).m17249a(bpn.f44435a).m17251a();
    }

    /* renamed from: a */
    private final void m17695a(dbt<InputStream> dbtVar, AbstractC12914sr abstractC12914sr) {
        dbh.m16901a(daj.m16941a(dbtVar, new daq(this) { // from class: com.google.android.gms.internal.ads.bpu

            /* renamed from: a */
            private final bpk f44443a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44443a = this;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final InputStream inputStream = (InputStream) obj;
                ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
                final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
                C13091zd.f50118a.execute(new Runnable(inputStream, parcelFileDescriptor2) { // from class: com.google.android.gms.internal.ads.cqf

                    /* renamed from: a */
                    private final InputStream f46378a;

                    /* renamed from: b */
                    private final ParcelFileDescriptor f46379b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f46378a = inputStream;
                        this.f46379b = parcelFileDescriptor2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        InputStream inputStream2 = this.f46378a;
                        try {
                            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f46379b);
                            C12108l.m19023a(inputStream2, autoCloseOutputStream, false);
                            autoCloseOutputStream.close();
                            if (inputStream2 == null) {
                                return;
                            }
                            inputStream2.close();
                        } catch (IOException e) {
                        }
                    }
                });
                return dbh.m16899a(parcelFileDescriptor);
            }
        }, C13091zd.f50118a), new bpw(this, abstractC12914sr), C13091zd.f50123f);
    }

    /* renamed from: a */
    public final dbt<InputStream> m17694a(zzauj zzaujVar, int i) {
        bpv bpvVar;
        C12720ln m14528a = zzr.zzli().m14528a(this.f44426c, zzbar.zzaau());
        cht mo18650a = this.f44429f.mo18650a(zzaujVar, i);
        AbstractC12713lg m14525a = m14528a.m14525a("google.afma.response.normalize", bpy.f44447d, C12719lm.f49473b);
        bpz bpzVar = new bpz(this.f44426c, zzaujVar.zzdvi.zzbrz, this.f44428e, zzaujVar.zzdwh, i);
        cti mo17452c = mo18650a.mo17452c();
        if (!C12285ct.f46508a.mo17481a().booleanValue()) {
            bpvVar = null;
            if (zzaujVar.zzdyv != null) {
                bpvVar = null;
                if (!zzaujVar.zzdyv.isEmpty()) {
                    zzd.zzed("Request contained a PoolKey but split request is disabled.");
                    bpvVar = null;
                }
            }
        } else {
            bpvVar = null;
            if (zzaujVar.zzdyv != null) {
                bpvVar = null;
                if (!zzaujVar.zzdyv.isEmpty()) {
                    bpv remove = this.f44425b.remove(zzaujVar.zzdyv);
                    bpvVar = remove;
                    if (remove == null) {
                        zzd.zzed("Request contained a PoolKey but no matching parameters were found.");
                        bpvVar = remove;
                    }
                }
            }
        }
        if (bpvVar != null) {
            csu m17251a = mo17452c.m17259a((cti) ctj.HTTP, dbh.m16899a(new bqc(bpvVar.f44445b, bpvVar.f44444a))).m17249a((css<I, O2>) bpzVar).m17251a();
            dbt<?> m16899a = dbh.m16899a(bpvVar);
            return mo17452c.m17258a((cti) ctj.PRE_PROCESS, m17251a, m16899a).m17255a(new Callable(m17251a, m16899a) { // from class: com.google.android.gms.internal.ads.bpl

                /* renamed from: a */
                private final dbt f44430a;

                /* renamed from: b */
                private final dbt f44431b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44430a = m17251a;
                    this.f44431b = m16899a;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    dbt dbtVar = this.f44430a;
                    dbt dbtVar2 = this.f44431b;
                    return new bpy((bqb) dbtVar.get(), ((bpv) dbtVar2.get()).f44445b, ((bpv) dbtVar2.get()).f44444a);
                }
            }).m17248a((daq) m14525a).m17251a();
        }
        dbt<JSONObject> m17693a = m17693a(zzaujVar, mo17452c, mo18650a);
        dbt<C12924ta> m17696a = m17696a(m17693a, mo17452c, m14528a);
        csu m17251a2 = mo17452c.m17258a((cti) ctj.HTTP, m17696a, m17693a).m17255a(new Callable(m17693a, m17696a) { // from class: com.google.android.gms.internal.ads.bpj

            /* renamed from: a */
            private final dbt f44422a;

            /* renamed from: b */
            private final dbt f44423b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44422a = m17693a;
                this.f44423b = m17696a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new bqc((JSONObject) this.f44422a.get(), (C12924ta) this.f44423b.get());
            }
        }).m17249a((css) bpzVar).m17251a();
        return mo17452c.m17258a((cti) ctj.PRE_PROCESS, m17693a, m17696a, m17251a2).m17255a(new Callable(m17251a2, m17693a, m17696a) { // from class: com.google.android.gms.internal.ads.bpm

            /* renamed from: a */
            private final dbt f44432a;

            /* renamed from: b */
            private final dbt f44433b;

            /* renamed from: c */
            private final dbt f44434c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44432a = m17251a2;
                this.f44433b = m17693a;
                this.f44434c = m17696a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new bpy((bqb) this.f44432a.get(), (JSONObject) this.f44433b.get(), (C12924ta) this.f44434c.get());
            }
        }).m17248a((daq) m14525a).m17251a();
    }

    /* renamed from: a */
    public final dbt<InputStream> m17692a(String str) {
        if (!C12285ct.f46508a.mo17481a().booleanValue()) {
            return dbh.m16898a((Throwable) new Exception("Split request is disabled."));
        }
        bpt bptVar = new bpt(this);
        if (this.f44425b.remove(str) != null) {
            return dbh.m16899a(bptVar);
        }
        String valueOf = String.valueOf(str);
        return dbh.m16898a((Throwable) new Exception(valueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(valueOf) : new String("URL to be removed not found for cache key: ")));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: a */
    public final zzats mo14194a(zzatq zzatqVar) throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: a */
    public final void mo14193a(zzatq zzatqVar, AbstractC12912sp abstractC12912sp) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: a */
    public final void mo14192a(zzauj zzaujVar, AbstractC12914sr abstractC12914sr) {
        dbt<InputStream> m17694a = m17694a(zzaujVar, Binder.getCallingUid());
        m17695a(m17694a, abstractC12914sr);
        m17694a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bpp

            /* renamed from: a */
            private final bpk f44437a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44437a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C13099zl.m13900a(this.f44437a.f44424a.mo14176a(), "persistFlags");
            }
        }, this.f44427d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: a */
    public final void mo14191a(String str, AbstractC12914sr abstractC12914sr) {
        m17695a(m17692a(str), abstractC12914sr);
    }

    /* renamed from: b */
    public final dbt<InputStream> m17691b(zzauj zzaujVar, int i) {
        if (!C12285ct.f46508a.mo17481a().booleanValue()) {
            return dbh.m16898a((Throwable) new Exception("Split request is disabled."));
        }
        if (zzaujVar.zzdyu == null) {
            return dbh.m16898a((Throwable) new Exception("Pool configuration missing from request."));
        }
        if (zzaujVar.zzdyu.zzhqp == 0 || zzaujVar.zzdyu.zzhqq == 0) {
            return dbh.m16898a((Throwable) new Exception("Caching is disabled."));
        }
        C12720ln m14528a = zzr.zzli().m14528a(this.f44426c, zzbar.zzaau());
        cht mo18650a = this.f44429f.mo18650a(zzaujVar, i);
        cti mo17452c = mo18650a.mo17452c();
        dbt<JSONObject> m17693a = m17693a(zzaujVar, mo17452c, mo18650a);
        dbt<C12924ta> m17696a = m17696a(m17693a, mo17452c, m14528a);
        return mo17452c.m17258a((cti) ctj.GET_URL_AND_CACHE_KEY, m17693a, m17696a).m17255a(new Callable(this, m17696a, m17693a) { // from class: com.google.android.gms.internal.ads.bps

            /* renamed from: a */
            private final bpk f44440a;

            /* renamed from: b */
            private final dbt f44441b;

            /* renamed from: c */
            private final dbt f44442c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44440a = this;
                this.f44441b = m17696a;
                this.f44442c = m17693a;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                bpk bpkVar = this.f44440a;
                dbt dbtVar = this.f44441b;
                dbt dbtVar2 = this.f44442c;
                String str = ((C12924ta) dbtVar.get()).f49830i;
                bpkVar.f44425b.put(str, new bpv((C12924ta) dbtVar.get(), (JSONObject) dbtVar2.get()));
                return new ByteArrayInputStream(str.getBytes(cxs.f46738a));
            }
        }).m17251a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: b */
    public final void mo14190b(zzauj zzaujVar, AbstractC12914sr abstractC12914sr) {
        m17695a(m17690c(zzaujVar, Binder.getCallingUid()), abstractC12914sr);
    }

    /* renamed from: c */
    public final dbt<InputStream> m17690c(zzauj zzaujVar, int i) {
        C12720ln m14528a = zzr.zzli().m14528a(this.f44426c, zzbar.zzaau());
        if (!C12296cz.f46780a.mo17481a().booleanValue()) {
            return dbh.m16898a((Throwable) new Exception("Signal collection disabled."));
        }
        cht mo18650a = this.f44429f.mo18650a(zzaujVar, i);
        cha<JSONObject> mo17453b = mo18650a.mo17453b();
        return mo18650a.mo17452c().m17259a((cti) ctj.GET_SIGNALS, dbh.m16899a(zzaujVar.zzdys)).m17248a((daq<I, O2>) new daq(mo17453b) { // from class: com.google.android.gms.internal.ads.bpr

            /* renamed from: a */
            private final cha f44439a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44439a = mo17453b;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f44439a.m17461a(zzr.zzkv().zzc((Bundle) obj));
            }
        }).m17244a((csz) ctj.JS_SIGNALS).m17248a((daq) m14528a.m14525a("google.afma.request.getSignals", C12719lm.f49472a, C12719lm.f49473b)).m17251a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: c */
    public final void mo14189c(zzauj zzaujVar, AbstractC12914sr abstractC12914sr) {
        m17695a(m17691b(zzaujVar, Binder.getCallingUid()), abstractC12914sr);
    }
}
