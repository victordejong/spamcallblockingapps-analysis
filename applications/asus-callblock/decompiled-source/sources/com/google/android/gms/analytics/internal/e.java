package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.IntentFilter;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.CampaignTrackingService;
import com.google.android.gms.analytics.zza;
import com.google.android.gms.analytics.zze;
import com.google.android.gms.analytics.zzi;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.ab;
import com.google.android.gms.internal.ac;
import com.google.android.gms.internal.af;
import com.google.android.gms.internal.ak;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/e.class */
public final class e extends zzd {

    /* renamed from: a  reason: collision with root package name */
    private boolean f3807a;

    /* renamed from: b  reason: collision with root package name */
    private final d f3808b;
    private final b c;
    private final a d;
    private final zzi e;
    private final h g;
    private final h h;
    private long j;
    private boolean k;
    private long f = Long.MIN_VALUE;
    private final c i = new c(zzlQ());

    /* JADX INFO: Access modifiers changed from: protected */
    public e(zzf zzfVar, zzg zzgVar) {
        super(zzfVar);
        b.a(zzgVar);
        this.d = zzg.b(zzfVar);
        this.f3808b = zzgVar.zzm(zzfVar);
        this.c = zzgVar.zzn(zzfVar);
        this.e = zzgVar.zzo(zzfVar);
        this.g = new h(zzfVar) { // from class: com.google.android.gms.analytics.internal.e.1
            @Override // com.google.android.gms.analytics.internal.h
            public final void a() {
                e.a(e.this);
            }
        };
        this.h = new h(zzfVar) { // from class: com.google.android.gms.analytics.internal.e.2
            @Override // com.google.android.gms.analytics.internal.h
            public final void a() {
                e.b(e.this);
            }
        };
    }

    static /* synthetic */ void a(e eVar) {
        eVar.a(new zzw() { // from class: com.google.android.gms.analytics.internal.e.4
            @Override // com.google.android.gms.analytics.internal.zzw
            public final void zzd(Throwable th) {
                e.this.h();
            }
        });
    }

    private void a(zzh zzhVar, ac acVar) {
        b.a(zzhVar);
        b.a(acVar);
        zza zzaVar = new zza(zzlO());
        zzaVar.zzbf(zzhVar.zzmj());
        zzaVar.enableAdvertisingIdCollection(zzhVar.zzmk());
        zze zzkk = zzaVar.zzkk();
        ak akVar = (ak) zzkk.zzb(ak.class);
        akVar.f4111a = "data";
        akVar.g = true;
        zzkk.zza(acVar);
        af afVar = (af) zzkk.zzb(af.class);
        ab abVar = (ab) zzkk.zzb(ab.class);
        for (Map.Entry<String, String> entry : zzhVar.zzm().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("an".equals(key)) {
                abVar.f4096a = value;
            } else if ("av".equals(key)) {
                abVar.f4097b = value;
            } else if ("aid".equals(key)) {
                abVar.c = value;
            } else if ("aiid".equals(key)) {
                abVar.d = value;
            } else if ("uid".equals(key)) {
                akVar.c = value;
            } else {
                afVar.f4102a.put(af.a(key), value);
            }
        }
        zzb("Sending installation campaign to", zzhVar.zzmj(), acVar);
        zzkk.zzn(zzlV().zzoh());
        zzkk.zzkC();
    }

    static /* synthetic */ void b(e eVar) {
        try {
            eVar.f3808b.g();
            eVar.h();
        } catch (SQLiteException e) {
            eVar.zzd("Failed to delete stale hits", e);
        }
        eVar.h.a(eVar.zzlS().zzny());
    }

    private boolean b(String str) {
        return getContext().checkCallingOrSelfPermission(str) == 0;
    }

    private void i() {
        if (!this.k && zzlS().zzmY() && !this.e.isConnected()) {
            if (this.i.a(zzlS().zznt())) {
                this.i.a();
                zzbG("Connecting to service");
                if (this.e.connect()) {
                    zzbG("Connected to service");
                    this.i.f3802a = 0L;
                    d();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v7, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.analytics.internal.e] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean j() {
        /*
            Method dump skipped, instructions count: 803
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.analytics.internal.e.j():boolean");
    }

    private long k() {
        long j;
        zzi.zzkN();
        zzma();
        try {
            j = this.f3808b.h();
        } catch (SQLiteException e) {
            zze("Failed to get min/max hit times from local store", e);
            j = 0;
        }
        return j;
    }

    private void l() {
        zzv zzlU = zzlU();
        if (zzlU.zznG() && !zzlU.zzbW()) {
            long k = k();
            if (k != 0 && Math.abs(zzlQ().a() - k) <= zzlS().zzng()) {
                zza("Dispatch alarm scheduled (ms)", Long.valueOf(zzlS().zznf()));
                zzlU.schedule();
            }
        }
    }

    private void m() {
        if (this.g.b()) {
            zzbG("All hits dispatched or no network/service. Going to power save mode");
        }
        this.g.c();
        zzv zzlU = zzlU();
        if (zzlU.zzbW()) {
            zzlU.cancel();
        }
    }

    private long n() {
        long zzne;
        if (this.f != Long.MIN_VALUE) {
            zzne = this.f;
        } else {
            zzne = zzlS().zzne();
            if (zzkx().zznN()) {
                zzne = zzkx().zzoE() * 1000;
            }
        }
        return zzne;
    }

    private void o() {
        zzma();
        zzkN();
        this.k = true;
        this.e.disconnect();
        h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        zzma();
        b.a(!this.f3807a, "Analytics backend already started");
        this.f3807a = true;
        zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.e.3
            @Override // java.lang.Runnable
            public final void run() {
                e.this.b();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    public final void a(long j) {
        zzi.zzkN();
        zzma();
        long j2 = j;
        if (j < 0) {
            j2 = 0;
        }
        this.f = j2;
        h();
    }

    public final void a(zzab zzabVar) {
        zzab zzabVar2;
        b.a(zzabVar);
        zzi.zzkN();
        zzma();
        if (this.k) {
            zzbH("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            zza("Delivering hit", zzabVar);
        }
        if (!TextUtils.isEmpty(zzabVar.zznX())) {
            zzabVar2 = zzabVar;
        } else {
            Pair<String, Long> zzop = zzlV().zzom().zzop();
            zzabVar2 = zzabVar;
            if (zzop != null) {
                Long l = (Long) zzop.second;
                String str = (String) zzop.first;
                String valueOf = String.valueOf(l);
                String sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length()).append(valueOf).append(":").append(str).toString();
                HashMap hashMap = new HashMap(zzabVar.zzm());
                hashMap.put("_m", sb);
                zzabVar2 = zzab.zza(this, zzabVar, hashMap);
            }
        }
        i();
        if (this.e.zzb(zzabVar2)) {
            zzbH("Hit sent to the device AnalyticsService for delivery");
        } else if (zzlS().zzmW()) {
            zzlR().zza(zzabVar2, "Service unavailable on package side");
        } else {
            try {
                this.f3808b.a(zzabVar2);
                h();
            } catch (SQLiteException e) {
                zze("Delivery failed to save hit to a database", e);
                zzlR().zza(zzabVar2, "deliver: failed to insert hit to database");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(zzh zzhVar) {
        zzkN();
        zzb("Sending first hit to property", zzhVar.zzmj());
        if (!zzlV().zzoi().a(zzlS().zznB())) {
            String zzol = zzlV().zzol();
            if (!TextUtils.isEmpty(zzol)) {
                ac zza = zzao.zza(zzlR(), zzol);
                zzb("Found relevant installation campaign", zza);
                a(zzhVar, zza);
            }
        }
    }

    public final void a(zzw zzwVar) {
        long j = this.j;
        zzi.zzkN();
        zzma();
        long j2 = -1;
        long zzoj = zzlV().zzoj();
        if (zzoj != 0) {
            j2 = Math.abs(zzlQ().a() - zzoj);
        }
        zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(j2));
        if (!zzlS().zzmW()) {
            i();
        }
        try {
            j();
            zzlV().zzok();
            h();
            if (zzwVar != null) {
                zzwVar.zzd(null);
            }
            if (this.j != j) {
                this.d.c();
            }
        } catch (Throwable th) {
            zze("Local dispatch failed", th);
            zzlV().zzok();
            h();
            if (zzwVar != null) {
                zzwVar.zzd(th);
            }
        }
    }

    public final void a(String str) {
        b.a(str);
        zzkN();
        zzlP();
        ac zza = zzao.zza(zzlR(), str);
        if (zza == null) {
            zzd("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String zzol = zzlV().zzol();
        if (str.equals(zzol)) {
            zzbJ("Ignoring duplicate install campaign");
        } else if (!TextUtils.isEmpty(zzol)) {
            zzd("Ignoring multiple install campaigns. original, new", zzol, str);
        } else {
            zzlV().zzbT(str);
            if (zzlV().zzoi().a(zzlS().zznB())) {
                zzd("Campaign received too late, ignoring", zza);
                return;
            }
            zzb("Received installation campaign", zza);
            for (zzh zzhVar : this.f3808b.i()) {
                a(zzhVar, zza);
            }
        }
    }

    public final long b(zzh zzhVar) {
        long j;
        b.a(zzhVar);
        zzma();
        zzkN();
        try {
            try {
                this.f3808b.a();
                this.f3808b.a(zzhVar.zzmi(), zzhVar.zzku());
                j = this.f3808b.a(zzhVar.zzmi(), zzhVar.zzku(), zzhVar.zzmj());
                zzhVar.zzp(1 + j);
                this.f3808b.a(zzhVar);
                this.f3808b.b();
            } finally {
                try {
                    this.f3808b.c();
                } catch (SQLiteException e) {
                    zze("Failed to end transaction", e);
                }
            }
        } catch (SQLiteException e2) {
            zze("Failed to update Analytics property", e2);
            try {
                this.f3808b.c();
            } catch (SQLiteException e3) {
                zze("Failed to end transaction", e3);
            }
            j = -1;
        }
        return j;
    }

    protected final void b() {
        zzma();
        if (!zzlS().zzmW()) {
            zzkN();
            Context context = zzlO().getContext();
            if (!zzaj.zzU(context)) {
                zzbJ("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
            } else if (!zzak.zzV(context)) {
                zzbK("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
            }
            if (!CampaignTrackingReceiver.zzU(context)) {
                zzbJ("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
            } else if (!CampaignTrackingService.zzV(context)) {
                zzbJ("CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
            }
        }
        zzlV().zzoh();
        if (!b("android.permission.ACCESS_NETWORK_STATE")) {
            zzbK("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            o();
        }
        if (!b("android.permission.INTERNET")) {
            zzbK("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            o();
        }
        if (zzak.zzV(getContext())) {
            zzbG("AnalyticsService registered in the app manifest and enabled");
        } else if (zzlS().zzmW()) {
            zzbK("Device AnalyticsService not registered! Hits will not be delivered reliably.");
        } else {
            zzbJ("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.k && !zzlS().zzmW() && !this.f3808b.f()) {
            i();
        }
        h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        zzkN();
        this.j = zzlQ().a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        zzkN();
        if (!zzlS().zzmW()) {
            zzi.zzkN();
            zzma();
            zzlP();
            if (!zzlS().zzmY()) {
                zzbJ("Service client disabled. Can't dispatch local hits to device AnalyticsService");
            }
            if (!this.e.isConnected()) {
                zzbG("Service not connected");
            } else if (!this.f3808b.f()) {
                zzbG("Dispatching local hits to device AnalyticsService");
                while (true) {
                    try {
                        List<zzab> a2 = this.f3808b.a(zzlS().zznh());
                        if (a2.isEmpty()) {
                            h();
                            return;
                        }
                        while (true) {
                            if (!a2.isEmpty()) {
                                zzab zzabVar = a2.get(0);
                                if (!this.e.zzb(zzabVar)) {
                                    h();
                                    return;
                                }
                                a2.remove(zzabVar);
                                try {
                                    this.f3808b.b(zzabVar.zznS());
                                } catch (SQLiteException e) {
                                    zze("Failed to remove hit that was send for delivery", e);
                                    m();
                                    return;
                                }
                            }
                        }
                    } catch (SQLiteException e2) {
                        zze("Failed to read hits from store", e2);
                        m();
                        return;
                    }
                }
            }
        }
    }

    public final void e() {
        zzi.zzkN();
        zzma();
        zzbG("Service disconnected");
    }

    public final void f() {
        zzi.zzkN();
        zzma();
        if (!zzlS().zzmW()) {
            zzbG("Delete all hits from local store");
            try {
                this.f3808b.d();
                this.f3808b.e();
                h();
            } catch (SQLiteException e) {
                zzd("Failed to delete hits from store", e);
            }
        }
        i();
        if (this.e.zzmm()) {
            zzbG("Device service unavailable. Can't clear hits stored on the device service.");
        }
    }

    public final void g() {
        zzi.zzkN();
        zzma();
        zzbH("Sync dispatching local hits");
        long j = this.j;
        if (!zzlS().zzmW()) {
            i();
        }
        try {
            j();
            zzlV().zzok();
            h();
            if (this.j != j) {
                this.d.c();
            }
        } catch (Throwable th) {
            zze("Sync local dispatch failed", th);
            h();
        }
    }

    public final void h() {
        boolean z;
        long min;
        long abs = 0;
        zzlO().zzkN();
        zzma();
        if (!(!this.k && (!zzlS().zzmW() || zzlS().zzmX()) && n() > 0)) {
            this.d.b();
            m();
        } else if (this.f3808b.f()) {
            this.d.b();
            m();
        } else {
            if (!zzy.zzYm.get().booleanValue()) {
                a aVar = this.d;
                aVar.a();
                if (!aVar.c) {
                    Context context = aVar.f3797b.getContext();
                    context.registerReceiver(aVar, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    IntentFilter intentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
                    intentFilter.addCategory(context.getPackageName());
                    context.registerReceiver(aVar, intentFilter);
                    aVar.d = aVar.d();
                    aVar.f3797b.zzlR().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(aVar.d));
                    aVar.c = true;
                }
                a aVar2 = this.d;
                if (!aVar2.c) {
                    aVar2.f3797b.zzlR().zzbJ("Connectivity unknown. Receiver not registered");
                }
                z = aVar2.d;
            } else {
                z = true;
            }
            if (z) {
                l();
                long n = n();
                long zzoj = zzlV().zzoj();
                if (zzoj != 0) {
                    min = n - Math.abs(zzlQ().a() - zzoj);
                    if (min <= 0) {
                        min = Math.min(zzlS().zznd(), n);
                    }
                } else {
                    min = Math.min(zzlS().zznd(), n);
                }
                zza("Dispatch scheduled (ms)", Long.valueOf(min));
                if (this.g.b()) {
                    h hVar = this.g;
                    long max = Math.max(1L, min + (hVar.d == 0 ? 0L : Math.abs(hVar.f3816b.zzlQ().a() - hVar.d)));
                    h hVar2 = this.g;
                    if (!hVar2.b()) {
                        return;
                    }
                    if (max < 0) {
                        hVar2.c();
                        return;
                    }
                    abs = max - Math.abs(hVar2.f3816b.zzlQ().a() - hVar2.d);
                    if (abs < 0) {
                    }
                    hVar2.d().removeCallbacks(hVar2.c);
                    if (!hVar2.d().postDelayed(hVar2.c, abs)) {
                        hVar2.f3816b.zzlR().zze("Failed to adjust delayed post. time", Long.valueOf(abs));
                        return;
                    }
                    return;
                }
                this.g.a(min);
                return;
            }
            m();
            l();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public final void zzkO() {
        this.f3808b.initialize();
        this.c.initialize();
        this.e.initialize();
    }
}
