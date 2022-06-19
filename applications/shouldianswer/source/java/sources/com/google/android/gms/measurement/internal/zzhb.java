package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.p014c.C0374a;
import com.google.android.gms.common.api.internal.GoogleServices;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.internal.measurement.zzkb;
import com.google.android.gms.internal.measurement.zzkt;
import com.google.android.gms.internal.measurement.zzmj;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhb.class */
public final class zzhb extends zze {
    protected zzhy zza;
    private zzha zzc;
    private boolean zze;
    private final Set<zzgz> zzd = new CopyOnWriteArraySet();
    protected boolean zzb = true;
    private final AtomicReference<String> zzf = new AtomicReference<>();

    public zzhb(zzga zzgaVar) {
        super(zzgaVar);
    }

    private final void zza(String str, String str2, long j, Object obj) {
        zzq().zza(new zzhf(this, str, str2, obj, j));
    }

    public final void zzam() {
        if (zzt().zza(zzap.zzbb)) {
            zzd();
            String zza = zzs().zzn.zza();
            if (zza != null) {
                if ("unset".equals(zza)) {
                    zza("app", "_npa", (Object) null, zzm().currentTimeMillis());
                } else {
                    zza("app", "_npa", Long.valueOf(("true".equals(zza) ? 1 : null) == 1 ? 1L : 0L), zzm().currentTimeMillis());
                }
            }
        }
        if (!this.zzx.zzab() || !this.zzb) {
            zzr().zzw().zza("Updating Scion state (FE)");
            zzh().zzac();
            return;
        }
        zzr().zzw().zza("Recording app launch after enabling measurement for the first time (FE)");
        zzai();
        if (!zzkt.zzb() || !zzt().zza(zzap.zzcm)) {
            return;
        }
        zzk().zza.zza();
    }

    private final ArrayList<Bundle> zzb(String str, String str2, String str3) {
        if (zzq().zzg()) {
            zzr().zzf().zza("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList<>(0);
        } else if (zzw.zza()) {
            zzr().zzf().zza("Cannot get conditional user properties from main thread");
            return new ArrayList<>(0);
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.zzx.zzq().zza(atomicReference, 5000L, "get conditional user properties", new zzho(this, atomicReference, str, str2, str3));
            List list = (List) atomicReference.get();
            if (list != null) {
                return zzkm.zzb(list);
            }
            zzr().zzi().zza("Timed out waiting for get conditional user properties", str);
            return new ArrayList<>();
        }
    }

    private final Map<String, Object> zzb(String str, String str2, String str3, boolean z) {
        if (zzq().zzg()) {
            zzr().zzf().zza("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        } else if (zzw.zza()) {
            zzr().zzf().zza("Cannot get user properties from main thread");
            return Collections.emptyMap();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.zzx.zzq().zza(atomicReference, 5000L, "get user properties", new zzhq(this, atomicReference, str, str2, str3, z));
            List<zzkl> list = (List) atomicReference.get();
            if (list == null) {
                zzr().zzi().zza("Timed out waiting for handle get user properties");
                return Collections.emptyMap();
            }
            C0374a c0374a = new C0374a(list.size());
            for (zzkl zzklVar : list) {
                c0374a.put(zzklVar.zza, zzklVar.zza());
            }
            return c0374a;
        }
    }

    private final void zzb(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        zzgw.zza(bundle, "app_id", String.class, null);
        zzgw.zza(bundle, "origin", String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.NAME, String.class, null);
        zzgw.zza(bundle, "value", Object.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.class, 0L);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS, Bundle.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS, Bundle.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.class, 0L);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, String.class, null);
        zzgw.zza(bundle, AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, Bundle.class, null);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle.getString("origin"));
        Preconditions.checkNotNull(bundle.get("value"));
        bundle.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, j);
        String string = bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME);
        Object obj = bundle.get("value");
        if (zzp().zzc(string) != 0) {
            zzr().zzf().zza("Invalid conditional user property name", zzo().zzc(string));
        } else if (zzp().zzb(string, obj) != 0) {
            zzr().zzf().zza("Invalid conditional user property value", zzo().zzc(string), obj);
        } else {
            Object zzc = zzp().zzc(string, obj);
            if (zzc == null) {
                zzr().zzf().zza("Unable to normalize conditional user property value", zzo().zzc(string), obj);
                return;
            }
            zzgw.zza(bundle, zzc);
            long j2 = bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT);
            if (!TextUtils.isEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME)) && (j2 > 15552000000L || j2 < 1)) {
                zzr().zzf().zza("Invalid conditional user property timeout", zzo().zzc(string), Long.valueOf(j2));
                return;
            }
            long j3 = bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE);
            if (j3 > 15552000000L || j3 < 1) {
                zzr().zzf().zza("Invalid conditional user property time to live", zzo().zzc(string), Long.valueOf(j3));
            } else {
                zzq().zza(new zzhm(this, bundle));
            }
        }
    }

    private final void zzb(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        zzq().zza(new zzhg(this, str, str2, j, zzkm.zzb(bundle), z, z2, z3, str3));
    }

    private final void zzb(String str, String str2, String str3, Bundle bundle) {
        long currentTimeMillis = zzm().currentTimeMillis();
        Preconditions.checkNotEmpty(str2);
        Bundle bundle2 = new Bundle();
        if (str != null) {
            bundle2.putString("app_id", str);
        }
        bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.NAME, str2);
        bundle2.putLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, currentTimeMillis);
        if (str3 != null) {
            bundle2.putString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME, str3);
            bundle2.putBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS, bundle);
        }
        zzq().zza(new zzhl(this, bundle2));
    }

    public final void zzc(Bundle bundle) {
        zzd();
        zzw();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        Preconditions.checkNotEmpty(bundle.getString("origin"));
        Preconditions.checkNotNull(bundle.get("value"));
        if (!this.zzx.zzab()) {
            zzr().zzw().zza("Conditional property not sent since collection is disabled");
            return;
        }
        zzkl zzklVar = new zzkl(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP), bundle.get("value"), bundle.getString("origin"));
        try {
            zzan zza = zzp().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_EVENT_PARAMS), bundle.getString("origin"), 0L, true, false);
            zzh().zza(new zzv(bundle.getString("app_id"), bundle.getString("origin"), zzklVar, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), false, bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), zzp().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.TIMED_OUT_EVENT_PARAMS), bundle.getString("origin"), 0L, true, false), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), zza, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzp().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString("origin"), 0L, true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    public final void zzd(Bundle bundle) {
        zzd();
        zzw();
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME));
        if (!this.zzx.zzab()) {
            zzr().zzw().zza("Conditional property not cleared since collection is disabled");
            return;
        }
        try {
            zzh().zza(new zzv(bundle.getString("app_id"), bundle.getString("origin"), new zzkl(bundle.getString(AppMeasurementSdk.ConditionalUserProperty.NAME), 0L, null, null), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), bundle.getBoolean(AppMeasurementSdk.ConditionalUserProperty.ACTIVE), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT), null, bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE), zzp().zza(bundle.getString("app_id"), bundle.getString(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_NAME), bundle.getBundle(AppMeasurementSdk.ConditionalUserProperty.EXPIRED_EVENT_PARAMS), bundle.getString("origin"), bundle.getLong(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP), true, false)));
        } catch (IllegalArgumentException e) {
        }
    }

    public final void zzd(boolean z) {
        zzd();
        zzb();
        zzw();
        zzr().zzw().zza("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        zzs().zzb(z);
        zzam();
    }

    private final String zze(long j) {
        AtomicReference atomicReference = new AtomicReference();
        synchronized (atomicReference) {
            zzq().zza(new zzhh(this, atomicReference));
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                zzr().zzi().zza("Interrupted waiting for app instance id");
                return null;
            }
        }
        return (String) atomicReference.get();
    }

    public final ArrayList<Bundle> zza(String str, String str2) {
        zzb();
        return zzb((String) null, str, str2);
    }

    public final ArrayList<Bundle> zza(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zza();
        return zzb(str, str2, str3);
    }

    public final Map<String, Object> zza(String str, String str2, String str3, boolean z) {
        Preconditions.checkNotEmpty(str);
        zza();
        return zzb(str, str2, str3, z);
    }

    public final Map<String, Object> zza(String str, String str2, boolean z) {
        zzb();
        return zzb((String) null, str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(long j) {
        zzb();
        zzq().zza(new zzhw(this, j));
    }

    public final void zza(Bundle bundle) {
        zza(bundle, zzm().currentTimeMillis());
    }

    public final void zza(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        zzb();
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            zzr().zzi().zza("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        zzb(bundle2, j);
    }

    public final void zza(zzgz zzgzVar) {
        zzb();
        zzw();
        Preconditions.checkNotNull(zzgzVar);
        if (!this.zzd.add(zzgzVar)) {
            zzr().zzi().zza("OnEventListener already registered");
        }
    }

    public final void zza(zzha zzhaVar) {
        zzha zzhaVar2;
        zzd();
        zzb();
        zzw();
        if (zzhaVar != null && zzhaVar != (zzhaVar2 = this.zzc)) {
            Preconditions.checkState(zzhaVar2 == null, "EventInterceptor already set.");
        }
        this.zzc = zzhaVar;
    }

    public final void zza(String str) {
        this.zzf.set(str);
    }

    public final void zza(String str, String str2, long j, Bundle bundle) {
        zzb();
        zzd();
        zza(str, str2, j, bundle, true, this.zzc == null || zzkm.zze(str2), false, null);
    }

    public final void zza(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        String str4;
        ArrayList arrayList;
        zzif zzifVar;
        boolean z4;
        List<String> zzah;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(bundle);
        zzd();
        zzw();
        if (!this.zzx.zzab()) {
            zzr().zzw().zza("Event not sent since app measurement is disabled");
        } else if (!zzt().zza(zzap.zzbk) || (zzah = zzg().zzah()) == null || zzah.contains(str2)) {
            if (!this.zze) {
                this.zze = true;
                try {
                    try {
                        (!this.zzx.zzt() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, zzn().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, zzn());
                    } catch (Exception e) {
                        zzr().zzi().zza("Failed to invoke Tag Manager's initialize() method", e);
                    }
                } catch (ClassNotFoundException e2) {
                    zzr().zzv().zza("Tag Manager is not found and thus will not be used");
                }
            }
            if (zzt().zza(zzap.zzbw) && "_cmp".equals(str2) && bundle.containsKey("gclid")) {
                zza("auto", "_lgclid", bundle.getString("gclid"), zzm().currentTimeMillis());
            }
            if (z3) {
                zzu();
                if (!"_iap".equals(str2)) {
                    zzkm zzi = this.zzx.zzi();
                    int i = 2;
                    if (zzi.zza("event", str2)) {
                        if (!zzi.zza("event", zzgv.zza, str2)) {
                            i = 13;
                        } else if (zzi.zza("event", 40, str2)) {
                            i = 0;
                        }
                    }
                    if (i != 0) {
                        zzr().zzh().zza("Invalid public event name. Event will not be logged (FE)", zzo().zza(str2));
                        this.zzx.zzi();
                        String zza = zzkm.zza(str2, 40, true);
                        int i2 = 0;
                        if (str2 != null) {
                            i2 = str2.length();
                        }
                        this.zzx.zzi().zza(i, "_ev", zza, i2);
                        return;
                    }
                }
            }
            zzu();
            zzif zzab = zzi().zzab();
            if (zzab != null && !bundle.containsKey("_sc")) {
                zzab.zzd = true;
            }
            zzii.zza(zzab, bundle, z && z3);
            boolean equals = "am".equals(str);
            boolean zze = zzkm.zze(str2);
            if (z && this.zzc != null && !zze && !equals) {
                zzr().zzw().zza("Passing event to registered event handler (FE)", zzo().zza(str2), zzo().zza(bundle));
                this.zzc.interceptEvent(str, str2, bundle, j);
            } else if (this.zzx.zzag()) {
                int zzb = zzp().zzb(str2);
                if (zzb != 0) {
                    zzr().zzh().zza("Invalid event name. Event will not be logged (FE)", zzo().zza(str2));
                    zzp();
                    String zza2 = zzkm.zza(str2, 40, true);
                    int i3 = 0;
                    if (str2 != null) {
                        i3 = str2.length();
                    }
                    this.zzx.zzi().zza(str3, zzb, "_ev", zza2, i3);
                    return;
                }
                List<String> listOf = CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
                Bundle zza3 = zzp().zza(str3, str2, bundle, listOf, z3, true);
                zzif zzifVar2 = (zza3 == null || !zza3.containsKey("_sc") || !zza3.containsKey("_si")) ? null : new zzif(zza3.getString("_sn"), zza3.getString("_sc"), Long.valueOf(zza3.getLong("_si")).longValue());
                if (zzifVar2 != null) {
                    zzab = zzifVar2;
                }
                if (zzt().zza(zzap.zzay)) {
                    zzu();
                    if (zzi().zzab() != null && "_ae".equals(str2)) {
                        long zzb2 = zzk().zzb.zzb();
                        if (zzb2 > 0) {
                            zzp().zza(zza3, zzb2);
                        }
                    }
                }
                if (zzkb.zzb() && zzt().zza(zzap.zzcl)) {
                    if (!"auto".equals(str) && "_ssr".equals(str2)) {
                        zzkm zzp = zzp();
                        String string = zza3.getString("_ffr");
                        String trim = Strings.isEmptyOrWhitespace(string) ? null : string.trim();
                        if (zzkm.zzc(trim, zzp.zzs().zzw.zza())) {
                            zzp.zzr().zzw().zza("Not logging duplicate session_start_with_rollout event");
                            z4 = false;
                        } else {
                            zzp.zzs().zzw.zza(trim);
                            z4 = true;
                        }
                        if (!z4) {
                            return;
                        }
                    } else if ("_ae".equals(str2)) {
                        String zza4 = zzp().zzs().zzw.zza();
                        if (!TextUtils.isEmpty(zza4)) {
                            zza3.putString("_ffr", zza4);
                        }
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(zza3);
                long nextLong = zzp().zzh().nextLong();
                if (zzt().zza(zzap.zzas) && zzs().zzq.zza() > 0 && zzs().zza(j) && zzs().zzt.zza()) {
                    zzr().zzx().zza("Current session is expired, remove the session number, ID, and engagement time");
                    if (zzt().zza(zzap.zzap)) {
                        zza("auto", "_sid", (Object) null, zzm().currentTimeMillis());
                    }
                    if (zzt().zza(zzap.zzaq)) {
                        zza("auto", "_sno", (Object) null, zzm().currentTimeMillis());
                    }
                    if (zzmj.zzb() && zzt().zza(zzap.zzbp)) {
                        zza("auto", "_se", (Object) null, zzm().currentTimeMillis());
                    }
                }
                if (zzt().zza(zzap.zzar) && zza3.getLong(FirebaseAnalytics.Param.EXTEND_SESSION, 0L) == 1) {
                    zzr().zzx().zza("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                    this.zzx.zze().zza.zza(j, true);
                }
                String[] strArr = (String[]) zza3.keySet().toArray(new String[bundle.size()]);
                Arrays.sort(strArr);
                int length = strArr.length;
                int i4 = 0;
                int i5 = 0;
                String str5 = "_ae";
                ArrayList arrayList3 = arrayList2;
                while (i5 < length) {
                    String str6 = strArr[i5];
                    Object obj = zza3.get(str6);
                    zzp();
                    Bundle[] zza5 = zzkm.zza(obj);
                    if (zza5 != null) {
                        zza3.putInt(str6, zza5.length);
                        for (int i6 = 0; i6 < zza5.length; i6++) {
                            Bundle bundle2 = zza5[i6];
                            zzii.zza(zzab, bundle2, true);
                            Bundle zza6 = zzp().zza(str3, "_ep", bundle2, listOf, z3, false);
                            zza6.putString("_en", str2);
                            zza6.putLong("_eid", nextLong);
                            zza6.putString("_gn", str6);
                            zza6.putInt("_ll", zza5.length);
                            zza6.putInt("_i", i6);
                            arrayList3.add(zza6);
                        }
                        String str7 = str5;
                        i4 += zza5.length;
                        arrayList = arrayList3;
                        zzifVar = zzab;
                        str4 = str7;
                    } else {
                        zzif zzifVar3 = zzab;
                        ArrayList arrayList4 = arrayList3;
                        str4 = str5;
                        zzifVar = zzifVar3;
                        arrayList = arrayList4;
                    }
                    i5++;
                    String str8 = str4;
                    zzab = zzifVar;
                    arrayList3 = arrayList;
                    str5 = str8;
                }
                ArrayList arrayList5 = arrayList3;
                if (i4 != 0) {
                    zza3.putLong("_eid", nextLong);
                    zza3.putInt("_epc", i4);
                }
                int i7 = 0;
                while (i7 < arrayList5.size()) {
                    Bundle bundle3 = (Bundle) arrayList5.get(i7);
                    String str9 = i7 != 0 ? "_ep" : str2;
                    bundle3.putString("_o", str);
                    Bundle bundle4 = bundle3;
                    if (z2) {
                        bundle4 = zzp().zza(bundle3);
                    }
                    zzr().zzw().zza("Logging event (FE)", zzo().zza(str2), zzo().zza(bundle4));
                    zzh().zza(new zzan(str9, new zzam(bundle4), str, j), str3);
                    if (!equals) {
                        for (zzgz zzgzVar : this.zzd) {
                            zzgzVar.onEvent(str, str2, new Bundle(bundle4), j);
                        }
                    }
                    i7++;
                }
                zzu();
                if (zzi().zzab() == null || !str5.equals(str2)) {
                    return;
                }
                zzk().zza(true, true);
            }
        } else {
            zzr().zzw().zza("Dropping non-safelisted event. event name, origin", str2, str);
        }
    }

    public final void zza(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, zzm().currentTimeMillis());
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z) {
        zza(str, str2, bundle, false, true, zzm().currentTimeMillis());
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        zzb();
        if (str == null) {
            str = "app";
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        zzb(str, str2, j, bundle, z2, !z2 || this.zzc == null || zzkm.zze(str2), !z, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.String r9, java.lang.String r10, java.lang.Object r11, long r12) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhb.zza(java.lang.String, java.lang.String, java.lang.Object, long):void");
    }

    public final void zza(String str, String str2, Object obj, boolean z) {
        zza(str, str2, obj, z, zzm().currentTimeMillis());
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c5, code lost:
        if ((r10 instanceof java.lang.CharSequence) != false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.String r8, java.lang.String r9, java.lang.Object r10, boolean r11, long r12) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzhb.zza(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }

    public final void zza(String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotEmpty(str);
        zza();
        zzb(str, str2, str3, bundle);
    }

    public final void zza(boolean z) {
        zzw();
        zzb();
        zzq().zza(new zzhu(this, z));
    }

    public final void zzab() {
        if (zzn().getApplicationContext() instanceof Application) {
            ((Application) zzn().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.zza);
        }
    }

    public final Boolean zzac() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) zzq().zza(atomicReference, 15000L, "boolean test flag value", new zzhd(this, atomicReference));
    }

    public final String zzad() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) zzq().zza(atomicReference, 15000L, "String test flag value", new zzhn(this, atomicReference));
    }

    public final Long zzae() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) zzq().zza(atomicReference, 15000L, "long test flag value", new zzhp(this, atomicReference));
    }

    public final Integer zzaf() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) zzq().zza(atomicReference, 15000L, "int test flag value", new zzhs(this, atomicReference));
    }

    public final Double zzag() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) zzq().zza(atomicReference, 15000L, "double test flag value", new zzhr(this, atomicReference));
    }

    public final String zzah() {
        zzb();
        return this.zzf.get();
    }

    public final void zzai() {
        zzd();
        zzb();
        zzw();
        if (!this.zzx.zzag()) {
            return;
        }
        if (zzt().zza(zzap.zzbu)) {
            zzx zzt = zzt();
            zzt.zzu();
            Boolean zzb = zzt.zzb("google_analytics_deferred_deep_link_enabled");
            if (zzb != null && zzb.booleanValue()) {
                zzr().zzw().zza("Deferred Deep Link feature enabled.");
                zzq().zza(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.zzhe
                    private final zzhb zza;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zza = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzhb zzhbVar = this.zza;
                        zzhbVar.zzd();
                        if (zzhbVar.zzs().zzu.zza()) {
                            zzhbVar.zzr().zzw().zza("Deferred Deep Link already retrieved. Not fetching again.");
                            return;
                        }
                        long zza = zzhbVar.zzs().zzv.zza();
                        zzhbVar.zzs().zzv.zza(1 + zza);
                        if (zza < 5) {
                            zzhbVar.zzx.zzah();
                            return;
                        }
                        zzhbVar.zzr().zzi().zza("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                        zzhbVar.zzs().zzu.zza(true);
                    }
                });
            }
        }
        zzh().zzae();
        this.zzb = false;
        String zzw = zzs().zzw();
        if (TextUtils.isEmpty(zzw)) {
            return;
        }
        zzl().zzaa();
        if (zzw.equals(Build.VERSION.RELEASE)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_po", zzw);
        zza("auto", "_ou", bundle);
    }

    public final String zzaj() {
        zzif zzac = this.zzx.zzv().zzac();
        if (zzac != null) {
            return zzac.zza;
        }
        return null;
    }

    public final String zzak() {
        zzif zzac = this.zzx.zzv().zzac();
        if (zzac != null) {
            return zzac.zzb;
        }
        return null;
    }

    public final String zzal() {
        if (this.zzx.zzo() != null) {
            return this.zzx.zzo();
        }
        try {
            return GoogleServices.getGoogleAppId();
        } catch (IllegalStateException e) {
            this.zzx.zzr().zzf().zza("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final void zzb(long j) {
        zzb();
        zzq().zza(new zzhv(this, j));
    }

    public final void zzb(Bundle bundle) {
        Preconditions.checkNotNull(bundle);
        Preconditions.checkNotEmpty(bundle.getString("app_id"));
        zza();
        zzb(new Bundle(bundle), zzm().currentTimeMillis());
    }

    public final void zzb(zzgz zzgzVar) {
        zzb();
        zzw();
        Preconditions.checkNotNull(zzgzVar);
        if (!this.zzd.remove(zzgzVar)) {
            zzr().zzi().zza("OnEventListener had not been registered");
        }
    }

    public final void zzb(String str, String str2, Bundle bundle) {
        zzb();
        zzd();
        zza(str, str2, zzm().currentTimeMillis(), bundle);
    }

    public final void zzb(boolean z) {
        zzw();
        zzb();
        zzq().zza(new zzht(this, z));
    }

    public final String zzc(long j) {
        if (zzq().zzg()) {
            zzr().zzf().zza("Cannot retrieve app instance id from analytics worker thread");
            return null;
        } else if (zzw.zza()) {
            zzr().zzf().zza("Cannot retrieve app instance id from main thread");
            return null;
        } else {
            long elapsedRealtime = zzm().elapsedRealtime();
            String zze = zze(120000L);
            long elapsedRealtime2 = zzm().elapsedRealtime() - elapsedRealtime;
            String str = zze;
            if (zze == null) {
                str = zze;
                if (elapsedRealtime2 < 120000) {
                    str = zze(120000 - elapsedRealtime2);
                }
            }
            return str;
        }
    }

    public final List<zzkl> zzc(boolean z) {
        zzb();
        zzw();
        zzr().zzw().zza("Fetching user attributes (FE)");
        if (zzq().zzg()) {
            zzr().zzf().zza("Cannot get all user properties from analytics worker thread");
            return Collections.emptyList();
        } else if (zzw.zza()) {
            zzr().zzf().zza("Cannot get all user properties from main thread");
            return Collections.emptyList();
        } else {
            AtomicReference atomicReference = new AtomicReference();
            this.zzx.zzq().zza(atomicReference, 5000L, "get user properties", new zzhi(this, atomicReference, z));
            List<zzkl> list = (List) atomicReference.get();
            List<zzkl> list2 = list;
            if (list == null) {
                zzr().zzi().zza("Timed out waiting for get user properties");
                list2 = Collections.emptyList();
            }
            return list2;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzc() {
        super.zzc();
    }

    public final void zzc(String str, String str2, Bundle bundle) {
        zzb();
        zzb((String) null, str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzf, com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ void zzd() {
        super.zzd();
    }

    public final void zzd(long j) {
        zza((String) null);
        zzq().zza(new zzhk(this, j));
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzb zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzhb zzf() {
        return super.zzf();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzep zzg() {
        return super.zzg();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzij zzh() {
        return super.zzh();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzii zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzes zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    public final /* bridge */ /* synthetic */ zzjo zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzff zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.zzgr, com.google.android.gms.measurement.internal.zzgt
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }

    @Override // com.google.android.gms.measurement.internal.zze
    protected final boolean zzz() {
        return false;
    }
}
