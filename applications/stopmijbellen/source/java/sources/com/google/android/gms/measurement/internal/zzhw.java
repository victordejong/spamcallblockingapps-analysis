package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.C1676a;
import com.google.android.gms.internal.measurement.zzoa;
import com.google.android.gms.internal.measurement.zzom;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhw.class */
public final class zzhw extends zzf {
    @VisibleForTesting
    public zzhv zza;
    public final zzr zzb;
    private zzgu zzd;
    private boolean zzf;
    private final Set<zzgv> zze = new CopyOnWriteArraySet();
    private final Object zzh = new Object();
    @VisibleForTesting
    public boolean zzc = true;
    private final zzkt zzn = new zzhl(this);
    private final AtomicReference<String> zzg = new AtomicReference<>();
    private zzaf zzi = new zzaf(null, null);
    private int zzj = 100;
    private long zzl = -1;
    private int zzm = 100;
    private final AtomicLong zzk = new AtomicLong(0);

    public zzhw(zzfu zzfuVar) {
        super(zzfuVar);
        this.zzb = new zzr(zzfuVar);
    }

    public static /* synthetic */ void zzW(zzhw zzhwVar, zzaf zzafVar, int i, long j, boolean z, boolean z2) {
        zzhwVar.zzg();
        zzhwVar.zzb();
        if (j <= zzhwVar.zzl && zzaf.zzm(zzhwVar.zzm, i)) {
            zzhwVar.zzs.zzau().zzi().zzb("Dropped out-of-date consent setting, proposed settings", zzafVar);
            return;
        }
        zzfb zzd = zzhwVar.zzs.zzd();
        zzfu zzfuVar = zzd.zzs;
        zzd.zzg();
        if (!zzd.zzh(i)) {
            zzhwVar.zzs.zzau().zzi().zzb("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
            return;
        }
        SharedPreferences.Editor edit = zzd.zzd().edit();
        edit.putString("consent_settings", zzafVar.zzd());
        edit.putInt("consent_source", i);
        edit.apply();
        zzhwVar.zzl = j;
        zzhwVar.zzm = i;
        zzhwVar.zzs.zzy().zzj(z);
        if (!z2) {
            return;
        }
        zzhwVar.zzs.zzy().zzv(new AtomicReference<>());
    }

    public final void zzY(Boolean bool, boolean z) {
        zzg();
        zzb();
        this.zzs.zzau().zzj().zzb("Setting app measurement enabled (FE)", bool);
        this.zzs.zzd().zze(bool);
        if (z) {
            zzfb zzd = this.zzs.zzd();
            zzfu zzfuVar = zzd.zzs;
            zzd.zzg();
            SharedPreferences.Editor edit = zzd.zzd().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
        if (this.zzs.zzI() || (bool != null && !bool.booleanValue())) {
            zzZ();
        }
    }

    public final void zzZ() {
        zzg();
        String zza = this.zzs.zzd().zzh.zza();
        if (zza != null) {
            if ("unset".equals(zza)) {
                zzB("app", "_npa", null, this.zzs.zzay().currentTimeMillis());
            } else {
                zzB("app", "_npa", Long.valueOf((true != "true".equals(zza) ? null : 1) == 1 ? 1L : 0L), this.zzs.zzay().currentTimeMillis());
            }
        }
        if (!this.zzs.zzF() || !this.zzc) {
            this.zzs.zzau().zzj().zza("Updating Scion state (FE)");
            this.zzs.zzy().zzi();
            return;
        }
        this.zzs.zzau().zzj().zza("Recording app launch after enabling measurement for the first time (FE)");
        zzH();
        zzom.zzb();
        if (this.zzs.zzc().zzn(null, zzea.zzan)) {
            this.zzs.zzh().zza.zza();
        }
        this.zzs.zzav().zzh(new zzha(this));
    }

    public final void zzA(String str, String str2, long j, Object obj) {
        this.zzs.zzav().zzh(new zzhd(this, str, str2, obj, j));
    }

    public final void zzB(String str, String str2, Object obj, long j) {
        Long l;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzb();
        Object obj2 = obj;
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    String str4 = "false";
                    Long valueOf = Long.valueOf(true == "false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 1L : 0L);
                    zzfa zzfaVar = this.zzs.zzd().zzh;
                    if (valueOf.longValue() == 1) {
                        str4 = "true";
                    }
                    zzfaVar.zzb(str4);
                    l = valueOf;
                    str2 = "_npa";
                    obj2 = l;
                }
            }
            obj2 = obj;
            if (obj == null) {
                this.zzs.zzd().zzh.zzb("unset");
                l = obj;
                str2 = "_npa";
                obj2 = l;
            }
        }
        if (!this.zzs.zzF()) {
            C0608b.m7623l(this.zzs, "User property not set since app measurement is disabled");
        } else if (!this.zzs.zzL()) {
        } else {
            this.zzs.zzy().zzs(new zzkq(str2, j, obj2, str));
        }
    }

    public final List<zzkq> zzC(boolean z) {
        zzb();
        C0608b.m7623l(this.zzs, "Getting user properties (FE)");
        if (this.zzs.zzav().zzd()) {
            this.zzs.zzau().zzb().zza("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        }
        this.zzs.zzat();
        if (zzz.zza()) {
            this.zzs.zzau().zzb().zza("Cannot get all user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzs.zzav().zzi(atomicReference, 5000L, "get user properties", new zzhe(this, atomicReference, z));
        List<zzkq> list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        this.zzs.zzau().zzb().zzb("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z));
        return Collections.emptyList();
    }

    public final String zzD() {
        return this.zzg.get();
    }

    public final void zzE(String str) {
        this.zzg.set(str);
    }

    public final void zzF(long j) {
        this.zzg.set(null);
        this.zzs.zzav().zzh(new zzhf(this, j));
    }

    public final void zzG(long j, boolean z) {
        zzg();
        zzb();
        this.zzs.zzau().zzj().zza("Resetting analytics data (FE)");
        zzjz zzh = this.zzs.zzh();
        zzh.zzg();
        zzh.zzb.zzc();
        boolean zzF = this.zzs.zzF();
        zzfb zzd = this.zzs.zzd();
        zzd.zzc.zzb(j);
        if (!TextUtils.isEmpty(zzd.zzs.zzd().zzo.zza())) {
            zzd.zzo.zzb(null);
        }
        zzom.zzb();
        zzae zzc = zzd.zzs.zzc();
        zzdz<Boolean> zzdzVar = zzea.zzan;
        if (zzc.zzn(null, zzdzVar)) {
            zzd.zzj.zzb(0L);
        }
        if (!zzd.zzs.zzc().zzr()) {
            zzd.zzj(!zzF);
        }
        zzd.zzp.zzb(null);
        zzd.zzq.zzb(0L);
        zzd.zzr.zzb(null);
        if (z) {
            this.zzs.zzy().zzu();
        }
        zzom.zzb();
        if (this.zzs.zzc().zzn(null, zzdzVar)) {
            this.zzs.zzh().zza.zza();
        }
        this.zzc = !zzF;
    }

    public final void zzH() {
        zzg();
        zzb();
        if (this.zzs.zzL()) {
            if (this.zzs.zzc().zzn(null, zzea.zzaa)) {
                zzae zzc = this.zzs.zzc();
                zzc.zzs.zzat();
                Boolean zzp = zzc.zzp("google_analytics_deferred_deep_link_enabled");
                if (zzp != null && zzp.booleanValue()) {
                    this.zzs.zzau().zzj().zza("Deferred Deep Link feature enabled.");
                    this.zzs.zzav().zzh(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzgy
                        private final zzhw zza;

                        {
                            this.zza = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzhw zzhwVar = this.zza;
                            zzhwVar.zzg();
                            if (zzhwVar.zzs.zzd().zzm.zza()) {
                                zzhwVar.zzs.zzau().zzj().zza("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long zza = zzhwVar.zzs.zzd().zzn.zza();
                            zzhwVar.zzs.zzd().zzn.zzb(1 + zza);
                            zzhwVar.zzs.zzc();
                            if (zza < 5) {
                                zzhwVar.zzs.zzM();
                                return;
                            }
                            C1676a.m4786k(zzhwVar.zzs, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                            zzhwVar.zzs.zzd().zzm.zzb(true);
                        }
                    });
                }
            }
            this.zzs.zzy().zzy();
            this.zzc = false;
            zzfb zzd = this.zzs.zzd();
            zzd.zzg();
            String string = zzd.zzd().getString("previous_os_version", null);
            zzd.zzs.zzz().zzv();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = zzd.zzd().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.zzs.zzz().zzv();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            zzs("auto", "_ou", bundle);
        }
    }

    public final void zzI(zzgu zzguVar) {
        zzgu zzguVar2;
        zzg();
        zzb();
        if (zzguVar != null && zzguVar != (zzguVar2 = this.zzd)) {
            Preconditions.checkState(zzguVar2 == null, "EventInterceptor already set.");
        }
        this.zzd = zzguVar;
    }

    public final void zzJ(zzgv zzgvVar) {
        zzb();
        Preconditions.checkNotNull(zzgvVar);
        if (!this.zze.add(zzgvVar)) {
            C1676a.m4786k(this.zzs, "OnEventListener already registered");
        }
    }

    public final void zzK(zzgv zzgvVar) {
        zzb();
        Preconditions.checkNotNull(zzgvVar);
        if (!this.zze.remove(zzgvVar)) {
            C1676a.m4786k(this.zzs, "OnEventListener had not been registered");
        }
    }

    public final int zzL(String str) {
        Preconditions.checkNotEmpty(str);
        this.zzs.zzc();
        return 25;
    }

    public final void zzM(Bundle bundle) {
        zzN(bundle, this.zzs.zzay().currentTimeMillis());
    }

    public final void zzN(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            C1676a.m4786k(this.zzs, "Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        zzgq.zzb(bundle2, "app_id", String.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.ORIGIN, String.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.VALUE, Object.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzgq.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.ORIGIN));
        Preconditions.checkNotNull(bundle2.get(AppMeasurementSdk.ConditionalUserProperty.VALUE));
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
        Object obj = bundle2.get(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        if (this.zzs.zzl().zzo(string) != 0) {
            this.zzs.zzau().zzb().zzb("Invalid conditional user property name", this.zzs.zzm().zze(string));
        } else if (this.zzs.zzl().zzJ(string, obj) != 0) {
            this.zzs.zzau().zzb().zzc("Invalid conditional user property value", this.zzs.zzm().zze(string), obj);
        } else {
            Object zzK = this.zzs.zzl().zzK(string, obj);
            if (zzK == null) {
                this.zzs.zzau().zzb().zzc("Unable to normalize conditional user property value", this.zzs.zzm().zze(string), obj);
                return;
            }
            zzgq.zza(bundle2, zzK);
            long j2 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
            if (!TextUtils.isEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME))) {
                this.zzs.zzc();
                if (j2 > 15552000000L || j2 < 1) {
                    this.zzs.zzau().zzb().zzc("Invalid conditional user property timeout", this.zzs.zzm().zze(string), Long.valueOf(j2));
                    return;
                }
            }
            long j3 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
            this.zzs.zzc();
            if (j3 > 15552000000L || j3 < 1) {
                this.zzs.zzau().zzb().zzc("Invalid conditional user property time to live", this.zzs.zzm().zze(string), Long.valueOf(j3));
            } else {
                this.zzs.zzav().zzh(new zzhg(this, bundle2));
            }
        }
    }

    public final void zzO(String str, String str2, Bundle bundle) {
        long currentTimeMillis = this.zzs.zzay().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, currentTimeMillis);
        if (str2 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str2);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        this.zzs.zzav().zzh(new zzhh(this, bundle2));
    }

    public final ArrayList<Bundle> zzP(String str, String str2) {
        ArrayList<Bundle> arrayList;
        if (this.zzs.zzav().zzd()) {
            this.zzs.zzau().zzb().zza("Cannot get conditional user properties from analytics worker thread");
            arrayList = new ArrayList<>(0);
        } else {
            this.zzs.zzat();
            if (zzz.zza()) {
                this.zzs.zzau().zzb().zza("Cannot get conditional user properties from main thread");
                arrayList = new ArrayList<>(0);
            } else {
                AtomicReference atomicReference = new AtomicReference();
                this.zzs.zzav().zzi(atomicReference, 5000L, "get conditional user properties", new zzhj(this, atomicReference, null, str, str2));
                List list = (List) atomicReference.get();
                if (list == null) {
                    this.zzs.zzau().zzb().zzb("Timed out waiting for get conditional user properties", null);
                    arrayList = new ArrayList<>();
                } else {
                    arrayList = zzku.zzak(list);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v40, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v45, types: [java.util.Map] */
    public final Map<String, Object> zzQ(String str, String str2, boolean z) {
        C4251a c4251a;
        if (this.zzs.zzav().zzd()) {
            this.zzs.zzau().zzb().zza("Cannot get user properties from analytics worker thread");
            c4251a = Collections.emptyMap();
        } else {
            this.zzs.zzat();
            if (zzz.zza()) {
                this.zzs.zzau().zzb().zza("Cannot get user properties from main thread");
                c4251a = Collections.emptyMap();
            } else {
                AtomicReference atomicReference = new AtomicReference();
                this.zzs.zzav().zzi(atomicReference, 5000L, "get user properties", new zzhk(this, atomicReference, null, str, str2, z));
                List<zzkq> list = (List) atomicReference.get();
                if (list == null) {
                    this.zzs.zzau().zzb().zzb("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
                    c4251a = Collections.emptyMap();
                } else {
                    c4251a = new C4251a(list.size());
                    for (zzkq zzkqVar : list) {
                        Object zza = zzkqVar.zza();
                        if (zza != null) {
                            c4251a.put(zzkqVar.zzb, zza);
                        }
                    }
                }
            }
        }
        return c4251a;
    }

    public final String zzR() {
        zzid zzl = this.zzs.zzx().zzl();
        if (zzl != null) {
            return zzl.zza;
        }
        return null;
    }

    public final String zzS() {
        zzid zzl = this.zzs.zzx().zzl();
        if (zzl != null) {
            return zzl.zzb;
        }
        return null;
    }

    public final String zzT() {
        if (this.zzs.zzr() == null) {
            try {
                return zzic.zza(this.zzs.zzax(), "google_app_id", this.zzs.zzv());
            } catch (IllegalStateException e) {
                this.zzs.zzau().zzb().zzb("getGoogleAppId failed with exception", e);
                return null;
            }
        }
        return this.zzs.zzr();
    }

    public final /* synthetic */ void zzU(Bundle bundle) {
        if (bundle == null) {
            this.zzs.zzd().zzr.zzb(new Bundle());
            return;
        }
        Bundle zza = this.zzs.zzd().zzr.zza();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (this.zzs.zzl().zzs(obj)) {
                    this.zzs.zzl().zzM(this.zzn, null, 27, null, null, 0, this.zzs.zzc().zzn(null, zzea.zzaw));
                }
                this.zzs.zzau().zzh().zzc("Invalid default event parameter type. Name, value", str, obj);
            } else if (zzku.zzR(str)) {
                this.zzs.zzau().zzh().zzb("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                zza.remove(str);
            } else {
                zzku zzl = this.zzs.zzl();
                this.zzs.zzc();
                if (zzl.zzt("param", str, 100, obj)) {
                    this.zzs.zzl().zzL(zza, str, obj);
                }
            }
        }
        this.zzs.zzl();
        int zzc = this.zzs.zzc().zzc();
        if (zza.size() > zzc) {
            Iterator it2 = new TreeSet(zza.keySet()).iterator();
            int i = 0;
            while (it2.hasNext()) {
                String str2 = (String) it2.next();
                int i2 = i + 1;
                i = i2;
                if (i2 > zzc) {
                    zza.remove(str2);
                    i = i2;
                }
            }
            this.zzs.zzl().zzM(this.zzn, null, 26, null, null, 0, this.zzs.zzc().zzn(null, zzea.zzaw));
            this.zzs.zzau().zzh().zza("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.zzs.zzd().zzr.zzb(zza);
        this.zzs.zzy().zzA(zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final boolean zze() {
        return false;
    }

    public final void zzh() {
        if (!(this.zzs.zzax().getApplicationContext() instanceof Application) || this.zza == null) {
            return;
        }
        ((Application) this.zzs.zzax().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zza);
    }

    public final Boolean zzi() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.zzs.zzav().zzi(atomicReference, 15000L, "boolean test flag value", new zzhi(this, atomicReference));
    }

    public final String zzj() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.zzs.zzav().zzi(atomicReference, 15000L, "String test flag value", new zzhm(this, atomicReference));
    }

    public final Long zzk() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.zzs.zzav().zzi(atomicReference, 15000L, "long test flag value", new zzhn(this, atomicReference));
    }

    public final Integer zzl() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.zzs.zzav().zzi(atomicReference, 15000L, "int test flag value", new zzho(this, atomicReference));
    }

    public final Double zzm() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.zzs.zzav().zzi(atomicReference, 15000L, "double test flag value", new zzhp(this, atomicReference));
    }

    public final void zzn(Boolean bool) {
        zzb();
        this.zzs.zzav().zzh(new zzhq(this, bool));
    }

    public final void zzo(Bundle bundle, int i, long j) {
        zzb();
        String zza = zzaf.zza(bundle);
        if (zza != null) {
            this.zzs.zzau().zzh().zzb("Ignoring invalid consent setting", zza);
            this.zzs.zzau().zzh().zza("Valid consent values are 'granted', 'denied'");
        }
        zzq(zzaf.zzb(bundle), i, j);
    }

    public final void zzq(zzaf zzafVar, int i, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        zzb();
        if (i != -10 && zzafVar.zze() == null && zzafVar.zzg() == null) {
            this.zzs.zzau().zzh().zza("Discarding empty consent settings");
            return;
        }
        synchronized (this.zzh) {
            z = true;
            z2 = false;
            if (zzaf.zzm(i, this.zzj)) {
                boolean zzi = zzafVar.zzi(this.zzi);
                boolean z4 = false;
                if (zzafVar.zzh()) {
                    z4 = false;
                    if (!this.zzi.zzh()) {
                        z4 = true;
                    }
                }
                zzafVar = zzafVar.zzl(this.zzi);
                this.zzi = zzafVar;
                this.zzj = i;
                z3 = z4;
                z2 = zzi;
            } else {
                z3 = false;
                z = false;
            }
        }
        if (!z) {
            this.zzs.zzau().zzi().zzb("Ignoring lower-priority consent settings, proposed settings", zzafVar);
            return;
        }
        long andIncrement = this.zzk.getAndIncrement();
        if (z2) {
            this.zzg.set(null);
            this.zzs.zzav().zzj(new zzhr(this, zzafVar, j, i, andIncrement, z3));
        } else if (i == 30 || i == -10) {
            this.zzs.zzav().zzj(new zzhs(this, zzafVar, i, andIncrement, z3));
        } else {
            this.zzs.zzav().zzh(new zzht(this, zzafVar, i, andIncrement, z3));
        }
    }

    public final void zzr(zzaf zzafVar) {
        zzg();
        boolean z = (zzafVar.zzh() && zzafVar.zzf()) || this.zzs.zzy().zzH();
        if (z != this.zzs.zzI()) {
            this.zzs.zzH(z);
            zzfb zzd = this.zzs.zzd();
            zzfu zzfuVar = zzd.zzs;
            zzd.zzg();
            Boolean valueOf = zzd.zzd().contains("measurement_enabled_from_api") ? Boolean.valueOf(zzd.zzd().getBoolean("measurement_enabled_from_api", true)) : null;
            if (z && valueOf != null && !valueOf.booleanValue()) {
                return;
            }
            zzY(Boolean.valueOf(z), false);
        }
    }

    public final void zzs(String str, String str2, Bundle bundle) {
        zzv(str, str2, bundle, true, true, this.zzs.zzay().currentTimeMillis());
    }

    public final void zzt(String str, String str2, long j, Bundle bundle) {
        zzg();
        zzu(str, str2, j, bundle, true, this.zzd == null || zzku.zzR(str2), false, null);
    }

    public final void zzu(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        Bundle[] bundleArr;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(bundle);
        zzg();
        zzb();
        if (!this.zzs.zzF()) {
            this.zzs.zzau().zzj().zza("Event not sent since app measurement is disabled");
            return;
        }
        List<String> zzo = this.zzs.zzA().zzo();
        if (zzo != null && !zzo.contains(str2)) {
            this.zzs.zzau().zzj().zzc("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.zzf) {
            this.zzf = true;
            try {
                try {
                    (!this.zzs.zzu() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.zzs.zzax().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, this.zzs.zzax());
                } catch (Exception e) {
                    this.zzs.zzau().zze().zzb("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException e2) {
                this.zzs.zzau().zzi().zza("Tag Manager is not found and thus will not be used");
            }
        }
        if (this.zzs.zzc().zzn(null, zzea.zzab) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
            this.zzs.zzat();
            zzB("auto", "_lgclid", bundle.getString("gclid"), this.zzs.zzay().currentTimeMillis());
        }
        this.zzs.zzat();
        if (z && zzku.zzY(str2)) {
            this.zzs.zzl().zzH(bundle, this.zzs.zzd().zzr.zza());
        }
        if (z3) {
            this.zzs.zzat();
            if (!"_iap".equals(str2)) {
                zzku zzl = this.zzs.zzl();
                int i = 2;
                if (zzl.zzj("event", str2)) {
                    if (!zzl.zzl("event", zzgr.zza, zzgr.zzb, str2)) {
                        i = 13;
                    } else {
                        zzl.zzs.zzc();
                        if (zzl.zzm("event", 40, str2)) {
                            i = 0;
                        }
                    }
                }
                if (i != 0) {
                    this.zzs.zzau().zzd().zzb("Invalid public event name. Event will not be logged (FE)", this.zzs.zzm().zzc(str2));
                    zzku zzl2 = this.zzs.zzl();
                    this.zzs.zzc();
                    String zzC = zzl2.zzC(str2, 40, true);
                    int i2 = 0;
                    if (str2 != null) {
                        i2 = str2.length();
                    }
                    this.zzs.zzl().zzM(this.zzn, null, i, "_ev", zzC, i2, this.zzs.zzc().zzn(null, zzea.zzaw));
                    return;
                }
            }
        }
        this.zzs.zzat();
        zzid zzh = this.zzs.zzx().zzh(false);
        if (zzh != null && !bundle.containsKey("_sc")) {
            zzh.zzd = true;
        }
        zzik.zzm(zzh, bundle, z && z3);
        boolean equals = "am".equals(str);
        boolean zzR = zzku.zzR(str2);
        if (!z || this.zzd == null || zzR) {
            z4 = equals;
        } else if (!equals) {
            this.zzs.zzau().zzj().zzc("Passing event to registered event handler (FE)", this.zzs.zzm().zzc(str2), this.zzs.zzm().zzf(bundle));
            Preconditions.checkNotNull(this.zzd);
            this.zzd.interceptEvent(str, str2, bundle, j);
            return;
        } else {
            z4 = true;
        }
        if (!this.zzs.zzL()) {
            return;
        }
        int zzn = this.zzs.zzl().zzn(str2);
        if (zzn != 0) {
            this.zzs.zzau().zzd().zzb("Invalid event name. Event will not be logged (FE)", this.zzs.zzm().zzc(str2));
            zzku zzl3 = this.zzs.zzl();
            this.zzs.zzc();
            String zzC2 = zzl3.zzC(str2, 40, true);
            int i3 = 0;
            if (str2 != null) {
                i3 = str2.length();
            }
            this.zzs.zzl().zzM(this.zzn, str3, zzn, "_ev", zzC2, i3, this.zzs.zzc().zzn(null, zzea.zzaw));
            return;
        }
        Bundle zzF = this.zzs.zzl().zzF(str3, str2, bundle, CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"}), z3);
        Preconditions.checkNotNull(zzF);
        if (zzF.containsKey("_sc") && zzF.containsKey("_si")) {
            new zzid(zzF.getString("_sn"), zzF.getString("_sc"), zzF.getLong("_si"));
        }
        this.zzs.zzat();
        if (this.zzs.zzx().zzh(false) != null && "_ae".equals(str2)) {
            zzjx zzjxVar = this.zzs.zzh().zzb;
            long elapsedRealtime = zzjxVar.zzc.zzs.zzay().elapsedRealtime();
            long j2 = elapsedRealtime - zzjxVar.zzb;
            zzjxVar.zzb = elapsedRealtime;
            if (j2 > 0) {
                this.zzs.zzl().zzac(zzF, j2);
            }
        }
        zzoa.zzb();
        String str4 = null;
        if (this.zzs.zzc().zzn(null, zzea.zzam)) {
            if (!"auto".equals(str) && "_ssr".equals(str2)) {
                zzku zzl4 = this.zzs.zzl();
                String string = zzF.getString("_ffr");
                if (!Strings.isEmptyOrWhitespace(string)) {
                    str4 = string != null ? string.trim() : string;
                }
                if (zzku.zzS(str4, zzl4.zzs.zzd().zzo.zza())) {
                    zzl4.zzs.zzau().zzj().zza("Not logging duplicate session_start_with_rollout event");
                    return;
                }
                zzl4.zzs.zzd().zzo.zzb(str4);
            } else if ("_ae".equals(str2)) {
                String zza = this.zzs.zzl().zzs.zzd().zzo.zza();
                if (!TextUtils.isEmpty(zza)) {
                    zzF.putString("_ffr", zza);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzF);
        if (this.zzs.zzd().zzj.zza() > 0 && this.zzs.zzd().zzl(j) && this.zzs.zzd().zzl.zza()) {
            C0608b.m7623l(this.zzs, "Current session is expired, remove the session number, ID, and engagement time");
            zzB("auto", "_sid", null, this.zzs.zzay().currentTimeMillis());
            zzB("auto", "_sno", null, this.zzs.zzay().currentTimeMillis());
            zzB("auto", "_se", null, this.zzs.zzay().currentTimeMillis());
        }
        if (zzF.getLong("extend_session", 0L) == 1) {
            C0608b.m7623l(this.zzs, "EXTEND_SESSION param attached: initiate a new session or extend the current active session");
            this.zzs.zzh().zza.zzb(j, true);
        }
        ArrayList arrayList2 = new ArrayList(zzF.keySet());
        Collections.sort(arrayList2);
        int size = arrayList2.size();
        for (int i4 = 0; i4 < size; i4++) {
            String str5 = (String) arrayList2.get(i4);
            if (str5 != null) {
                this.zzs.zzl();
                Object obj = zzF.get(str5);
                if (obj instanceof Bundle) {
                    bundleArr = new Bundle[]{(Bundle) obj};
                } else if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    bundleArr = (Bundle[]) Arrays.copyOf(parcelableArr, parcelableArr.length, Bundle[].class);
                } else if (obj instanceof ArrayList) {
                    ArrayList arrayList3 = (ArrayList) obj;
                    bundleArr = (Bundle[]) arrayList3.toArray(new Bundle[arrayList3.size()]);
                } else {
                    bundleArr = null;
                }
                if (bundleArr != null) {
                    zzF.putParcelableArray(str5, bundleArr);
                }
            }
        }
        int i5 = 0;
        while (i5 < arrayList.size()) {
            Bundle bundle2 = (Bundle) arrayList.get(i5);
            String str6 = i5 != 0 ? "_ep" : str2;
            bundle2.putString("_o", str);
            Bundle bundle3 = bundle2;
            if (z2) {
                bundle3 = this.zzs.zzl().zzU(bundle2);
            }
            this.zzs.zzy().zzl(new zzas(str6, new zzaq(bundle3), str, j), str3);
            if (!z4) {
                for (zzgv zzgvVar : this.zze) {
                    zzgvVar.onEvent(str, str2, new Bundle(bundle3), j);
                }
            }
            i5++;
        }
        this.zzs.zzat();
        if (this.zzs.zzx().zzh(false) == null || !"_ae".equals(str2)) {
            return;
        }
        this.zzs.zzh().zzb.zzd(true, true, this.zzs.zzay().elapsedRealtime());
    }

    public final void zzv(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!this.zzs.zzc().zzn(null, zzea.zzar) || !zzku.zzS(str2, "screen_view")) {
            zzx(str, str2, j, bundle, z2, !z2 || this.zzd == null || zzku.zzR(str2), !z, null);
        } else {
            this.zzs.zzx().zzj(bundle, j);
        }
    }

    public final void zzx(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    for (int i = 0; i < parcelableArr.length; i++) {
                        Parcelable parcelable = parcelableArr[i];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelable);
                        }
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                    }
                }
            }
        }
        this.zzs.zzav().zzh(new zzhc(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    public final void zzy(String str, String str2, Object obj, boolean z) {
        zzz("auto", str2, obj, true, this.zzs.zzay().currentTimeMillis());
    }

    public final void zzz(String str, String str2, Object obj, boolean z, long j) {
        int i;
        if (str == null) {
            str = "app";
        }
        if (z) {
            i = this.zzs.zzl().zzo(str2);
        } else {
            zzku zzl = this.zzs.zzl();
            if (zzl.zzj("user property", str2)) {
                if (!zzl.zzl("user property", zzgt.zza, null, str2)) {
                    i = 15;
                } else {
                    zzl.zzs.zzc();
                    if (zzl.zzm("user property", 24, str2)) {
                        i = 0;
                    }
                }
            }
            i = 6;
        }
        if (i != 0) {
            zzku zzl2 = this.zzs.zzl();
            this.zzs.zzc();
            this.zzs.zzl().zzM(this.zzn, null, i, "_ev", zzl2.zzC(str2, 24, true), str2 != null ? str2.length() : 0, this.zzs.zzc().zzn(null, zzea.zzaw));
        } else if (obj == null) {
            zzA(str, str2, j, null);
        } else {
            int zzJ = this.zzs.zzl().zzJ(str2, obj);
            if (zzJ != 0) {
                zzku zzl3 = this.zzs.zzl();
                this.zzs.zzc();
                this.zzs.zzl().zzM(this.zzn, null, zzJ, "_ev", zzl3.zzC(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0, this.zzs.zzc().zzn(null, zzea.zzaw));
                return;
            }
            Object zzK = this.zzs.zzl().zzK(str2, obj);
            if (zzK == null) {
                return;
            }
            zzA(str, str2, j, zzK);
        }
    }
}
