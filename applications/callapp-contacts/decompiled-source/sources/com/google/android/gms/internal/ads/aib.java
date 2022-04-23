package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aib.class */
public final class aib extends elq {

    /* renamed from: a  reason: collision with root package name */
    final Context f23387a;

    /* renamed from: b  reason: collision with root package name */
    final bjg f23388b;

    /* renamed from: c  reason: collision with root package name */
    final bsm<cqe, bug> f23389c;

    /* renamed from: d  reason: collision with root package name */
    private final zzbar f23390d;
    private final byp e;
    private final bmi f;
    private final wo g;
    private final bji h;
    private boolean i = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aib(Context context, zzbar zzbarVar, bjg bjgVar, bsm<cqe, bug> bsmVar, byp bypVar, bmi bmiVar, wo woVar, bji bjiVar) {
        this.f23387a = context;
        this.f23390d = zzbarVar;
        this.f23388b = bjgVar;
        this.f23389c = bsmVar;
        this.e = bypVar;
        this.f = bmiVar;
        this.g = woVar;
        this.h = bjiVar;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a() {
        synchronized (this) {
            if (this.i) {
                zzd.zzez("Mobile ads is initialized already.");
                return;
            }
            aq.a(this.f23387a);
            zzr.zzkz().a(this.f23387a, this.f23390d);
            zzr.zzlb().a(this.f23387a);
            this.i = true;
            this.f.a();
            if (((Boolean) ekb.e().a(aq.aX)).booleanValue()) {
                final byp bypVar = this.e;
                zzr.zzkz().d().zzb(new Runnable(bypVar) { // from class: com.google.android.gms.internal.ads.byo

                    /* renamed from: a  reason: collision with root package name */
                    private final byp f25402a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25402a = bypVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        final byp bypVar2 = this.f25402a;
                        bypVar2.f25404b.execute(new Runnable(bypVar2) { // from class: com.google.android.gms.internal.ads.byq

                            /* renamed from: a  reason: collision with root package name */
                            private final byp f25407a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f25407a = bypVar2;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f25407a.a();
                            }
                        });
                    }
                });
                bypVar.f25404b.execute(new Runnable(bypVar) { // from class: com.google.android.gms.internal.ads.byr

                    /* renamed from: a  reason: collision with root package name */
                    private final byp f25408a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25408a = bypVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f25408a.a();
                    }
                });
            }
            if (((Boolean) ekb.e().a(aq.ce)).booleanValue()) {
                final bji bjiVar = this.h;
                zzr.zzkz().d().zzb(new Runnable(bjiVar) { // from class: com.google.android.gms.internal.ads.bjh

                    /* renamed from: a  reason: collision with root package name */
                    private final bji f24544a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24544a = bjiVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        final bji bjiVar2 = this.f24544a;
                        bjiVar2.f24547c.execute(new Runnable(bjiVar2) { // from class: com.google.android.gms.internal.ads.bjj

                            /* renamed from: a  reason: collision with root package name */
                            private final bji f24549a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f24549a = bjiVar2;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f24549a.a();
                            }
                        });
                    }
                });
                bjiVar.f24547c.execute(new Runnable(bjiVar) { // from class: com.google.android.gms.internal.ads.bjk

                    /* renamed from: a  reason: collision with root package name */
                    private final bji f24550a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f24550a = bjiVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f24550a.a();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(float f) {
        synchronized (this) {
            zzr.zzla().setAppVolume(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(b bVar, String str) {
        if (bVar == null) {
            zzd.zzex("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) d.a(bVar);
        if (context == null) {
            zzd.zzex("Context is null. Failed to open debug menu.");
            return;
        }
        zzad zzadVar = new zzad(context);
        zzadVar.setAdUnitId(str);
        zzadVar.zzu(this.f23390d.zzbrz);
        zzadVar.showDialog();
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(final it itVar) throws RemoteException {
        final bmi bmiVar = this.f;
        bmiVar.f24700d.addListener(new Runnable(bmiVar, itVar) { // from class: com.google.android.gms.internal.ads.bml

            /* renamed from: a  reason: collision with root package name */
            private final bmi f24704a;

            /* renamed from: b  reason: collision with root package name */
            private final it f24705b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24704a = bmiVar;
                this.f24705b = itVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                bmi bmiVar2 = this.f24704a;
                try {
                    this.f24705b.a(bmiVar2.b());
                } catch (RemoteException e) {
                    za.zzc("", e);
                }
            }
        }, bmiVar.i);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(mm mmVar) throws RemoteException {
        this.f23388b.a(mmVar);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(zzaat zzaatVar) throws RemoteException {
        wo woVar = this.g;
        Context context = this.f23387a;
        xe.a(context).b().f28468a.a(-1);
        if (((Boolean) ekb.e().a(aq.af)).booleanValue() && woVar.a(context) && wo.b(context)) {
            synchronized (woVar.f28484c) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(String str) {
        synchronized (this) {
            aq.a(this.f23387a);
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) ekb.e().a(aq.cd)).booleanValue()) {
                    zzr.zzld().zza(this.f23387a, this.f23390d, str, (Runnable) null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(String str, b bVar) {
        String str2;
        aq.a(this.f23387a);
        if (((Boolean) ekb.e().a(aq.cg)).booleanValue()) {
            zzr.zzkv();
            str2 = zzj.zzbb(this.f23387a);
        } else {
            str2 = "";
        }
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (!TextUtils.isEmpty(str)) {
            boolean booleanValue = ((Boolean) ekb.e().a(aq.cd)).booleanValue() | ((Boolean) ekb.e().a(aq.ay)).booleanValue();
            Runnable runnable = null;
            if (((Boolean) ekb.e().a(aq.ay)).booleanValue()) {
                booleanValue = true;
                final Runnable runnable2 = (Runnable) d.a(bVar);
                runnable = new Runnable(this, runnable2) { // from class: com.google.android.gms.internal.ads.aia

                    /* renamed from: a  reason: collision with root package name */
                    private final aib f23385a;

                    /* renamed from: b  reason: collision with root package name */
                    private final Runnable f23386b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f23385a = this;
                        this.f23386b = runnable2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        final aib aibVar = this.f23385a;
                        final Runnable runnable3 = this.f23386b;
                        zd.e.execute(new Runnable(aibVar, runnable3) { // from class: com.google.android.gms.internal.ads.aid

                            /* renamed from: a  reason: collision with root package name */
                            private final aib f23395a;

                            /* renamed from: b  reason: collision with root package name */
                            private final Runnable f23396b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f23395a = aibVar;
                                this.f23396b = runnable3;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                aib aibVar2 = this.f23395a;
                                Runnable runnable4 = this.f23396b;
                                o.b("Adapters must be initialized on the main thread.");
                                Map<String, mh> map = zzr.zzkz().d().zzzg().f28530a;
                                if (!(map == null || map.isEmpty())) {
                                    if (runnable4 != null) {
                                        try {
                                            runnable4.run();
                                        } catch (Throwable th) {
                                            zzd.zzd("Could not initialize rewarded ads.", th);
                                            return;
                                        }
                                    }
                                    if (aibVar2.f23388b.f24543b.get() != null) {
                                        HashMap hashMap = new HashMap();
                                        for (mh mhVar : map.values()) {
                                            for (mi miVar : mhVar.f28197a) {
                                                String str3 = miVar.f28202b;
                                                for (String str4 : miVar.f28201a) {
                                                    if (!hashMap.containsKey(str4)) {
                                                        hashMap.put(str4, new ArrayList());
                                                    }
                                                    if (str3 != null) {
                                                        ((Collection) hashMap.get(str4)).add(str3);
                                                    }
                                                }
                                            }
                                        }
                                        JSONObject jSONObject = new JSONObject();
                                        for (Map.Entry entry : hashMap.entrySet()) {
                                            String str5 = (String) entry.getKey();
                                            try {
                                                bsn<cqe, bug> a2 = aibVar2.f23389c.a(str5, jSONObject);
                                                if (a2 != null) {
                                                    cqe cqeVar = a2.f25013b;
                                                    if (!cqeVar.c() && cqeVar.f()) {
                                                        cqeVar.f26255a.a(d.a(aibVar2.f23387a), a2.f25014c, (List) entry.getValue());
                                                        String valueOf = String.valueOf(str5);
                                                        zzd.zzdz(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                                                    }
                                                }
                                            } catch (zzdpq e) {
                                                StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 56);
                                                sb.append("Failed to initialize rewarded video mediation adapter \"");
                                                sb.append(str5);
                                                sb.append("\"");
                                                zzd.zzd(sb.toString(), e);
                                            }
                                        }
                                    }
                                }
                            }
                        });
                    }
                };
            }
            if (booleanValue) {
                zzr.zzld().zza(this.f23387a, this.f23390d, str, runnable);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(boolean z) {
        synchronized (this) {
            zzr.zzla().setAppMuted(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final float b() {
        float zzrg;
        synchronized (this) {
            zzrg = zzr.zzla().zzrg();
        }
        return zzrg;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void b(String str) {
        this.e.a(str);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final boolean c() {
        boolean zzrh;
        synchronized (this) {
            zzrh = zzr.zzla().zzrh();
        }
        return zzrh;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final String d() {
        return this.f23390d.zzbrz;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final List<zzajm> e() throws RemoteException {
        return this.f.b();
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void f() {
        this.f.m = false;
    }
}
