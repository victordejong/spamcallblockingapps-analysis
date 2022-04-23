package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzgw;
import com.google.android.gms.measurement.internal.zzgx;
import com.google.android.gms.measurement.internal.zzih;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag.class */
public class zzag {

    /* renamed from: i */
    private static volatile zzag f8177i;

    /* renamed from: j */
    private static Boolean f8178j;
    @VisibleForTesting

    /* renamed from: k */
    private static String f8179k = "allow_remote_dynamite";

    /* renamed from: a */
    private final String f8180a;

    /* renamed from: b */
    protected final Clock f8181b;

    /* renamed from: c */
    private final ExecutorService f8182c;

    /* renamed from: d */
    private final AppMeasurementSdk f8183d;

    /* renamed from: e */
    private List<Pair<zzgw, zzd>> f8184e;

    /* renamed from: f */
    private int f8185f;

    /* renamed from: g */
    private boolean f8186g;

    /* renamed from: h */
    private zzv f8187h;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag$zza.class */
    static final class zza extends zzaa {

        /* renamed from: a */
        private final zzgx f8188a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zza(zzgx zzgxVar) {
            this.f8188a = zzgxVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzab
        /* renamed from: l0 */
        public final void mo13405l0(String str, String str2, Bundle bundle, long j) {
            this.f8188a.mo11300a(str, str2, bundle, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzab
        public final int zza() {
            return System.identityHashCode(this.f8188a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag$zzb.class */
    public abstract class zzb implements Runnable {

        /* renamed from: f */
        final long f8189f;

        /* renamed from: g */
        final long f8190g;

        /* renamed from: h */
        private final boolean f8191h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(zzag zzagVar) {
            this(true);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzb(boolean z) {
            this.f8189f = zzag.this.f8181b.mo14335a();
            this.f8190g = zzag.this.f8181b.mo14334b();
            this.f8191h = z;
        }

        /* renamed from: a */
        abstract void mo13397a() throws RemoteException;

        /* renamed from: b */
        protected void mo13398b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzag.this.f8186g) {
                mo13398b();
                return;
            }
            try {
                mo13397a();
            } catch (Exception e) {
                zzag.this.m13413s(e, false, this.f8191h);
                mo13398b();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag$zzc.class */
    final class zzc implements Application.ActivityLifecycleCallbacks {
        zzc() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            zzag.this.m13419m(new zzbp(this, bundle, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            zzag.this.m13419m(new zzbu(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            zzag.this.m13419m(new zzbq(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            zzag.this.m13419m(new zzbr(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            zzt zztVar = new zzt();
            zzag.this.m13419m(new zzbs(this, activity, zztVar));
            Bundle f = zztVar.m11833f(50L);
            if (f != null) {
                bundle.putAll(f);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            zzag.this.m13419m(new zzbo(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            zzag.this.m13419m(new zzbt(this, activity));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzag$zzd.class */
    public static final class zzd extends zzaa {

        /* renamed from: a */
        private final zzgw f8194a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public zzd(zzgw zzgwVar) {
            this.f8194a = zzgwVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzab
        /* renamed from: l0 */
        public final void mo13405l0(String str, String str2, Bundle bundle, long j) {
            this.f8194a.onEvent(str, str2, bundle, j);
        }

        @Override // com.google.android.gms.internal.measurement.zzab
        public final int zza() {
            return System.identityHashCode(this.f8194a);
        }
    }

    private zzag(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !m13446S(str2, str3)) {
            this.f8180a = "FA";
        } else {
            this.f8180a = str;
        }
        this.f8181b = DefaultClock.m14333c();
        this.f8182c = zzi.m12403a().mo12253a(new zzat(this), zzr.f8810a);
        this.f8183d = new AppMeasurementSdk(this);
        boolean z = false;
        if (!(!m13440Y(context) || m13425g0())) {
            this.f8186g = true;
            Log.w(this.f8180a, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
            return;
        }
        if (!m13446S(str2, str3)) {
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null ? true : z)) {
                    Log.w(this.f8180a, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.f8180a, "Deferring to Google Analytics for Firebase for event data collection. https://goo.gl/J1sWQy");
            }
        }
        m13419m(new zzaj(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f8180a, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new zzc());
        }
    }

    /* renamed from: A */
    private final void m13464A(String str, String str2, Object obj, boolean z) {
        m13419m(new zzbm(this, str, str2, obj, z));
    }

    /* renamed from: C */
    private static boolean m13462C(Context context, @Size(min = 1) String str) {
        Preconditions.m14527g(str);
        try {
            ApplicationInfo c = Wrappers.m14278a(context).m14285c(context.getPackageName(), 128);
            if (!(c == null || c.metaData == null)) {
                return c.metaData.getBoolean(str);
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S */
    public static boolean m13446S(String str, String str2) {
        return (str2 == null || str == null || m13425g0()) ? false : true;
    }

    /* renamed from: Y */
    private static boolean m13440Y(Context context) {
        try {
            return zzih.m11233b(context, "google_app_id") != null;
        } catch (IllegalStateException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public static int m13439Z(Context context) {
        return DynamiteModule.m14229c(context, ModuleDescriptor.MODULE_ID);
    }

    /* renamed from: a */
    public static zzag m13438a(@NonNull Context context) {
        return m13436b(context, null, null, null, null);
    }

    /* renamed from: b */
    public static zzag m13436b(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.m14523k(context);
        if (f8177i == null) {
            synchronized (zzag.class) {
                try {
                    if (f8177i == null) {
                        f8177i = new zzag(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8177i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b0 */
    public static int m13435b0(Context context) {
        return DynamiteModule.m14231a(context, ModuleDescriptor.MODULE_ID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e0 */
    public static void m13429e0(Context context) {
        synchronized (zzag.class) {
            try {
                try {
                } catch (Exception e) {
                    Log.e("FA", "Exception reading flag from SharedPreferences.", e);
                    f8178j = Boolean.FALSE;
                }
                if (f8178j == null) {
                    if (m13462C(context, "app_measurement_internal_disable_startup_flags")) {
                        f8178j = Boolean.FALSE;
                        return;
                    }
                    SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
                    f8178j = Boolean.valueOf(sharedPreferences.getBoolean(f8179k, false));
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.remove(f8179k);
                    edit.apply();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: g0 */
    private static boolean m13425g0() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public final void m13419m(zzb zzbVar) {
        this.f8182c.execute(zzbVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public final void m13413s(Exception exc, boolean z, boolean z2) {
        this.f8186g |= z;
        if (z) {
            Log.w(this.f8180a, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            m13423i(5, "Error with data collection. Data lost.", exc, null, null);
        }
        Log.w(this.f8180a, "Error with data collection. Data lost.", exc);
    }

    /* renamed from: y */
    private final void m13407y(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        m13419m(new zzbn(this, l, str, str2, bundle, z, z2));
    }

    /* renamed from: B */
    public final void m13463B(boolean z) {
        m13419m(new zzbj(this, z));
    }

    /* renamed from: G */
    public final List<Bundle> m13458G(String str, String str2) {
        zzt zztVar = new zzt();
        m13419m(new zzak(this, str, str2, zztVar));
        List<Bundle> list = (List) zzt.m11835b(zztVar.m11833f(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    /* renamed from: H */
    public final void m13457H() {
        m13419m(new zzar(this));
    }

    /* renamed from: I */
    public final void m13456I(long j) {
        m13419m(new zzas(this, j));
    }

    /* renamed from: K */
    public final void m13454K(zzgw zzgwVar) {
        Preconditions.m14523k(zzgwVar);
        m13419m(new zzbk(this, zzgwVar));
    }

    /* renamed from: L */
    public final void m13453L(String str) {
        m13419m(new zzav(this, str));
    }

    /* renamed from: M */
    public final void m13452M(String str, String str2, Bundle bundle) {
        m13419m(new zzal(this, str, str2, bundle));
    }

    /* renamed from: P */
    public final String m13449P() {
        zzt zztVar = new zzt();
        m13419m(new zzax(this, zztVar));
        return zztVar.m11834c(500L);
    }

    /* renamed from: Q */
    public final void m13448Q(Bundle bundle) {
        m13419m(new zzbi(this, bundle));
    }

    /* renamed from: R */
    public final void m13447R(String str) {
        m13419m(new zzau(this, str));
    }

    /* renamed from: U */
    public final int m13444U(String str) {
        zzt zztVar = new zzt();
        m13419m(new zzbe(this, str, zztVar));
        Integer num = (Integer) zzt.m11835b(zztVar.m11833f(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    /* renamed from: V */
    public final String m13443V() {
        zzt zztVar = new zzt();
        m13419m(new zzaw(this, zztVar));
        return zztVar.m11834c(50L);
    }

    /* renamed from: X */
    public final long m13441X() {
        zzt zztVar = new zzt();
        m13419m(new zzaz(this, zztVar));
        Long l = (Long) zzt.m11835b(zztVar.m11833f(500L), Long.class);
        if (l != null) {
            return l.longValue();
        }
        long nextLong = new Random(System.nanoTime() ^ this.f8181b.mo14335a()).nextLong();
        int i = this.f8185f + 1;
        this.f8185f = i;
        return nextLong + i;
    }

    /* renamed from: a0 */
    public final String m13437a0() {
        zzt zztVar = new zzt();
        m13419m(new zzay(this, zztVar));
        return zztVar.m11834c(500L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public final zzv m13434c(Context context, boolean z) {
        try {
            return zzu.asInterface(DynamiteModule.m14227e(context, z ? DynamiteModule.f7705k : DynamiteModule.f7703i, ModuleDescriptor.MODULE_ID).m14228d("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e) {
            m13413s(e, true, false);
            return null;
        }
    }

    /* renamed from: c0 */
    public final String m13433c0() {
        zzt zztVar = new zzt();
        m13419m(new zzbb(this, zztVar));
        return zztVar.m11834c(500L);
    }

    @WorkerThread
    /* renamed from: d0 */
    public final String m13431d0() {
        zzt zztVar = new zzt();
        m13419m(new zzbh(this, zztVar));
        return zztVar.m11834c(120000L);
    }

    /* renamed from: e */
    public final AppMeasurementSdk m13430e() {
        return this.f8183d;
    }

    /* renamed from: f */
    public final Object m13428f(int i) {
        zzt zztVar = new zzt();
        m13419m(new zzbg(this, zztVar, i));
        return zzt.m11835b(zztVar.m11833f(15000L), Object.class);
    }

    /* renamed from: h */
    public final Map<String, Object> m13424h(String str, String str2, boolean z) {
        zzt zztVar = new zzt();
        m13419m(new zzba(this, str, str2, z, zztVar));
        Bundle f = zztVar.m11833f(5000L);
        if (f == null || f.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(f.size());
        for (String str3 : f.keySet()) {
            Object obj = f.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    /* renamed from: i */
    public final void m13423i(int i, String str, Object obj, Object obj2, Object obj3) {
        m13419m(new zzbd(this, false, 5, str, obj, null, null));
    }

    /* renamed from: j */
    public final void m13422j(long j) {
        m13419m(new zzaq(this, j));
    }

    /* renamed from: k */
    public final void m13421k(Activity activity, String str, String str2) {
        m13419m(new zzam(this, activity, str, str2));
    }

    /* renamed from: l */
    public final void m13420l(Bundle bundle) {
        m13419m(new zzai(this, bundle));
    }

    /* renamed from: p */
    public final void m13416p(zzgw zzgwVar) {
        Preconditions.m14523k(zzgwVar);
        m13419m(new zzbl(this, zzgwVar));
    }

    /* renamed from: q */
    public final void m13415q(zzgx zzgxVar) {
        m13419m(new zzbc(this, zzgxVar));
    }

    /* renamed from: r */
    public final void m13414r(@Nullable Boolean bool) {
        m13419m(new zzap(this, bool));
    }

    /* renamed from: t */
    public final void m13412t(String str) {
        m13419m(new zzan(this, str));
    }

    /* renamed from: u */
    public final void m13411u(@NonNull String str, Bundle bundle) {
        m13407y(null, str, bundle, false, true, null);
    }

    /* renamed from: v */
    public final void m13410v(String str, String str2) {
        m13464A(null, str, str2, false);
    }

    /* renamed from: w */
    public final void m13409w(String str, String str2, Bundle bundle) {
        m13407y(str, str2, bundle, true, true, null);
    }

    /* renamed from: x */
    public final void m13408x(String str, String str2, Bundle bundle, long j) {
        m13407y(str, str2, bundle, true, false, Long.valueOf(j));
    }

    /* renamed from: z */
    public final void m13406z(String str, String str2, Object obj) {
        m13464A(str, str2, obj, true);
    }
}
