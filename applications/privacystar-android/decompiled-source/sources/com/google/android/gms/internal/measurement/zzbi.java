package com.google.android.gms.internal.measurement;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.zza;
import com.google.android.gms.analytics.zzg;
import com.google.android.gms.analytics.zzk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.privacystar.core.util.DateUtil;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbi.class */
public final class zzbi extends zzau {
    private boolean started;
    private final zzbf zzxl;
    private final zzcr zzxm;
    private final zzcq zzxn;
    private final zzba zzxo;
    private final zzbz zzxq;
    private final zzbz zzxr;
    private long zzxt;
    private boolean zzxu;
    private long zzxp = Long.MIN_VALUE;
    private final zzdc zzxs = new zzdc(zzbx());

    /* JADX INFO: Access modifiers changed from: protected */
    public zzbi(zzaw zzawVar, zzay zzayVar) {
        super(zzawVar);
        Preconditions.checkNotNull(zzayVar);
        this.zzxn = new zzcq(zzawVar);
        this.zzxl = new zzbf(zzawVar);
        this.zzxm = new zzcr(zzawVar);
        this.zzxo = new zzba(zzawVar);
        this.zzxq = new zzbj(this, zzawVar);
        this.zzxr = new zzbk(this, zzawVar);
    }

    private final void zza(zzaz zzazVar, zzy zzyVar) {
        Preconditions.checkNotNull(zzazVar);
        Preconditions.checkNotNull(zzyVar);
        zza zzaVar = new zza(zzbw());
        zzaVar.zza(zzazVar.zzct());
        zzaVar.enableAdvertisingIdCollection(zzazVar.zzcu());
        zzg zzm = zzaVar.zzm();
        zzag zzagVar = (zzag) zzm.zzb(zzag.class);
        zzagVar.zzl("data");
        zzagVar.zzb(true);
        zzm.zza(zzyVar);
        zzab zzabVar = (zzab) zzm.zzb(zzab.class);
        zzx zzxVar = (zzx) zzm.zzb(zzx.class);
        for (Map.Entry<String, String> entry : zzazVar.zzcw().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("an".equals(key)) {
                zzxVar.setAppName(value);
            } else if ("av".equals(key)) {
                zzxVar.setAppVersion(value);
            } else if ("aid".equals(key)) {
                zzxVar.setAppId(value);
            } else if ("aiid".equals(key)) {
                zzxVar.setAppInstallerId(value);
            } else if ("uid".equals(key)) {
                zzagVar.setUserId(value);
            } else {
                zzabVar.set(key, value);
            }
        }
        zzb("Sending installation campaign to", zzazVar.zzct(), zzyVar);
        zzm.zza(zzcf().zzff());
        zzm.zzw();
    }

    private final long zzdc() {
        zzk.zzaf();
        zzcl();
        try {
            return this.zzxl.zzdc();
        } catch (SQLiteException e) {
            zze("Failed to get min/max hit times from local store", e);
            return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzdh() {
        zzb((zzcd) new zzbm(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzdi() {
        try {
            this.zzxl.zzdb();
            zzdm();
        } catch (SQLiteException e) {
            zzd("Failed to delete stale hits", e);
        }
        this.zzxr.zzh(DateUtil.DAY_IN_MILLIS);
    }

    private final void zzdj() {
        if (!this.zzxu && zzbx.zzdx() && !this.zzxo.isConnected()) {
            if (this.zzxs.zzj(zzcf.zzaaj.get().longValue())) {
                this.zzxs.start();
                zzq("Connecting to service");
                if (this.zzxo.connect()) {
                    zzq("Connected to service");
                    this.zzxs.clear();
                    onServiceConnected();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v5, types: [long] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r15v2, types: [long] */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.measurement.zzat, com.google.android.gms.internal.measurement.zzau, com.google.android.gms.internal.measurement.zzbi] */
    /* JADX WARN: Unknown variable types count: 3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzdk() {
        /*
            Method dump skipped, instructions count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbi.zzdk():boolean");
    }

    private final void zzdn() {
        zzcc zzcd = zzcd();
        if (zzcd.zzem() && !zzcd.zzej()) {
            long zzdc = zzdc();
            if (zzdc != 0 && Math.abs(zzbx().currentTimeMillis() - zzdc) <= zzcf.zzzi.get().longValue()) {
                zza("Dispatch alarm scheduled (ms)", Long.valueOf(zzbx.zzea()));
                zzcd.zzen();
            }
        }
    }

    private final void zzdo() {
        if (this.zzxq.zzej()) {
            zzq("All hits dispatched or no network/service. Going to power save mode");
        }
        this.zzxq.cancel();
        zzcc zzcd = zzcd();
        if (zzcd.zzej()) {
            zzcd.cancel();
        }
    }

    private final long zzdp() {
        if (this.zzxp != Long.MIN_VALUE) {
            return this.zzxp;
        }
        long longValue = zzcf.zzzd.get().longValue();
        zzdh zzce = zzce();
        zzce.zzcl();
        if (zzce.zzacr) {
            zzdh zzce2 = zzce();
            zzce2.zzcl();
            longValue = zzce2.zzaat * 1000;
        }
        return longValue;
    }

    private final void zzdq() {
        zzcl();
        zzk.zzaf();
        this.zzxu = true;
        this.zzxo.disconnect();
        zzdm();
    }

    private final boolean zzx(String str) {
        return Wrappers.packageManager(getContext()).checkCallingOrSelfPermission(str) == 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054 A[LOOP:0: B:16:0x0054->B:23:0x0080, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x004f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onServiceConnected() {
        /*
            r4 = this;
            com.google.android.gms.analytics.zzk.zzaf()
            com.google.android.gms.analytics.zzk.zzaf()
            r0 = r4
            r0.zzcl()
            boolean r0 = com.google.android.gms.internal.measurement.zzbx.zzdx()
            if (r0 != 0) goto L_0x0017
            r0 = r4
            java.lang.String r1 = "Service client disabled. Can't dispatch local hits to device AnalyticsService"
            r0.zzt(r1)
        L_0x0017:
            r0 = r4
            com.google.android.gms.internal.measurement.zzba r0 = r0.zzxo
            boolean r0 = r0.isConnected()
            if (r0 != 0) goto L_0x0029
            r0 = r4
            java.lang.String r1 = "Service not connected"
            r0.zzq(r1)
            return
        L_0x0029:
            r0 = r4
            com.google.android.gms.internal.measurement.zzbf r0 = r0.zzxl
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x00aa
            r0 = r4
            java.lang.String r1 = "Dispatching local hits to device AnalyticsService"
            r0.zzq(r1)
        L_0x003a:
            r0 = r4
            com.google.android.gms.internal.measurement.zzbf r0 = r0.zzxl     // Catch: SQLiteException -> 0x009c
            int r1 = com.google.android.gms.internal.measurement.zzbx.zzeb()     // Catch: SQLiteException -> 0x009c
            long r1 = (long) r1     // Catch: SQLiteException -> 0x009c
            java.util.List r0 = r0.zzd(r1)     // Catch: SQLiteException -> 0x009c
            r5 = r0
            r0 = r5
            boolean r0 = r0.isEmpty()     // Catch: SQLiteException -> 0x009c
            if (r0 == 0) goto L_0x0054
            r0 = r4
            r0.zzdm()     // Catch: SQLiteException -> 0x009c
            return
        L_0x0054:
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x003a
            r0 = r5
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.measurement.zzck r0 = (com.google.android.gms.internal.measurement.zzck) r0
            r6 = r0
            r0 = r4
            com.google.android.gms.internal.measurement.zzba r0 = r0.zzxo
            r1 = r6
            boolean r0 = r0.zzb(r1)
            if (r0 != 0) goto L_0x0078
            r0 = r4
            r0.zzdm()
            return
        L_0x0078:
            r0 = r5
            r1 = r6
            boolean r0 = r0.remove(r1)
            r0 = r4
            com.google.android.gms.internal.measurement.zzbf r0 = r0.zzxl     // Catch: SQLiteException -> 0x008e
            r1 = r6
            long r1 = r1.zzeq()     // Catch: SQLiteException -> 0x008e
            r0.zze(r1)     // Catch: SQLiteException -> 0x008e
            goto L_0x0054
        L_0x008e:
            r6 = move-exception
            r0 = r4
            java.lang.String r1 = "Failed to remove hit that was send for delivery"
            r2 = r6
            r0.zze(r1, r2)
            r0 = r4
            r0.zzdo()
            return
        L_0x009c:
            r6 = move-exception
            r0 = r4
            java.lang.String r1 = "Failed to read hits from store"
            r2 = r6
            r0.zze(r1, r2)
            r0 = r4
            r0.zzdo()
            return
        L_0x00aa:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzbi.onServiceConnected():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void start() {
        zzcl();
        Preconditions.checkState(!this.started, "Analytics backend already started");
        this.started = true;
        zzca().zza(new zzbl(this));
    }

    public final long zza(zzaz zzazVar, boolean z) {
        Preconditions.checkNotNull(zzazVar);
        zzcl();
        zzk.zzaf();
        try {
            try {
                this.zzxl.beginTransaction();
                zzbf zzbfVar = this.zzxl;
                long zzcs = zzazVar.zzcs();
                String zzbd = zzazVar.zzbd();
                Preconditions.checkNotEmpty(zzbd);
                zzbfVar.zzcl();
                zzk.zzaf();
                int delete = zzbfVar.getWritableDatabase().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(zzcs), zzbd});
                if (delete > 0) {
                    zzbfVar.zza("Deleted property records", Integer.valueOf(delete));
                }
                long zza = this.zzxl.zza(zzazVar.zzcs(), zzazVar.zzbd(), zzazVar.zzct());
                zzazVar.zzb(1 + zza);
                zzbf zzbfVar2 = this.zzxl;
                Preconditions.checkNotNull(zzazVar);
                zzbfVar2.zzcl();
                zzk.zzaf();
                SQLiteDatabase writableDatabase = zzbfVar2.getWritableDatabase();
                Map<String, String> zzcw = zzazVar.zzcw();
                Preconditions.checkNotNull(zzcw);
                Uri.Builder builder = new Uri.Builder();
                for (Map.Entry<String, String> entry : zzcw.entrySet()) {
                    builder.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                String encodedQuery = builder.build().getEncodedQuery();
                String str = encodedQuery;
                if (encodedQuery == null) {
                    str = "";
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_uid", Long.valueOf(zzazVar.zzcs()));
                contentValues.put("cid", zzazVar.zzbd());
                contentValues.put("tid", zzazVar.zzct());
                contentValues.put("adid", Integer.valueOf(zzazVar.zzcu() ? 1 : 0));
                contentValues.put("hits_count", Long.valueOf(zzazVar.zzcv()));
                contentValues.put("params", str);
                try {
                    if (writableDatabase.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                        zzbfVar2.zzu("Failed to insert/update a property (got -1)");
                    }
                } catch (SQLiteException e) {
                    zzbfVar2.zze("Error storing a property", e);
                }
                this.zzxl.setTransactionSuccessful();
                try {
                    this.zzxl.endTransaction();
                } catch (SQLiteException e2) {
                    zze("Failed to end transaction", e2);
                }
                return zza;
            } catch (SQLiteException e3) {
                zze("Failed to update Analytics property", e3);
                try {
                    this.zzxl.endTransaction();
                    return -1L;
                } catch (SQLiteException e4) {
                    zze("Failed to end transaction", e4);
                    return -1L;
                }
            }
        } catch (Throwable th) {
            try {
                this.zzxl.endTransaction();
            } catch (SQLiteException e5) {
                zze("Failed to end transaction", e5);
            }
            throw th;
        }
    }

    public final void zza(zzck zzckVar) {
        Pair<String, Long> zzfm;
        Preconditions.checkNotNull(zzckVar);
        zzk.zzaf();
        zzcl();
        if (this.zzxu) {
            zzr("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            zza("Delivering hit", zzckVar);
        }
        if (TextUtils.isEmpty(zzckVar.zzev()) && (zzfm = zzcf().zzfk().zzfm()) != null) {
            Long l = (Long) zzfm.second;
            String str = (String) zzfm.first;
            String valueOf = String.valueOf(l);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
            sb.append(valueOf);
            sb.append(":");
            sb.append(str);
            String sb2 = sb.toString();
            HashMap hashMap = new HashMap(zzckVar.zzcw());
            hashMap.put("_m", sb2);
            zzckVar = new zzck(this, hashMap, zzckVar.zzer(), zzckVar.zzet(), zzckVar.zzeq(), zzckVar.zzep(), zzckVar.zzes());
        }
        zzdj();
        if (this.zzxo.zzb(zzckVar)) {
            zzr("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        try {
            this.zzxl.zzc(zzckVar);
            zzdm();
        } catch (SQLiteException e) {
            zze("Delivery failed to save hit to a database", e);
            zzby().zza(zzckVar, "deliver: failed to insert hit to database");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
        this.zzxl.zzq();
        this.zzxm.zzq();
        this.zzxo.zzq();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzb(zzaz zzazVar) {
        zzk.zzaf();
        zzb("Sending first hit to property", zzazVar.zzct());
        if (!zzcf().zzfg().zzj(zzbx.zzeh())) {
            String zzfj = zzcf().zzfj();
            if (!TextUtils.isEmpty(zzfj)) {
                zzy zza = zzdg.zza(zzby(), zzfj);
                zzb("Found relevant installation campaign", zza);
                zza(zzazVar, zza);
            }
        }
    }

    public final void zzb(zzcd zzcdVar) {
        long j = this.zzxt;
        zzk.zzaf();
        zzcl();
        long zzfh = zzcf().zzfh();
        zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(zzfh != 0 ? Math.abs(zzbx().currentTimeMillis() - zzfh) : -1L));
        zzdj();
        try {
            zzdk();
            zzcf().zzfi();
            zzdm();
            if (zzcdVar != null) {
                zzcdVar.zza(null);
            }
            if (this.zzxt != j) {
                this.zzxn.zzfa();
            }
        } catch (Exception e) {
            zze("Local dispatch failed", e);
            zzcf().zzfi();
            zzdm();
            if (zzcdVar != null) {
                zzcdVar.zza(e);
            }
        }
    }

    public final void zzbr() {
        zzk.zzaf();
        zzcl();
        zzq("Delete all hits from local store");
        try {
            zzbf zzbfVar = this.zzxl;
            zzk.zzaf();
            zzbfVar.zzcl();
            zzbfVar.getWritableDatabase().delete("hits2", null, null);
            zzbf zzbfVar2 = this.zzxl;
            zzk.zzaf();
            zzbfVar2.zzcl();
            zzbfVar2.getWritableDatabase().delete("properties", null, null);
            zzdm();
        } catch (SQLiteException e) {
            zzd("Failed to delete hits from store", e);
        }
        zzdj();
        if (this.zzxo.zzcx()) {
            zzq("Device service unavailable. Can't clear hits stored on the device service.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzbv() {
        zzk.zzaf();
        this.zzxt = zzbx().currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzdg() {
        zzcl();
        zzk.zzaf();
        Context context = zzbw().getContext();
        if (!zzcw.zza(context)) {
            zzt("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!zzcx.zze(context)) {
            zzu("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!CampaignTrackingReceiver.zza(context)) {
            zzt("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        zzcf().zzff();
        if (!zzx("android.permission.ACCESS_NETWORK_STATE")) {
            zzu("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzdq();
        }
        if (!zzx("android.permission.INTERNET")) {
            zzu("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            zzdq();
        }
        if (zzcx.zze(getContext())) {
            zzq("AnalyticsService registered in the app manifest and enabled");
        } else {
            zzt("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.zzxu && !this.zzxl.isEmpty()) {
            zzdj();
        }
        zzdm();
    }

    public final void zzdl() {
        zzk.zzaf();
        zzcl();
        zzr("Sync dispatching local hits");
        long j = this.zzxt;
        zzdj();
        try {
            zzdk();
            zzcf().zzfi();
            zzdm();
            if (this.zzxt != j) {
                this.zzxn.zzfa();
            }
        } catch (Exception e) {
            zze("Sync local dispatch failed", e);
            zzdm();
        }
    }

    public final void zzdm() {
        long j;
        zzk.zzaf();
        zzcl();
        boolean z = true;
        if (!(!this.zzxu && zzdp() > 0)) {
            this.zzxn.unregister();
            zzdo();
        } else if (this.zzxl.isEmpty()) {
            this.zzxn.unregister();
            zzdo();
        } else {
            if (!zzcf.zzaae.get().booleanValue()) {
                this.zzxn.zzey();
                z = this.zzxn.isConnected();
            }
            if (z) {
                zzdn();
                long zzdp = zzdp();
                long zzfh = zzcf().zzfh();
                if (zzfh != 0) {
                    j = zzdp - Math.abs(zzbx().currentTimeMillis() - zzfh);
                    if (j <= 0) {
                        j = Math.min(zzbx.zzdz(), zzdp);
                    }
                } else {
                    j = Math.min(zzbx.zzdz(), zzdp);
                }
                zza("Dispatch scheduled (ms)", Long.valueOf(j));
                if (this.zzxq.zzej()) {
                    this.zzxq.zzi(Math.max(1L, j + this.zzxq.zzei()));
                } else {
                    this.zzxq.zzh(j);
                }
            } else {
                zzdo();
                zzdn();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v2 */
    public final void zzg(long j) {
        zzk.zzaf();
        zzcl();
        long j2 = j;
        if (j < 0) {
            j2 = 0;
        }
        this.zzxp = j2;
        zzdm();
    }

    public final void zzy(String str) {
        Preconditions.checkNotEmpty(str);
        zzk.zzaf();
        zzy zza = zzdg.zza(zzby(), str);
        if (zza == null) {
            zzd("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String zzfj = zzcf().zzfj();
        if (str.equals(zzfj)) {
            zzt("Ignoring duplicate install campaign");
        } else if (!TextUtils.isEmpty(zzfj)) {
            zzd("Ignoring multiple install campaigns. original, new", zzfj, str);
        } else {
            zzcf().zzac(str);
            if (zzcf().zzfg().zzj(zzbx.zzeh())) {
                zzd("Campaign received too late, ignoring", zza);
                return;
            }
            zzb("Received installation campaign", zza);
            for (zzaz zzazVar : this.zzxl.zzf(0L)) {
                zza(zzazVar, zza);
            }
        }
    }
}
