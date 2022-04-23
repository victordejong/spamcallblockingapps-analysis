package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.l;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bpk.class */
public final class bpk extends sm {

    /* renamed from: a  reason: collision with root package name */
    final ti f24835a;

    /* renamed from: b  reason: collision with root package name */
    final HashMap<String, bpv> f24836b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f24837c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f24838d;
    private final th e;
    private final ait f;

    public bpk(Context context, Executor executor, th thVar, ait aitVar, ti tiVar, HashMap<String, bpv> hashMap) {
        aq.a(context);
        this.f24837c = context;
        this.f24838d = executor;
        this.e = thVar;
        this.f24835a = tiVar;
        this.f = aitVar;
        this.f24836b = hashMap;
    }

    private static dbt<ta> a(dbt<JSONObject> dbtVar, cti ctiVar, ln lnVar) {
        return ctiVar.a((cti) ctj.BUILD_URL, (dbt) dbtVar).a((daq<I, O2>) lnVar.a("AFMA_getAdDictionary", lm.f28155a, bpq.f24847a)).a();
    }

    private static dbt<JSONObject> a(zzauj zzaujVar, cti ctiVar, final cht chtVar) {
        daq bpoVar = new daq(chtVar) { // from class: com.google.android.gms.internal.ads.bpo

            /* renamed from: a  reason: collision with root package name */
            private final cht f24845a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24845a = chtVar;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f24845a.a().a(zzr.zzkv().zzc((Bundle) obj));
            }
        };
        return ctiVar.a((cti) ctj.GMS_SIGNALS, dbh.a(zzaujVar.zzdys)).a((daq<I, O2>) bpoVar).a(bpn.f24844a).a();
    }

    private final void a(dbt<InputStream> dbtVar, sr srVar) {
        dbh.a(daj.a(dbtVar, new daq(this) { // from class: com.google.android.gms.internal.ads.bpu

            /* renamed from: a  reason: collision with root package name */
            private final bpk f24852a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24852a = this;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                final InputStream inputStream = (InputStream) obj;
                ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
                ParcelFileDescriptor parcelFileDescriptor = createPipe[0];
                final ParcelFileDescriptor parcelFileDescriptor2 = createPipe[1];
                zd.f28573a.execute(new Runnable(inputStream, parcelFileDescriptor2) { // from class: com.google.android.gms.internal.ads.cqf

                    /* renamed from: a  reason: collision with root package name */
                    private final InputStream f26256a;

                    /* renamed from: b  reason: collision with root package name */
                    private final ParcelFileDescriptor f26257b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f26256a = inputStream;
                        this.f26257b = parcelFileDescriptor2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        InputStream inputStream2 = this.f26256a;
                        try {
                            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(this.f26257b);
                            l.a(inputStream2, autoCloseOutputStream, false);
                            autoCloseOutputStream.close();
                            if (inputStream2 != null) {
                                inputStream2.close();
                            }
                        } catch (IOException e) {
                        }
                    }
                });
                return dbh.a(parcelFileDescriptor);
            }
        }, zd.f28573a), new bpw(this, srVar), zd.f);
    }

    public final dbt<InputStream> a(zzauj zzaujVar, int i) {
        bpv bpvVar;
        ln a2 = zzr.zzli().a(this.f24837c, zzbar.zzaau());
        cht a3 = this.f.a(zzaujVar, i);
        lg a4 = a2.a("google.afma.response.normalize", bpy.f24856d, lm.f28156b);
        bpz bpzVar = new bpz(this.f24837c, zzaujVar.zzdvi.zzbrz, this.e, zzaujVar.zzdwh, i);
        cti c2 = a3.c();
        if (!ct.f26362a.a().booleanValue()) {
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
                    bpv remove = this.f24836b.remove(zzaujVar.zzdyv);
                    bpvVar = remove;
                    if (remove == null) {
                        zzd.zzed("Request contained a PoolKey but no matching parameters were found.");
                        bpvVar = remove;
                    }
                }
            }
        }
        if (bpvVar == null) {
            final dbt<JSONObject> a5 = a(zzaujVar, c2, a3);
            final dbt<ta> a6 = a(a5, c2, a2);
            final csu a7 = c2.a((cti) ctj.HTTP, a6, a5).a(new Callable(a5, a6) { // from class: com.google.android.gms.internal.ads.bpj

                /* renamed from: a  reason: collision with root package name */
                private final dbt f24833a;

                /* renamed from: b  reason: collision with root package name */
                private final dbt f24834b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24833a = a5;
                    this.f24834b = a6;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new bqc((JSONObject) this.f24833a.get(), (ta) this.f24834b.get());
                }
            }).a((css) bpzVar).a();
            return c2.a((cti) ctj.PRE_PROCESS, a5, a6, a7).a(new Callable(a7, a5, a6) { // from class: com.google.android.gms.internal.ads.bpm

                /* renamed from: a  reason: collision with root package name */
                private final dbt f24841a;

                /* renamed from: b  reason: collision with root package name */
                private final dbt f24842b;

                /* renamed from: c  reason: collision with root package name */
                private final dbt f24843c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24841a = a7;
                    this.f24842b = a5;
                    this.f24843c = a6;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new bpy((bqb) this.f24841a.get(), (JSONObject) this.f24842b.get(), (ta) this.f24843c.get());
                }
            }).a((daq) a4).a();
        }
        final csu a8 = c2.a((cti) ctj.HTTP, dbh.a(new bqc(bpvVar.f24854b, bpvVar.f24853a))).a((css<I, O2>) bpzVar).a();
        final dbt<?> a9 = dbh.a(bpvVar);
        return c2.a((cti) ctj.PRE_PROCESS, a8, a9).a(new Callable(a8, a9) { // from class: com.google.android.gms.internal.ads.bpl

            /* renamed from: a  reason: collision with root package name */
            private final dbt f24839a;

            /* renamed from: b  reason: collision with root package name */
            private final dbt f24840b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24839a = a8;
                this.f24840b = a9;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                dbt dbtVar = this.f24839a;
                dbt dbtVar2 = this.f24840b;
                return new bpy((bqb) dbtVar.get(), ((bpv) dbtVar2.get()).f24854b, ((bpv) dbtVar2.get()).f24853a);
            }
        }).a((daq) a4).a();
    }

    public final dbt<InputStream> a(String str) {
        if (!ct.f26362a.a().booleanValue()) {
            return dbh.a((Throwable) new Exception("Split request is disabled."));
        }
        bpt bptVar = new bpt(this);
        if (this.f24836b.remove(str) != null) {
            return dbh.a(bptVar);
        }
        String valueOf = String.valueOf(str);
        return dbh.a((Throwable) new Exception(valueOf.length() != 0 ? "URL to be removed not found for cache key: ".concat(valueOf) : new String("URL to be removed not found for cache key: ")));
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final zzats a(zzatq zzatqVar) throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void a(zzatq zzatqVar, sp spVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void a(zzauj zzaujVar, sr srVar) {
        dbt<InputStream> a2 = a(zzaujVar, Binder.getCallingUid());
        a(a2, srVar);
        a2.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bpp

            /* renamed from: a  reason: collision with root package name */
            private final bpk f24846a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24846a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zl.a(this.f24846a.f24835a.a(), "persistFlags");
            }
        }, this.f24838d);
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void a(String str, sr srVar) {
        a(a(str), srVar);
    }

    public final dbt<InputStream> b(zzauj zzaujVar, int i) {
        if (!ct.f26362a.a().booleanValue()) {
            return dbh.a((Throwable) new Exception("Split request is disabled."));
        }
        if (zzaujVar.zzdyu == null) {
            return dbh.a((Throwable) new Exception("Pool configuration missing from request."));
        }
        if (zzaujVar.zzdyu.zzhqp == 0 || zzaujVar.zzdyu.zzhqq == 0) {
            return dbh.a((Throwable) new Exception("Caching is disabled."));
        }
        ln a2 = zzr.zzli().a(this.f24837c, zzbar.zzaau());
        cht a3 = this.f.a(zzaujVar, i);
        cti c2 = a3.c();
        final dbt<JSONObject> a4 = a(zzaujVar, c2, a3);
        final dbt<ta> a5 = a(a4, c2, a2);
        return c2.a((cti) ctj.GET_URL_AND_CACHE_KEY, a4, a5).a(new Callable(this, a5, a4) { // from class: com.google.android.gms.internal.ads.bps

            /* renamed from: a  reason: collision with root package name */
            private final bpk f24849a;

            /* renamed from: b  reason: collision with root package name */
            private final dbt f24850b;

            /* renamed from: c  reason: collision with root package name */
            private final dbt f24851c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24849a = this;
                this.f24850b = a5;
                this.f24851c = a4;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                bpk bpkVar = this.f24849a;
                dbt dbtVar = this.f24850b;
                dbt dbtVar2 = this.f24851c;
                String str = ((ta) dbtVar.get()).i;
                bpkVar.f24836b.put(str, new bpv((ta) dbtVar.get(), (JSONObject) dbtVar2.get()));
                return new ByteArrayInputStream(str.getBytes(cxs.f26546a));
            }
        }).a();
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void b(zzauj zzaujVar, sr srVar) {
        a(c(zzaujVar, Binder.getCallingUid()), srVar);
    }

    public final dbt<InputStream> c(zzauj zzaujVar, int i) {
        ln a2 = zzr.zzli().a(this.f24837c, zzbar.zzaau());
        if (!cz.f26585a.a().booleanValue()) {
            return dbh.a((Throwable) new Exception("Signal collection disabled."));
        }
        cht a3 = this.f.a(zzaujVar, i);
        final cha<JSONObject> b2 = a3.b();
        return a3.c().a((cti) ctj.GET_SIGNALS, dbh.a(zzaujVar.zzdys)).a((daq<I, O2>) new daq(b2) { // from class: com.google.android.gms.internal.ads.bpr

            /* renamed from: a  reason: collision with root package name */
            private final cha f24848a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24848a = b2;
            }

            @Override // com.google.android.gms.internal.ads.daq
            public final dbt zzf(Object obj) {
                return this.f24848a.a(zzr.zzkv().zzc((Bundle) obj));
            }
        }).a((csz) ctj.JS_SIGNALS).a((daq) a2.a("google.afma.request.getSignals", lm.f28155a, lm.f28156b)).a();
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void c(zzauj zzaujVar, sr srVar) {
        a(b(zzaujVar, Binder.getCallingUid()), srVar);
    }
}
