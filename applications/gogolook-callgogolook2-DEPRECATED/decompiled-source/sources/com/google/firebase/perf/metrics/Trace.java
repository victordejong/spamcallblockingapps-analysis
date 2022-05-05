package com.google.firebase.perf.metrics;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.gms.internal.firebase-perf.zzaa;
import com.google.android.gms.internal.firebase_perf.zzr;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7765a6;
import p081h.p203i.p204a.p224e.p259j.p269j.C7761a3;
import p081h.p203i.p204a.p224e.p259j.p269j.C7771b4;
import p081h.p203i.p204a.p224e.p259j.p269j.C7781c6;
import p081h.p203i.p204a.p224e.p259j.p269j.C7823h6;
import p081h.p203i.p204a.p224e.p259j.p269j.C7831i6;
import p081h.p203i.p204a.p224e.p259j.p269j.C7928t5;
import p081h.p203i.p204a.p224e.p259j.p269j.EnumC7852k6;
import p081h.p203i.p325c.p379z.p381c.C10065b;
import p081h.p203i.p325c.p379z.p381c.C10066c;
import p081h.p203i.p325c.p379z.p381c.C10067d;
import p081h.p203i.p325c.p379z.p381c.C10068e;
import p081h.p203i.p325c.p379z.p381c.C10069f;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/Trace.class */
public class Trace extends C7771b4 implements Parcelable {
    @Keep
    public static final Parcelable.Creator<Trace> CREATOR = new C10066c();

    /* renamed from: e */
    public final Trace f7788e;

    /* renamed from: f */
    public final String f7789f;

    /* renamed from: g */
    public final List<zzr> f7790g;

    /* renamed from: h */
    public final List<Trace> f7791h;

    /* renamed from: i */
    public final Map<String, zza> f7792i;

    /* renamed from: j */
    public final C7928t5 f7793j;

    /* renamed from: k */
    public final Map<String, String> f7794k;

    /* renamed from: l */
    public zzaa f7795l;

    /* renamed from: m */
    public zzaa f7796m;

    /* renamed from: n */
    public BroadcastReceiver f7797n;

    static {
        new ConcurrentHashMap();
        new C10067d();
    }

    public Trace(@NonNull Parcel parcel, boolean z) {
        super(z ? null : C7761a3.m19547d());
        this.f7797n = new C10065b(this);
        this.f7788e = (Trace) parcel.readParcelable(Trace.class.getClassLoader());
        this.f7789f = parcel.readString();
        this.f7791h = new ArrayList();
        parcel.readList(this.f7791h, Trace.class.getClassLoader());
        this.f7792i = new ConcurrentHashMap();
        this.f7794k = new ConcurrentHashMap();
        parcel.readMap(this.f7792i, zza.class.getClassLoader());
        this.f7795l = (com.google.android.gms.internal.firebase_perf.zzaa) parcel.readParcelable(zzaa.class.getClassLoader());
        this.f7796m = (com.google.android.gms.internal.firebase_perf.zzaa) parcel.readParcelable(zzaa.class.getClassLoader());
        this.f7790g = new ArrayList();
        parcel.readList(this.f7790g, com.google.android.gms.internal.firebase-perf.zzr.class.getClassLoader());
        if (z) {
            this.f7793j = null;
            return;
        }
        this.f7793j = C7928t5.m18867c();
        new C7831i6();
    }

    public /* synthetic */ Trace(Parcel parcel, boolean z, C10065b bVar) {
        this(parcel, z);
    }

    public Trace(@NonNull String str) {
        this(str, C7928t5.m18867c(), new C7831i6(), C7761a3.m19547d());
    }

    public Trace(@NonNull String str, @NonNull C7928t5 t5Var, @NonNull C7831i6 i6Var, @NonNull C7761a3 a3Var) {
        super(a3Var);
        this.f7797n = new C10065b(this);
        this.f7788e = null;
        this.f7789f = str.trim();
        this.f7791h = new ArrayList();
        this.f7792i = new ConcurrentHashMap();
        this.f7794k = new ConcurrentHashMap();
        this.f7793j = t5Var;
        this.f7790g = new ArrayList();
    }

    @NonNull
    /* renamed from: b */
    public static Trace m31044b(@NonNull String str) {
        return new Trace(str);
    }

    @NonNull
    /* renamed from: a */
    public final zza m31046a(@NonNull String str) {
        zza zzaVar = this.f7792i.get(str);
        zza zzaVar2 = zzaVar;
        if (zzaVar == null) {
            zzaVar2 = new zza(str);
            this.f7792i.put(str, zzaVar2);
        }
        return zzaVar2;
    }

    /* renamed from: a */
    public final void m31045a(String str, long j, int i) {
        String a = AbstractC7765a6.m19522a(str, i);
        if (a != null) {
            int i2 = C10068e.f22761a[i - 1];
            if (i2 == 1) {
                Log.e("FirebasePerformance", String.format("Cannot increment counter %s. Counter name is invalid.(%s)", str, a));
            } else if (i2 == 2) {
                Log.e("FirebasePerformance", String.format("Cannot increment metric %s. Metric name is invalid.(%s)", str, a));
            }
        } else if (!m31042r()) {
            int i3 = C10068e.f22761a[i - 1];
            if (i3 == 1) {
                String.format("Cannot increment counter '%s' for trace '%s' because it's not started", str, this.f7789f);
            } else if (i3 == 2) {
                String.format("Cannot increment metric '%s' for trace '%s' because it's not started", str, this.f7789f);
            }
        } else if (m31041s()) {
            int i4 = C10068e.f22761a[i - 1];
            if (i4 == 1) {
                String.format("Cannot increment counter '%s' for trace '%s' because it's been stopped", str, this.f7789f);
            } else if (i4 == 2) {
                String.format("Cannot increment metric '%s' for trace '%s' because it's been stopped", str, this.f7789f);
            }
        } else {
            m31046a(str.trim()).m31034a(j);
        }
    }

    @Override // android.os.Parcelable
    @Keep
    public int describeContents() {
        return 0;
    }

    public void finalize() throws Throwable {
        try {
            if (m31042r() && !m31041s()) {
                String.format("Trace '%s' is started but not stopped when it is destructed!", this.f7789f);
                m19511b(1);
            }
        } finally {
            super.finalize();
        }
    }

    @Nullable
    @Keep
    public String getAttribute(@NonNull String str) {
        return this.f7794k.get(str);
    }

    @NonNull
    @Keep
    public Map<String, String> getAttributes() {
        return new HashMap(this.f7794k);
    }

    @Keep
    public long getLongMetric(@NonNull String str) {
        zza zzaVar = str != null ? this.f7792i.get(str.trim()) : null;
        if (zzaVar == null) {
            return 0L;
        }
        return zzaVar.m31035a();
    }

    @Keep
    @Deprecated
    public void incrementCounter(@NonNull String str) {
        incrementCounter(str, 1L);
    }

    @Keep
    @Deprecated
    public void incrementCounter(@NonNull String str, long j) {
        m31045a(str, j, C7781c6.f18210a);
    }

    @Keep
    public void incrementMetric(@NonNull String str, long j) {
        m31045a(str, j, C7781c6.f18211b);
    }

    @Keep
    public void putAttribute(@NonNull String str, @NonNull String str2) {
        String str3;
        String trim;
        boolean z = false;
        String str4 = str;
        try {
            trim = str.trim();
            str3 = str2.trim();
        } catch (Exception e) {
            Log.e("FirebasePerformance", String.format("Can not set attribute %s with value %s (%s)", str4, str2, e.getMessage()));
            str3 = str2;
        }
        if (!m31041s()) {
            if (!this.f7794k.containsKey(trim) && this.f7794k.size() >= 5) {
                throw new IllegalArgumentException(String.format(Locale.US, "Exceeds max limit of number of attributes - %d", 5));
            }
            String a = AbstractC7765a6.m19521a(new AbstractMap.SimpleEntry(trim, str3));
            if (a == null) {
                z = true;
                str4 = trim;
                if (z) {
                    this.f7794k.put(str4, str3);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException(a);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Trace %s has been stopped", this.f7789f));
    }

    @Keep
    public void putMetric(@NonNull String str, long j) {
        String a = AbstractC7765a6.m19522a(str, C7781c6.f18211b);
        if (a != null) {
            Log.e("FirebasePerformance", String.format("Cannot set value for metric %s. Metric name is invalid.(%s)", str, a));
        } else if (!m31042r()) {
            String.format("Cannot set value for metric '%s' for trace '%s' because it's not started", str, this.f7789f);
        } else if (m31041s()) {
            String.format("Cannot set value for metric '%s' for trace '%s' because it's been stopped", str, this.f7789f);
        } else {
            m31046a(str.trim()).m31033b(j);
        }
    }

    @NonNull
    /* renamed from: q */
    public final String m31043q() {
        return this.f7789f;
    }

    /* renamed from: r */
    public final boolean m31042r() {
        return this.f7795l != null;
    }

    @Keep
    public void removeAttribute(@NonNull String str) {
        if (m31041s()) {
            Log.e("FirebasePerformance", "Can't remove a attribute from a Trace that's stopped.");
        } else {
            this.f7794k.remove(str);
        }
    }

    /* renamed from: s */
    public final boolean m31041s() {
        return this.f7796m != null;
    }

    @Keep
    public void start() {
        String str;
        String str2 = this.f7789f;
        if (str2 == null) {
            str = "Trace name must not be null";
        } else if (str2.length() > 100) {
            str = String.format(Locale.US, "Trace name must not exceed %d characters", 100);
        } else {
            if (str2.startsWith("_")) {
                EnumC7852k6[] values = EnumC7852k6.values();
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
            Log.e("FirebasePerformance", String.format("Cannot start trace %s. Trace name is invalid.(%s)", this.f7789f, str));
        } else if (this.f7795l != null) {
            Log.e("FirebasePerformance", String.format("Trace '%s' has already started, should not start again!", this.f7789f));
        } else {
            m19512b();
            C7823h6 r = C7823h6.m19351r();
            this.f7790g.add(r.m19352q());
            this.f7795l = new com.google.android.gms.internal.firebase_perf.zzaa();
            String.format("Session ID - %s", r.m19352q().m31839a());
            C7823h6.m19351r();
            LocalBroadcastManager.getInstance(C7823h6.m19350s()).registerReceiver(this.f7797n, new IntentFilter("SessionIdUpdate"));
        }
    }

    @Keep
    public void stop() {
        if (!m31042r()) {
            Log.e("FirebasePerformance", String.format("Trace '%s' has not been started so unable to stop!", this.f7789f));
        } else if (m31041s()) {
            Log.e("FirebasePerformance", String.format("Trace '%s' has already stopped, should not stop again!", this.f7789f));
        } else {
            C7823h6.m19351r();
            LocalBroadcastManager.getInstance(C7823h6.m19350s()).unregisterReceiver(this.f7797n);
            m19510c();
            this.f7796m = new com.google.android.gms.internal.firebase_perf.zzaa();
            if (this.f7788e == null) {
                zzaa zzaaVar = this.f7796m;
                if (!this.f7791h.isEmpty()) {
                    Trace trace = this.f7791h.get(this.f7791h.size() - 1);
                    if (trace.f7796m == null) {
                        trace.f7796m = zzaaVar;
                    }
                }
                if (!this.f7789f.isEmpty()) {
                    C7928t5 t5Var = this.f7793j;
                    if (t5Var != null) {
                        t5Var.m18873a(new C10069f(this).m13509a(), m19513a());
                        return;
                    }
                    return;
                }
                Log.e("FirebasePerformance", "Trace name is empty, no log is sent to server");
            }
        }
    }

    @NonNull
    /* renamed from: t */
    public final Map<String, zza> m31040t() {
        return this.f7792i;
    }

    /* renamed from: u */
    public final zzaa m31039u() {
        return this.f7795l;
    }

    /* renamed from: v */
    public final zzaa m31038v() {
        return this.f7796m;
    }

    @NonNull
    /* renamed from: w */
    public final List<Trace> m31037w() {
        return this.f7791h;
    }

    @Override // android.os.Parcelable
    @Keep
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeParcelable(this.f7788e, 0);
        parcel.writeString(this.f7789f);
        parcel.writeList(this.f7791h);
        parcel.writeMap(this.f7792i);
        parcel.writeParcelable(this.f7795l, 0);
        parcel.writeParcelable(this.f7796m, 0);
        parcel.writeList(this.f7790g);
    }

    /* renamed from: x */
    public final List<zzr> m31036x() {
        return this.f7790g;
    }
}
