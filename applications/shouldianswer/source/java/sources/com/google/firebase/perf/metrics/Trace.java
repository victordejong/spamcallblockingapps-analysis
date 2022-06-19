package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.internal.firebase-perf.zzan;
import com.google.android.gms.internal.firebase-perf.zzaz;
import com.google.android.gms.internal.firebase_perf.zzao;
import com.google.firebase.perf.internal.GaugeManager;
import com.google.firebase.perf.internal.SessionManager;
import com.google.firebase.perf.internal.zza;
import com.google.firebase.perf.internal.zzb;
import com.google.firebase.perf.internal.zzf;
import com.google.firebase.perf.internal.zzq;
import com.google.firebase.perf.internal.zzt;
import com.google.firebase.perf.internal.zzx;
import io.fabric.sdk.android.services.p069c.AbstractC1507b;
import java.lang.ref.WeakReference;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/metrics/Trace.class */
public class Trace extends zzb implements Parcelable, zzx {
    private final String name;
    private final List<zzt> zzbk;
    private final GaugeManager zzbl;
    private final WeakReference<zzx> zzbq;
    private final zzf zzcg;
    private final Trace zzfm;
    private final List<Trace> zzfn;
    private final Map<String, zzb> zzfo;
    private final zzan zzfp;
    private final Map<String, String> zzfq;
    private zzaz zzfr;
    private zzaz zzfs;
    private static final Map<String, Trace> zzfl = new ConcurrentHashMap();
    public static final Parcelable.Creator<Trace> CREATOR = new zzd();
    private static final Parcelable.Creator<Trace> zzft = new zzc();

    private Trace(Parcel parcel, boolean z) {
        super(z ? null : zza.zzq());
        this.zzbq = new WeakReference<>(this);
        this.zzfm = (Trace) parcel.readParcelable(Trace.class.getClassLoader());
        this.name = parcel.readString();
        this.zzfn = new ArrayList();
        parcel.readList(this.zzfn, Trace.class.getClassLoader());
        this.zzfo = new ConcurrentHashMap();
        this.zzfq = new ConcurrentHashMap();
        parcel.readMap(this.zzfo, zzb.class.getClassLoader());
        this.zzfr = (com.google.android.gms.internal.firebase_perf.zzaz) parcel.readParcelable(zzaz.class.getClassLoader());
        this.zzfs = (com.google.android.gms.internal.firebase_perf.zzaz) parcel.readParcelable(zzaz.class.getClassLoader());
        this.zzbk = new ArrayList();
        parcel.readList(this.zzbk, zzt.class.getClassLoader());
        if (z) {
            this.zzcg = null;
            this.zzfp = null;
            this.zzbl = null;
            return;
        }
        this.zzcg = zzf.zzal();
        this.zzfp = new com.google.android.gms.internal.firebase_perf.zzan();
        this.zzbl = GaugeManager.zzap();
    }

    public /* synthetic */ Trace(Parcel parcel, boolean z, zzd zzdVar) {
        this(parcel, z);
    }

    private Trace(String str) {
        this(str, zzf.zzal(), new com.google.android.gms.internal.firebase_perf.zzan(), zza.zzq(), GaugeManager.zzap());
    }

    public Trace(String str, zzf zzfVar, zzan zzanVar, zza zzaVar) {
        this(str, zzfVar, zzanVar, zzaVar, GaugeManager.zzap());
    }

    private Trace(String str, zzf zzfVar, zzan zzanVar, zza zzaVar, GaugeManager gaugeManager) {
        super(zzaVar);
        this.zzbq = new WeakReference<>(this);
        this.zzfm = null;
        this.name = str.trim();
        this.zzfn = new ArrayList();
        this.zzfo = new ConcurrentHashMap();
        this.zzfq = new ConcurrentHashMap();
        this.zzfp = zzanVar;
        this.zzcg = zzfVar;
        this.zzbk = new ArrayList();
        this.zzbl = gaugeManager;
    }

    private final boolean hasStarted() {
        return this.zzfr != null;
    }

    private final boolean isStopped() {
        return this.zzfs != null;
    }

    public static Trace zzi(String str) {
        return new Trace(str);
    }

    private final zzb zzj(String str) {
        zzb zzbVar = this.zzfo.get(str);
        zzb zzbVar2 = zzbVar;
        if (zzbVar == null) {
            zzbVar2 = new zzb(str);
            this.zzfo.put(str, zzbVar2);
        }
        return zzbVar2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void finalize() {
        try {
            if (hasStarted() && !isStopped()) {
                Log.w("FirebasePerformance", String.format("Trace '%s' is started but not stopped when it is destructed!", this.name));
                zzb(1);
            }
        } finally {
            super.finalize();
        }
    }

    public String getAttribute(String str) {
        return this.zzfq.get(str);
    }

    public Map<String, String> getAttributes() {
        return new HashMap(this.zzfq);
    }

    public long getLongMetric(String str) {
        zzb zzbVar = str != null ? this.zzfo.get(str.trim()) : null;
        if (zzbVar == null) {
            return 0L;
        }
        return zzbVar.getCount();
    }

    public final String getName() {
        return this.name;
    }

    public final List<zzt> getSessions() {
        return this.zzbk;
    }

    public void incrementMetric(String str, long j) {
        String zzf = zzq.zzf(str);
        if (zzf != null) {
            Log.e("FirebasePerformance", String.format("Cannot increment metric %s. Metric name is invalid.(%s)", str, zzf));
        } else if (!hasStarted()) {
            Log.w("FirebasePerformance", String.format("Cannot increment metric '%s' for trace '%s' because it's not started", str, this.name));
        } else if (isStopped()) {
            Log.w("FirebasePerformance", String.format("Cannot increment metric '%s' for trace '%s' because it's been stopped", str, this.name));
        } else {
            zzj(str.trim()).zzl(j);
        }
    }

    public void putAttribute(String str, String str2) {
        String str3;
        String str4;
        boolean z = false;
        try {
            str4 = str.trim();
            str3 = str2.trim();
        } catch (Exception e) {
            Log.e("FirebasePerformance", String.format("Can not set attribute %s with value %s (%s)", str, str2, e.getMessage()));
            str3 = str2;
            str4 = str;
        }
        if (!isStopped()) {
            if (!this.zzfq.containsKey(str4) && this.zzfq.size() >= 5) {
                throw new IllegalArgumentException(String.format(Locale.US, "Exceeds max limit of number of attributes - %d", 5));
            }
            String zza = zzq.zza(new AbstractMap.SimpleEntry(str4, str3));
            if (zza != null) {
                throw new IllegalArgumentException(zza);
            }
            z = true;
            if (!z) {
                return;
            }
            this.zzfq.put(str4, str3);
            return;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Trace %s has been stopped", this.name));
    }

    public void putMetric(String str, long j) {
        String zzf = zzq.zzf(str);
        if (zzf != null) {
            Log.e("FirebasePerformance", String.format("Cannot set value for metric %s. Metric name is invalid.(%s)", str, zzf));
        } else if (!hasStarted()) {
            Log.w("FirebasePerformance", String.format("Cannot set value for metric '%s' for trace '%s' because it's not started", str, this.name));
        } else if (isStopped()) {
            Log.w("FirebasePerformance", String.format("Cannot set value for metric '%s' for trace '%s' because it's been stopped", str, this.name));
        } else {
            zzj(str.trim()).zzm(j);
        }
    }

    public void removeAttribute(String str) {
        if (isStopped()) {
            Log.e("FirebasePerformance", "Can't remove a attribute from a Trace that's stopped.");
        } else {
            this.zzfq.remove(str);
        }
    }

    public void start() {
        String str;
        String str2 = this.name;
        if (str2 == null) {
            str = "Trace name must not be null";
        } else if (str2.length() > 100) {
            str = String.format(Locale.US, "Trace name must not exceed %d characters", 100);
        } else {
            if (str2.startsWith(AbstractC1507b.ROLL_OVER_FILE_NAME_SEPARATOR)) {
                Enum[] values = zzao.values();
                int length = values.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        if (values[i].toString().equals(str2)) {
                            break;
                        }
                        i++;
                    } else if (!str2.startsWith("_st_")) {
                        str = "Trace name must not start with '_'";
                    }
                }
            }
            str = null;
        }
        if (str != null) {
            Log.e("FirebasePerformance", String.format("Cannot start trace %s. Trace name is invalid.(%s)", this.name, str));
        } else if (this.zzfr != null) {
            Log.e("FirebasePerformance", String.format("Trace '%s' has already started, should not start again!", this.name));
        } else {
            zzaa();
            zzt zzbm = SessionManager.zzbl().zzbm();
            SessionManager.zzbl().zzc(this.zzbq);
            this.zzbk.add(zzbm);
            this.zzfr = new com.google.android.gms.internal.firebase_perf.zzaz();
            Log.i("FirebasePerformance", String.format("Session ID - %s", zzbm.zzav()));
            if (!zzbm.zzax()) {
                return;
            }
            this.zzbl.zzj(zzbm.zzaw());
        }
    }

    public void stop() {
        if (!hasStarted()) {
            Log.e("FirebasePerformance", String.format("Trace '%s' has not been started so unable to stop!", this.name));
        } else if (isStopped()) {
            Log.e("FirebasePerformance", String.format("Trace '%s' has already stopped, should not stop again!", this.name));
        } else {
            SessionManager.zzbl().zzd(this.zzbq);
            zzab();
            this.zzfs = new com.google.android.gms.internal.firebase_perf.zzaz();
            if (this.zzfm != null) {
                return;
            }
            zzaz zzazVar = this.zzfs;
            if (!this.zzfn.isEmpty()) {
                Trace trace = this.zzfn.get(this.zzfn.size() - 1);
                if (trace.zzfs == null) {
                    trace.zzfs = zzazVar;
                }
            }
            if (this.name.isEmpty()) {
                Log.e("FirebasePerformance", "Trace name is empty, no log is sent to server");
                return;
            }
            zzf zzfVar = this.zzcg;
            if (zzfVar == null) {
                return;
            }
            zzfVar.zza(new zze(this).zzbu(), zzs());
            if (!SessionManager.zzbl().zzbm().zzax()) {
                return;
            }
            this.zzbl.zzj(SessionManager.zzbl().zzbm().zzaw());
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.zzfm, 0);
        parcel.writeString(this.name);
        parcel.writeList(this.zzfn);
        parcel.writeMap(this.zzfo);
        parcel.writeParcelable(this.zzfr, 0);
        parcel.writeParcelable(this.zzfs, 0);
        parcel.writeList(this.zzbk);
    }

    @Override // com.google.firebase.perf.internal.zzx
    public final void zza(zzt zztVar) {
        if (!hasStarted() || isStopped()) {
            return;
        }
        this.zzbk.add(zztVar);
    }

    public final Map<String, zzb> zzbq() {
        return this.zzfo;
    }

    public final zzaz zzbr() {
        return this.zzfr;
    }

    public final zzaz zzbs() {
        return this.zzfs;
    }

    public final List<Trace> zzbt() {
        return this.zzfn;
    }
}
