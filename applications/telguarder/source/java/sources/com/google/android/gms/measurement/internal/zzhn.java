package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.core.app.NotificationCompat;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzll;
import com.google.android.gms.internal.measurement.zzlr;
import com.google.android.gms.internal.measurement.zzlx;
import com.google.android.gms.internal.measurement.zznb;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import com.telguarder.ApplicationConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhn.class */
public final class zzhn extends zzf {
    protected zzhm zza;
    final zzr zzb;
    private zzgl zzd;
    private boolean zzf;
    private final Set<zzgm> zze = new CopyOnWriteArraySet();
    private final Object zzh = new Object();
    protected boolean zzc = true;
    private final zzkj zzn = new zzhc(this);
    private final AtomicReference<String> zzg = new AtomicReference<>();
    private zzaf zzi = new zzaf(null, null);
    private int zzj = 100;
    private long zzl = -1;
    private int zzm = 100;
    private final AtomicLong zzk = new AtomicLong(0);

    public zzhn(zzfl zzflVar) {
        super(zzflVar);
        this.zzb = new zzr(zzflVar);
    }

    public static /* synthetic */ void zzW(zzhn zzhnVar, zzaf zzafVar, int i, long j, boolean z, boolean z2) {
        zzhnVar.zzg();
        zzhnVar.zzb();
        if (j <= zzhnVar.zzl && zzaf.zzm(zzhnVar.zzm, i)) {
            zzhnVar.zzx.zzat().zzi().zzb("Dropped out-of-date consent setting, proposed settings", zzafVar);
            return;
        }
        zzex zzd = zzhnVar.zzx.zzd();
        zzlc.zzb();
        if (zzd.zzx.zzc().zzn(null, zzdw.zzaw)) {
            zzfl zzflVar = zzd.zzx;
            zzd.zzg();
            if (zzd.zzh(i)) {
                SharedPreferences.Editor edit = zzd.zzd().edit();
                edit.putString("consent_settings", zzafVar.zzd());
                edit.putInt("consent_source", i);
                edit.apply();
                zzhnVar.zzl = j;
                zzhnVar.zzm = i;
                zzhnVar.zzx.zzy().zzj(z);
                if (!z2) {
                    return;
                }
                zzhnVar.zzx.zzy().zzv(new AtomicReference<>());
                return;
            }
        }
        zzhnVar.zzx.zzat().zzi().zzb("Lower precedence consent source ignored, proposed source", Integer.valueOf(i));
    }

    public final void zzY(Boolean bool, boolean z) {
        zzg();
        zzb();
        this.zzx.zzat().zzj().zzb("Setting app measurement enabled (FE)", bool);
        this.zzx.zzd().zze(bool);
        zzlc.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzaw) && z) {
            zzex zzd = this.zzx.zzd();
            zzlc.zzb();
            if (zzd.zzx.zzc().zzn(null, zzdw.zzaw)) {
                zzfl zzflVar = zzd.zzx;
                zzd.zzg();
                SharedPreferences.Editor edit = zzd.zzd().edit();
                if (bool != null) {
                    edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
                } else {
                    edit.remove("measurement_enabled_from_api");
                }
                edit.apply();
            }
        }
        zzlc.zzb();
        if (!this.zzx.zzc().zzn(null, zzdw.zzaw) || this.zzx.zzI() || (bool != null && !bool.booleanValue())) {
            zzZ();
        }
    }

    public final void zzZ() {
        zzg();
        String zza = this.zzx.zzd().zzm.zza();
        if (zza != null) {
            if ("unset".equals(zza)) {
                zzB(POBConstants.KEY_APP, "_npa", null, this.zzx.zzax().currentTimeMillis());
            } else {
                zzB(POBConstants.KEY_APP, "_npa", Long.valueOf((true != ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(zza) ? null : 1) == 1 ? 1L : 0L), this.zzx.zzax().currentTimeMillis());
            }
        }
        if (!this.zzx.zzF() || !this.zzc) {
            this.zzx.zzat().zzj().zza("Updating Scion state (FE)");
            this.zzx.zzy().zzi();
            return;
        }
        this.zzx.zzat().zzj().zza("Recording app launch after enabling measurement for the first time (FE)");
        zzH();
        zzlx.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzao)) {
            this.zzx.zzh().zza.zza();
        }
        zzlr.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzar)) {
            zzfa zzi = this.zzx.zzi();
            Preconditions.checkNotNull(zzi);
            if (zzi.zza.zzd().zzi.zza() <= 0) {
                zzi.zza(zzi.zza.zzaw().getPackageName());
            }
        }
        this.zzx.zzau().zzh(new zzgr(this));
    }

    final void zzA(String str, String str2, long j, Object obj) {
        this.zzx.zzau().zzh(new zzgu(this, str, str2, obj, j));
    }

    public final void zzB(String str, String str2, Object obj, long j) {
        Long l;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzg();
        zzb();
        Object obj2 = obj;
        if (FirebaseAnalytics.UserProperty.ALLOW_AD_PERSONALIZATION_SIGNALS.equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    String str4 = "false";
                    Long valueOf = Long.valueOf(true == "false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 1L : 0L);
                    zzew zzewVar = this.zzx.zzd().zzm;
                    if (valueOf.longValue() == 1) {
                        str4 = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
                    }
                    zzewVar.zzb(str4);
                    l = valueOf;
                    str2 = "_npa";
                    obj2 = l;
                }
            }
            obj2 = obj;
            if (obj == null) {
                this.zzx.zzd().zzm.zzb("unset");
                l = obj;
                str2 = "_npa";
                obj2 = l;
            }
        }
        if (!this.zzx.zzF()) {
            this.zzx.zzat().zzk().zza("User property not set since app measurement is disabled");
        } else if (!this.zzx.zzL()) {
        } else {
            this.zzx.zzy().zzs(new zzkg(str2, j, obj2, str));
        }
    }

    public final List<zzkg> zzC(boolean z) {
        zzb();
        this.zzx.zzat().zzk().zza("Getting user properties (FE)");
        if (this.zzx.zzau().zzd()) {
            this.zzx.zzat().zzb().zza("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        }
        this.zzx.zzas();
        if (zzz.zza()) {
            this.zzx.zzat().zzb().zza("Cannot get all user properties from main thread");
            return Collections.emptyList();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.zzx.zzau().zzi(atomicReference, ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY, "get user properties", new zzgv(this, atomicReference, z));
        List<zzkg> list = (List) atomicReference.get();
        if (list != null) {
            return list;
        }
        this.zzx.zzat().zzb().zzb("Timed out waiting for get user properties, includeInternal", Boolean.valueOf(z));
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
        this.zzx.zzau().zzh(new zzgw(this, j));
    }

    public final void zzG(long j, boolean z) {
        zzg();
        zzb();
        this.zzx.zzat().zzj().zza("Resetting analytics data (FE)");
        zzjq zzh = this.zzx.zzh();
        zzh.zzg();
        zzjp zzjpVar = zzh.zza;
        zzh.zzb.zzc();
        boolean zzF = this.zzx.zzF();
        zzex zzd = this.zzx.zzd();
        zzd.zzh.zzb(j);
        if (!TextUtils.isEmpty(zzd.zzx.zzd().zzt.zza())) {
            zzd.zzt.zzb(null);
        }
        zzlx.zzb();
        if (zzd.zzx.zzc().zzn(null, zzdw.zzao)) {
            zzd.zzo.zzb(0L);
        }
        if (!zzd.zzx.zzc().zzr()) {
            zzd.zzj(!zzF);
        }
        zzd.zzu.zzb(null);
        zzd.zzv.zzb(0L);
        zzd.zzw.zzb(null);
        if (z) {
            this.zzx.zzy().zzu();
        }
        zzlx.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzao)) {
            this.zzx.zzh().zza.zza();
        }
        this.zzc = !zzF;
    }

    public final void zzH() {
        zzg();
        zzb();
        if (this.zzx.zzL()) {
            if (this.zzx.zzc().zzn(null, zzdw.zzab)) {
                zzae zzc = this.zzx.zzc();
                zzc.zzx.zzas();
                Boolean zzp = zzc.zzp("google_analytics_deferred_deep_link_enabled");
                if (zzp != null && zzp.booleanValue()) {
                    this.zzx.zzat().zzj().zza("Deferred Deep Link feature enabled.");
                    this.zzx.zzau().zzh(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzgp
                        private final zzhn zza;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zza = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzhn zzhnVar = this.zza;
                            zzhnVar.zzg();
                            if (zzhnVar.zzx.zzd().zzr.zza()) {
                                zzhnVar.zzx.zzat().zzj().zza("Deferred Deep Link already retrieved. Not fetching again.");
                                return;
                            }
                            long zza = zzhnVar.zzx.zzd().zzs.zza();
                            zzhnVar.zzx.zzd().zzs.zzb(1 + zza);
                            zzhnVar.zzx.zzc();
                            if (zza < 5) {
                                zzhnVar.zzx.zzM();
                                return;
                            }
                            zzhnVar.zzx.zzat().zze().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                            zzhnVar.zzx.zzd().zzr.zzb(true);
                        }
                    });
                }
            }
            this.zzx.zzy().zzy();
            this.zzc = false;
            zzex zzd = this.zzx.zzd();
            zzd.zzg();
            String string = zzd.zzd().getString("previous_os_version", null);
            zzd.zzx.zzz().zzv();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = zzd.zzd().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            this.zzx.zzz().zzv();
            if (string.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            zzs("auto", "_ou", bundle);
        }
    }

    public final void zzI(zzgl zzglVar) {
        zzgl zzglVar2;
        zzg();
        zzb();
        if (zzglVar != null && zzglVar != (zzglVar2 = this.zzd)) {
            Preconditions.checkState(zzglVar2 == null, "EventInterceptor already set.");
        }
        this.zzd = zzglVar;
    }

    public final void zzJ(zzgm zzgmVar) {
        zzb();
        Preconditions.checkNotNull(zzgmVar);
        if (!this.zze.add(zzgmVar)) {
            this.zzx.zzat().zze().zza("OnEventListener already registered");
        }
    }

    public final void zzK(zzgm zzgmVar) {
        zzb();
        Preconditions.checkNotNull(zzgmVar);
        if (!this.zze.remove(zzgmVar)) {
            this.zzx.zzat().zze().zza("OnEventListener had not been registered");
        }
    }

    public final int zzL(String str) {
        Preconditions.checkNotEmpty(str);
        this.zzx.zzc();
        return 25;
    }

    public final void zzM(Bundle bundle) {
        zzN(bundle, this.zzx.zzax().currentTimeMillis());
    }

    public final void zzN(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            this.zzx.zzat().zze().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        zzgh.zzb(bundle2, "app_id", String.class, null);
        zzgh.zzb(bundle2, "origin", String.class, null);
        zzgh.zzb(bundle2, "name", String.class, null);
        zzgh.zzb(bundle2, "value", Object.class, null);
        zzgh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzgh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzgh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzgh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzgh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzgh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzgh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzgh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzgh.zzb(bundle2, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString("name"));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get("value"));
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (this.zzx.zzl().zzo(string) != 0) {
            this.zzx.zzat().zzb().zzb("Invalid conditional user property name", this.zzx.zzm().zze(string));
        } else if (this.zzx.zzl().zzJ(string, obj) != 0) {
            this.zzx.zzat().zzb().zzc("Invalid conditional user property value", this.zzx.zzm().zze(string), obj);
        } else {
            Object zzK = this.zzx.zzl().zzK(string, obj);
            if (zzK == null) {
                this.zzx.zzat().zzb().zzc("Unable to normalize conditional user property value", this.zzx.zzm().zze(string), obj);
                return;
            }
            zzgh.zza(bundle2, zzK);
            long j2 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
            if (!TextUtils.isEmpty(bundle2.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME))) {
                this.zzx.zzc();
                if (j2 > 15552000000L || j2 < 1) {
                    this.zzx.zzat().zzb().zzc("Invalid conditional user property timeout", this.zzx.zzm().zze(string), Long.valueOf(j2));
                    return;
                }
            }
            long j3 = bundle2.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
            this.zzx.zzc();
            if (j3 > 15552000000L || j3 < 1) {
                this.zzx.zzat().zzb().zzc("Invalid conditional user property time to live", this.zzx.zzm().zze(string), Long.valueOf(j3));
            } else {
                this.zzx.zzau().zzh(new zzgx(this, bundle2));
            }
        }
    }

    public final void zzO(String str, String str2, Bundle bundle) {
        long currentTimeMillis = this.zzx.zzax().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, currentTimeMillis);
        if (str2 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str2);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        this.zzx.zzau().zzh(new zzgy(this, bundle2));
    }

    public final ArrayList<Bundle> zzP(String str, String str2) {
        ArrayList<Bundle> arrayList;
        if (this.zzx.zzau().zzd()) {
            this.zzx.zzat().zzb().zza("Cannot get conditional user properties from analytics worker thread");
            arrayList = new ArrayList<>(0);
        } else {
            this.zzx.zzas();
            if (zzz.zza()) {
                this.zzx.zzat().zzb().zza("Cannot get conditional user properties from main thread");
                arrayList = new ArrayList<>(0);
            } else {
                AtomicReference atomicReference = new AtomicReference();
                this.zzx.zzau().zzi(atomicReference, ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY, "get conditional user properties", new zzha(this, atomicReference, null, str, str2));
                List list = (List) atomicReference.get();
                if (list == null) {
                    this.zzx.zzat().zzb().zzb("Timed out waiting for get conditional user properties", null);
                    arrayList = new ArrayList<>();
                } else {
                    arrayList = zzkk.zzak(list);
                }
            }
        }
        return arrayList;
    }

    public final Map<String, Object> zzQ(String str, String str2, boolean z) {
        ArrayMap arrayMap;
        if (this.zzx.zzau().zzd()) {
            this.zzx.zzat().zzb().zza("Cannot get user properties from analytics worker thread");
            arrayMap = Collections.emptyMap();
        } else {
            this.zzx.zzas();
            if (zzz.zza()) {
                this.zzx.zzat().zzb().zza("Cannot get user properties from main thread");
                arrayMap = Collections.emptyMap();
            } else {
                AtomicReference atomicReference = new AtomicReference();
                this.zzx.zzau().zzi(atomicReference, ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY, "get user properties", new zzhb(this, atomicReference, null, str, str2, z));
                List<zzkg> list = (List) atomicReference.get();
                if (list == null) {
                    this.zzx.zzat().zzb().zzb("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
                    arrayMap = Collections.emptyMap();
                } else {
                    arrayMap = new ArrayMap(list.size());
                    for (zzkg zzkgVar : list) {
                        Object zza = zzkgVar.zza();
                        if (zza != null) {
                            arrayMap.put(zzkgVar.zzb, zza);
                        }
                    }
                }
            }
        }
        return arrayMap;
    }

    public final String zzR() {
        zzhu zzl = this.zzx.zzx().zzl();
        if (zzl != null) {
            return zzl.zza;
        }
        return null;
    }

    public final String zzS() {
        zzhu zzl = this.zzx.zzx().zzl();
        if (zzl != null) {
            return zzl.zzb;
        }
        return null;
    }

    public final String zzT() {
        if (this.zzx.zzr() == null) {
            try {
                zznb.zzb();
                return this.zzx.zzc().zzn(null, zzdw.zzaB) ? zzht.zzb(this.zzx.zzaw(), "google_app_id", this.zzx.zzv()) : zzht.zza(this.zzx.zzaw(), "google_app_id");
            } catch (IllegalStateException e) {
                this.zzx.zzat().zzb().zzb("getGoogleAppId failed with exception", e);
                return null;
            }
        }
        return this.zzx.zzr();
    }

    public final /* synthetic */ void zzU(Bundle bundle) {
        if (bundle == null) {
            this.zzx.zzd().zzw.zzb(new Bundle());
            return;
        }
        Bundle zza = this.zzx.zzd().zzw.zza();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                if (this.zzx.zzl().zzs(obj)) {
                    this.zzx.zzl().zzM(this.zzn, null, 27, null, null, 0);
                }
                this.zzx.zzat().zzh().zzc("Invalid default event parameter type. Name, value", str, obj);
            } else if (zzkk.zzR(str)) {
                this.zzx.zzat().zzh().zzb("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                zza.remove(str);
            } else {
                zzkk zzl = this.zzx.zzl();
                this.zzx.zzc();
                if (zzl.zzt("param", str, 100, obj)) {
                    this.zzx.zzl().zzL(zza, str, obj);
                }
            }
        }
        this.zzx.zzl();
        int zzc = this.zzx.zzc().zzc();
        if (zza.size() > zzc) {
            int i = 0;
            for (String str2 : new TreeSet(zza.keySet())) {
                int i2 = i + 1;
                i = i2;
                if (i2 > zzc) {
                    zza.remove(str2);
                    i = i2;
                }
            }
            this.zzx.zzl().zzM(this.zzn, null, 26, null, null, 0);
            this.zzx.zzat().zzh().zza("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        this.zzx.zzd().zzw.zzb(zza);
        this.zzx.zzy().zzA(zza);
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zze() {
        return false;
    }

    public final void zzh() {
        if (!(this.zzx.zzaw().getApplicationContext() instanceof Application) || this.zza == null) {
            return;
        }
        ((Application) this.zzx.zzaw().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zza);
    }

    public final Boolean zzi() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.zzx.zzau().zzi(atomicReference, 15000L, "boolean test flag value", new zzgz(this, atomicReference));
    }

    public final String zzj() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.zzx.zzau().zzi(atomicReference, 15000L, "String test flag value", new zzhd(this, atomicReference));
    }

    public final Long zzk() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.zzx.zzau().zzi(atomicReference, 15000L, "long test flag value", new zzhe(this, atomicReference));
    }

    public final Integer zzl() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.zzx.zzau().zzi(atomicReference, 15000L, "int test flag value", new zzhf(this, atomicReference));
    }

    public final Double zzm() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.zzx.zzau().zzi(atomicReference, 15000L, "double test flag value", new zzhg(this, atomicReference));
    }

    public final void zzn(Boolean bool) {
        zzb();
        this.zzx.zzau().zzh(new zzhh(this, bool));
    }

    public final void zzo(Bundle bundle, int i, long j) {
        zzlc.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzaw)) {
            zzb();
            String zza = zzaf.zza(bundle);
            if (zza != null) {
                this.zzx.zzat().zzh().zzb("Ignoring invalid consent setting", zza);
                this.zzx.zzat().zzh().zza("Valid consent values are 'granted', 'denied'");
            }
            zzq(zzaf.zzb(bundle), i, j);
        }
    }

    public final void zzq(zzaf zzafVar, int i, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        zzlc.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzaw)) {
            zzb();
            if (this.zzx.zzc().zzn(null, zzdw.zzax) && i == 20) {
                i = 20;
            } else if (zzafVar.zze() == null && zzafVar.zzg() == null) {
                this.zzx.zzat().zzh().zza("Discarding empty consent settings");
                return;
            }
            synchronized (this.zzh) {
                z = true;
                z2 = false;
                if (zzaf.zzm(i, this.zzj)) {
                    z2 = zzafVar.zzi(this.zzi);
                    z3 = false;
                    if (zzafVar.zzh()) {
                        z3 = false;
                        if (!this.zzi.zzh()) {
                            z3 = true;
                        }
                    }
                    zzafVar = zzafVar.zzl(this.zzi);
                    this.zzi = zzafVar;
                    this.zzj = i;
                } else {
                    z = false;
                    z3 = false;
                }
            }
            if (!z) {
                this.zzx.zzat().zzi().zzb("Ignoring lower-priority consent settings, proposed settings", zzafVar);
                return;
            }
            long andIncrement = this.zzk.getAndIncrement();
            if (z2) {
                this.zzg.set(null);
                this.zzx.zzau().zzj(new zzhi(this, zzafVar, j, i, andIncrement, z3));
                return;
            }
            if (this.zzx.zzc().zzn(null, zzdw.zzax)) {
                if (i != 40) {
                    if (i == 20) {
                        i = 20;
                    }
                }
                this.zzx.zzau().zzj(new zzhj(this, zzafVar, i, andIncrement, z3));
                return;
            }
            this.zzx.zzau().zzh(new zzhk(this, zzafVar, i, andIncrement, z3));
        }
    }

    public final void zzr(zzaf zzafVar) {
        zzg();
        boolean z = (zzafVar.zzh() && zzafVar.zzf()) || this.zzx.zzy().zzH();
        if (z != this.zzx.zzI()) {
            this.zzx.zzH(z);
            zzex zzd = this.zzx.zzd();
            zzlc.zzb();
            Boolean bool = null;
            if (zzd.zzx.zzc().zzn(null, zzdw.zzaw)) {
                zzfl zzflVar = zzd.zzx;
                zzd.zzg();
                bool = null;
                if (zzd.zzd().contains("measurement_enabled_from_api")) {
                    bool = Boolean.valueOf(zzd.zzd().getBoolean("measurement_enabled_from_api", true));
                }
            }
            if (z && bool != null && !bool.booleanValue()) {
                return;
            }
            zzY(Boolean.valueOf(z), false);
        }
    }

    public final void zzs(String str, String str2, Bundle bundle) {
        zzv(str, str2, bundle, true, true, this.zzx.zzax().currentTimeMillis());
    }

    public final void zzt(String str, String str2, long j, Bundle bundle) {
        zzg();
        zzu(str, str2, j, bundle, true, this.zzd == null || zzkk.zzR(str2), false, null);
    }

    public final void zzu(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        boolean z4;
        Bundle[] bundleArr;
        String str4;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(bundle);
        zzg();
        zzb();
        if (!this.zzx.zzF()) {
            this.zzx.zzat().zzj().zza("Event not sent since app measurement is disabled");
            return;
        }
        List<String> zzo = this.zzx.zzA().zzo();
        if (zzo != null && !zzo.contains(str2)) {
            this.zzx.zzat().zzj().zzc("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.zzf) {
            this.zzf = true;
            try {
                try {
                    (!this.zzx.zzu() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, this.zzx.zzaw().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, this.zzx.zzaw());
                } catch (Exception e) {
                    this.zzx.zzat().zze().zzb("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException e2) {
                this.zzx.zzat().zzi().zza("Tag Manager is not found and thus will not be used");
            }
        }
        if (this.zzx.zzc().zzn(null, zzdw.zzac) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
            this.zzx.zzas();
            zzB("auto", "_lgclid", bundle.getString("gclid"), this.zzx.zzax().currentTimeMillis());
        }
        this.zzx.zzas();
        if (z && zzkk.zzY(str2)) {
            this.zzx.zzl().zzH(bundle, this.zzx.zzd().zzw.zza());
        }
        if (z3) {
            this.zzx.zzas();
            if (!"_iap".equals(str2)) {
                zzkk zzl = this.zzx.zzl();
                int i = 2;
                if (zzl.zzj(NotificationCompat.CATEGORY_EVENT, str2)) {
                    if (!zzl.zzl(NotificationCompat.CATEGORY_EVENT, zzgi.zza, zzgi.zzb, str2)) {
                        i = 13;
                    } else {
                        zzl.zzx.zzc();
                        if (zzl.zzm(NotificationCompat.CATEGORY_EVENT, 40, str2)) {
                            i = 0;
                        }
                    }
                }
                if (i != 0) {
                    this.zzx.zzat().zzd().zzb("Invalid public event name. Event will not be logged (FE)", this.zzx.zzm().zzc(str2));
                    zzkk zzl2 = this.zzx.zzl();
                    this.zzx.zzc();
                    String zzC = zzl2.zzC(str2, 40, true);
                    int i2 = 0;
                    if (str2 != null) {
                        i2 = str2.length();
                    }
                    this.zzx.zzl().zzM(this.zzn, null, i, "_ev", zzC, i2);
                    return;
                }
            }
        }
        this.zzx.zzas();
        zzhu zzh = this.zzx.zzx().zzh(false);
        if (zzh != null && !bundle.containsKey("_sc")) {
            zzh.zzd = true;
        }
        zzib.zzm(zzh, bundle, z && z3);
        boolean equals = "am".equals(str);
        boolean zzR = zzkk.zzR(str2);
        if (!z || this.zzd == null || zzR) {
            z4 = equals;
        } else if (!equals) {
            this.zzx.zzat().zzj().zzc("Passing event to registered event handler (FE)", this.zzx.zzm().zzc(str2), this.zzx.zzm().zzf(bundle));
            Preconditions.checkNotNull(this.zzd);
            this.zzd.interceptEvent(str, str2, bundle, j);
            return;
        } else {
            z4 = true;
        }
        if (!this.zzx.zzL()) {
            return;
        }
        int zzn = this.zzx.zzl().zzn(str2);
        if (zzn != 0) {
            this.zzx.zzat().zzd().zzb("Invalid event name. Event will not be logged (FE)", this.zzx.zzm().zzc(str2));
            zzkk zzl3 = this.zzx.zzl();
            this.zzx.zzc();
            String zzC2 = zzl3.zzC(str2, 40, true);
            int i3 = 0;
            if (str2 != null) {
                i3 = str2.length();
            }
            this.zzx.zzl().zzM(this.zzn, str3, zzn, "_ev", zzC2, i3);
            return;
        }
        Bundle zzF = this.zzx.zzl().zzF(str3, str2, bundle, CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"}), z3);
        Preconditions.checkNotNull(zzF);
        if (zzF.containsKey("_sc") && zzF.containsKey("_si")) {
            new zzhu(zzF.getString("_sn"), zzF.getString("_sc"), Long.valueOf(zzF.getLong("_si")).longValue());
        }
        this.zzx.zzas();
        if (this.zzx.zzx().zzh(false) != null && "_ae".equals(str2)) {
            zzjo zzjoVar = this.zzx.zzh().zzb;
            long elapsedRealtime = zzjoVar.zzc.zzx.zzax().elapsedRealtime();
            long j2 = elapsedRealtime - zzjoVar.zzb;
            zzjoVar.zzb = elapsedRealtime;
            if (j2 > 0) {
                this.zzx.zzl().zzac(zzF, j2);
            }
        }
        zzll.zzb();
        if (this.zzx.zzc().zzn(null, zzdw.zzan)) {
            if (!"auto".equals(str) && "_ssr".equals(str2)) {
                zzkk zzl4 = this.zzx.zzl();
                String string = zzF.getString("_ffr");
                if (Strings.isEmptyOrWhitespace(string)) {
                    str4 = null;
                } else {
                    str4 = string;
                    if (string != null) {
                        str4 = string.trim();
                    }
                }
                if (zzkk.zzS(str4, zzl4.zzx.zzd().zzt.zza())) {
                    zzl4.zzx.zzat().zzj().zza("Not logging duplicate session_start_with_rollout event");
                    return;
                }
                zzl4.zzx.zzd().zzt.zzb(str4);
            } else if ("_ae".equals(str2)) {
                String zza = this.zzx.zzl().zzx.zzd().zzt.zza();
                if (!TextUtils.isEmpty(zza)) {
                    zzF.putString("_ffr", zza);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzF);
        this.zzx.zzl().zzf().nextLong();
        if (this.zzx.zzd().zzo.zza() > 0 && this.zzx.zzd().zzl(j) && this.zzx.zzd().zzq.zza()) {
            this.zzx.zzat().zzk().zza("Current session is expired, remove the session number, ID, and engagement time");
            zzB("auto", "_sid", null, this.zzx.zzax().currentTimeMillis());
            zzB("auto", "_sno", null, this.zzx.zzax().currentTimeMillis());
            zzB("auto", "_se", null, this.zzx.zzax().currentTimeMillis());
        }
        if (zzF.getLong(FirebaseAnalytics.Param.EXTEND_SESSION, 0L) == 1) {
            this.zzx.zzat().zzk().zza("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
            this.zzx.zzh().zza.zzb(j, true);
        }
        ArrayList arrayList2 = new ArrayList(zzF.keySet());
        Collections.sort(arrayList2);
        int size = arrayList2.size();
        for (int i4 = 0; i4 < size; i4++) {
            String str5 = (String) arrayList2.get(i4);
            if (str5 != null) {
                this.zzx.zzl();
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
                bundle3 = this.zzx.zzl().zzU(bundle2);
            }
            this.zzx.zzy().zzl(new zzas(str6, new zzaq(bundle3), str, j), str3);
            if (!z4) {
                for (zzgm zzgmVar : this.zze) {
                    zzgmVar.onEvent(str, str2, new Bundle(bundle3), j);
                }
            }
            i5++;
        }
        this.zzx.zzas();
        if (this.zzx.zzx().zzh(false) == null || !"_ae".equals(str2)) {
            return;
        }
        this.zzx.zzh().zzb.zzd(true, true, this.zzx.zzax().elapsedRealtime());
    }

    public final void zzv(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        if (str == null) {
            str = POBConstants.KEY_APP;
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (!this.zzx.zzc().zzn(null, zzdw.zzat) || !zzkk.zzS(str2, FirebaseAnalytics.Event.SCREEN_VIEW)) {
            zzx(str, str2, j, bundle, z2, !z2 || this.zzd == null || zzkk.zzR(str2), !z, null);
        } else {
            this.zzx.zzx().zzj(bundle, j);
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
        this.zzx.zzau().zzh(new zzgt(this, str, str2, j, bundle2, z, z2, z3, str3));
    }

    public final void zzy(String str, String str2, Object obj, boolean z) {
        zzz("auto", str2, obj, true, this.zzx.zzax().currentTimeMillis());
    }

    public final void zzz(String str, String str2, Object obj, boolean z, long j) {
        int i;
        if (str == null) {
            str = POBConstants.KEY_APP;
        }
        if (z) {
            i = this.zzx.zzl().zzo(str2);
        } else {
            zzkk zzl = this.zzx.zzl();
            if (zzl.zzj("user property", str2)) {
                if (!zzl.zzl("user property", zzgk.zza, null, str2)) {
                    i = 15;
                } else {
                    zzl.zzx.zzc();
                    if (zzl.zzm("user property", 24, str2)) {
                        i = 0;
                    }
                }
            }
            i = 6;
        }
        if (i != 0) {
            zzkk zzl2 = this.zzx.zzl();
            this.zzx.zzc();
            this.zzx.zzl().zzM(this.zzn, null, i, "_ev", zzl2.zzC(str2, 24, true), str2 != null ? str2.length() : 0);
        } else if (obj == null) {
            zzA(str, str2, j, null);
        } else {
            int zzJ = this.zzx.zzl().zzJ(str2, obj);
            if (zzJ != 0) {
                zzkk zzl3 = this.zzx.zzl();
                this.zzx.zzc();
                this.zzx.zzl().zzM(this.zzn, null, zzJ, "_ev", zzl3.zzC(str2, 24, true), ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0);
                return;
            }
            Object zzK = this.zzx.zzl().zzK(str2, obj);
            if (zzK == null) {
                return;
            }
            zzA(str, str2, j, zzK);
        }
    }
}
