package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aib.class */
public final class aib extends elq {

    /* renamed from: a */
    final Context f42164a;

    /* renamed from: b */
    final bjg f42165b;

    /* renamed from: c */
    final bsm<cqe, bug> f42166c;

    /* renamed from: d */
    private final zzbar f42167d;

    /* renamed from: e */
    private final byp f42168e;

    /* renamed from: f */
    private final bmi f42169f;

    /* renamed from: g */
    private final C13019wo f42170g;

    /* renamed from: h */
    private final bji f42171h;

    /* renamed from: i */
    private boolean f42172i = false;

    public aib(Context context, zzbar zzbarVar, bjg bjgVar, bsm<cqe, bug> bsmVar, byp bypVar, bmi bmiVar, C13019wo c13019wo, bji bjiVar) {
        this.f42164a = context;
        this.f42167d = zzbarVar;
        this.f42165b = bjgVar;
        this.f42166c = bsmVar;
        this.f42168e = bypVar;
        this.f42169f = bmiVar;
        this.f42170g = c13019wo;
        this.f42171h = bjiVar;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14548a() {
        synchronized (this) {
            if (this.f42172i) {
                zzd.zzez("Mobile ads is initialized already.");
                return;
            }
            C12187aq.m18474a(this.f42164a);
            zzr.zzkz().m13981a(this.f42164a, this.f42167d);
            zzr.zzlb().m15065a(this.f42164a);
            this.f42172i = true;
            this.f42169f.m17736a();
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42661aX)).booleanValue()) {
                byp bypVar = this.f42168e;
                zzr.zzkz().m13975d().zzb(new Runnable(bypVar) { // from class: com.google.android.gms.internal.ads.byo

                    /* renamed from: a */
                    private final byp f45100a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45100a = bypVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        final byp bypVar2 = this.f45100a;
                        bypVar2.f45102b.execute(new Runnable(bypVar2) { // from class: com.google.android.gms.internal.ads.byq

                            /* renamed from: a */
                            private final byp f45105a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f45105a = bypVar2;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f45105a.m17563a();
                            }
                        });
                    }
                });
                bypVar.f45102b.execute(new Runnable(bypVar) { // from class: com.google.android.gms.internal.ads.byr

                    /* renamed from: a */
                    private final byp f45106a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f45106a = bypVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f45106a.m17563a();
                    }
                });
            }
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42774ce)).booleanValue()) {
                bji bjiVar = this.f42171h;
                zzr.zzkz().m13975d().zzb(new Runnable(bjiVar) { // from class: com.google.android.gms.internal.ads.bjh

                    /* renamed from: a */
                    private final bji f44094a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44094a = bjiVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        final bji bjiVar2 = this.f44094a;
                        bjiVar2.f44097c.execute(new Runnable(bjiVar2) { // from class: com.google.android.gms.internal.ads.bjj

                            /* renamed from: a */
                            private final bji f44100a;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f44100a = bjiVar2;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f44100a.m17808a();
                            }
                        });
                    }
                });
                bjiVar.f44097c.execute(new Runnable(bjiVar) { // from class: com.google.android.gms.internal.ads.bjk

                    /* renamed from: a */
                    private final bji f44101a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44101a = bjiVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f44101a.m17808a();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14547a(float f) {
        synchronized (this) {
            zzr.zzla().setAppVolume(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14546a(AbstractC12126b abstractC12126b, String str) {
        if (abstractC12126b == null) {
            zzd.zzex("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) BinderC12129d.m18980a(abstractC12126b);
        if (context == null) {
            zzd.zzex("Context is null. Failed to open debug menu.");
            return;
        }
        zzad zzadVar = new zzad(context);
        zzadVar.setAdUnitId(str);
        zzadVar.zzu(this.f42167d.zzbrz);
        zzadVar.showDialog();
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14545a(AbstractC12645it abstractC12645it) throws RemoteException {
        bmi bmiVar = this.f42169f;
        bmiVar.f44262d.addListener(new Runnable(bmiVar, abstractC12645it) { // from class: com.google.android.gms.internal.ads.bml

            /* renamed from: a */
            private final bmi f44278a;

            /* renamed from: b */
            private final AbstractC12645it f44279b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44278a = bmiVar;
                this.f44279b = abstractC12645it;
            }

            @Override // java.lang.Runnable
            public final void run() {
                bmi bmiVar2 = this.f44278a;
                try {
                    this.f44279b.mo14595a(bmiVar2.m17733b());
                } catch (RemoteException e) {
                    C13088za.zzc("", e);
                }
            }
        }, bmiVar.f44267i);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14544a(AbstractC12746mm abstractC12746mm) throws RemoteException {
        this.f42165b.m17811a(abstractC12746mm);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14543a(zzaat zzaatVar) throws RemoteException {
        C13019wo c13019wo = this.f42170g;
        Context context = this.f42164a;
        AbstractC13038xe.m14013a(context).mo14012b().f49964a.m14047a(-1);
        if (!((Boolean) ekb.m14831e().m18571a(C12187aq.f42669af)).booleanValue() || !c13019wo.m14044a(context) || !C13019wo.m14033b(context)) {
            return;
        }
        synchronized (c13019wo.f49983c) {
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14542a(String str) {
        synchronized (this) {
            C12187aq.m18474a(this.f42164a);
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42773cd)).booleanValue()) {
                    zzr.zzld().zza(this.f42164a, this.f42167d, str, (Runnable) null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14541a(String str, AbstractC12126b abstractC12126b) {
        String str2;
        C12187aq.m18474a(this.f42164a);
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42776cg)).booleanValue()) {
            zzr.zzkv();
            str2 = zzj.zzbb(this.f42164a);
        } else {
            str2 = "";
        }
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean booleanValue = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42773cd)).booleanValue() | ((Boolean) ekb.m14831e().m18571a(C12187aq.f42688ay)).booleanValue();
        Runnable runnable = null;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42688ay)).booleanValue()) {
            booleanValue = true;
            runnable = new Runnable(this, (Runnable) BinderC12129d.m18980a(abstractC12126b)) { // from class: com.google.android.gms.internal.ads.aia

                /* renamed from: a */
                private final aib f42162a;

                /* renamed from: b */
                private final Runnable f42163b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f42162a = this;
                    this.f42163b = runnable2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    final aib aibVar = this.f42162a;
                    final Runnable runnable3 = this.f42163b;
                    C13091zd.f50122e.execute(new Runnable(aibVar, runnable3) { // from class: com.google.android.gms.internal.ads.aid

                        /* renamed from: a */
                        private final aib f42181a;

                        /* renamed from: b */
                        private final Runnable f42182b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f42181a = aibVar;
                            this.f42182b = runnable3;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            aib aibVar2 = this.f42181a;
                            Runnable runnable4 = this.f42182b;
                            C12045o.m19155b("Adapters must be initialized on the main thread.");
                            Map<String, C12741mh> map = zzr.zzkz().m13975d().zzzg().f50055a;
                            if (map == null || map.isEmpty()) {
                                return;
                            }
                            if (runnable4 != null) {
                                try {
                                    runnable4.run();
                                } catch (Throwable th) {
                                    zzd.zzd("Could not initialize rewarded ads.", th);
                                    return;
                                }
                            }
                            if (!(aibVar2.f42165b.f44093b.get() != null)) {
                                return;
                            }
                            HashMap hashMap = new HashMap();
                            for (C12741mh c12741mh : map.values()) {
                                for (C12742mi c12742mi : c12741mh.f49514a) {
                                    String str3 = c12742mi.f49536b;
                                    for (String str4 : c12742mi.f49535a) {
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
                                    bsn<cqe, bug> mo17588a = aibVar2.f42166c.mo17588a(str5, jSONObject);
                                    if (mo17588a != null) {
                                        cqe cqeVar = mo17588a.f44640b;
                                        if (!cqeVar.m17332c() && cqeVar.m17329f()) {
                                            cqeVar.f46377a.mo14367a(BinderC12129d.m18979a(aibVar2.f42164a), mo17588a.f44641c, (List) entry.getValue());
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
                    });
                }
            };
        }
        if (!booleanValue) {
            return;
        }
        zzr.zzld().zza(this.f42164a, this.f42167d, str, runnable);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14540a(boolean z) {
        synchronized (this) {
            zzr.zzla().setAppMuted(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: b */
    public final float mo14539b() {
        float zzrg;
        synchronized (this) {
            zzrg = zzr.zzla().zzrg();
        }
        return zzrg;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: b */
    public final void mo14538b(String str) {
        this.f42168e.m17562a(str);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: c */
    public final boolean mo14537c() {
        boolean zzrh;
        synchronized (this) {
            zzrh = zzr.zzla().zzrh();
        }
        return zzrh;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: d */
    public final String mo14536d() {
        return this.f42167d.zzbrz;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: e */
    public final List<zzajm> mo14535e() throws RemoteException {
        return this.f42169f.m17733b();
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: f */
    public final void mo14534f() {
        this.f42169f.f44271m = false;
    }
}
