package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.simpleframework.xml.strategy.Name;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzij.class */
public final class zzij extends zzg {

    /* renamed from: c */
    private volatile zzig f9498c;

    /* renamed from: d */
    private zzig f9499d;
    @VisibleForTesting

    /* renamed from: e */
    protected zzig f9500e;

    /* renamed from: g */
    private Activity f9502g;

    /* renamed from: h */
    private volatile boolean f9503h;

    /* renamed from: i */
    private volatile zzig f9504i;

    /* renamed from: j */
    private zzig f9505j;

    /* renamed from: k */
    private boolean f9506k;

    /* renamed from: m */
    private String f9508m;

    /* renamed from: l */
    private final Object f9507l = new Object();

    /* renamed from: f */
    private final Map<Activity, zzig> f9501f = new ConcurrentHashMap();

    public zzij(zzfv zzfvVar) {
        super(zzfvVar);
    }

    @VisibleForTesting
    /* renamed from: D */
    private static String m11228D(String str) {
        String[] split = str.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        String str3 = str2;
        if (str2.length() > 100) {
            str3 = str2.substring(0, 100);
        }
        return str3;
    }

    @MainThread
    /* renamed from: G */
    private final void m11225G(Activity activity, zzig zzigVar, boolean z) {
        zzig zzigVar2 = this.f9498c == null ? this.f9499d : this.f9498c;
        if (zzigVar.f9488b == null) {
            zzigVar = new zzig(zzigVar.f9487a, activity != null ? m11228D(activity.getClass().getCanonicalName()) : null, zzigVar.f9489c, zzigVar.f9491e, zzigVar.f9492f);
        }
        this.f9499d = this.f9498c;
        this.f9498c = zzigVar;
        mo11083b().m11409x(new zzil(this, zzigVar, zzigVar2, mo11085a().mo14334b(), z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: J */
    public final void m11222J(Bundle bundle, @NonNull zzig zzigVar, zzig zzigVar2, long j) {
        if (bundle != null) {
            bundle.remove(FirebaseAnalytics.Param.SCREEN_NAME);
            bundle.remove(FirebaseAnalytics.Param.SCREEN_CLASS);
        }
        m11220L(zzigVar, zzigVar2, j, true, m11313j().m11001B(null, FirebaseAnalytics.Event.SCREEN_VIEW, bundle, null, true, true));
    }

    /* renamed from: K */
    public static void m11221K(zzig zzigVar, Bundle bundle, boolean z) {
        if (bundle != null && zzigVar != null && (!bundle.containsKey("_sc") || z)) {
            String str = zzigVar.f9487a;
            if (str != null) {
                bundle.putString("_sn", str);
            } else {
                bundle.remove("_sn");
            }
            String str2 = zzigVar.f9488b;
            if (str2 != null) {
                bundle.putString("_sc", str2);
            } else {
                bundle.remove("_sc");
            }
            bundle.putLong("_si", zzigVar.f9489c);
        } else if (bundle != null && zzigVar == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r10v2, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    @androidx.annotation.WorkerThread
    /* renamed from: L */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11220L(com.google.android.gms.measurement.internal.zzig r8, com.google.android.gms.measurement.internal.zzig r9, long r10, boolean r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzij.m11220L(com.google.android.gms.measurement.internal.zzig, com.google.android.gms.measurement.internal.zzig, long, boolean, android.os.Bundle):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: M */
    public final void m11219M(zzig zzigVar, boolean z, long j) {
        m11601n().m11810u(mo11085a().mo14334b());
        if (m11595t().m11146D(zzigVar != null && zzigVar.f9490d, z, j) && zzigVar != null) {
            zzigVar.f9490d = false;
        }
    }

    @MainThread
    /* renamed from: V */
    private final zzig m11210V(@NonNull Activity activity) {
        Preconditions.m14523k(activity);
        zzig zzigVar = this.f9501f.get(activity);
        zzig zzigVar2 = zzigVar;
        if (zzigVar == null) {
            zzigVar2 = new zzig(null, m11228D(activity.getClass().getCanonicalName()), m11313j().m10998C0());
            this.f9501f.put(activity, zzigVar2);
        }
        if (m11311l().m10880r(zzat.f8971v0) && this.f9504i != null) {
            return this.f9504i;
        }
        return zzigVar2;
    }

    @WorkerThread
    /* renamed from: C */
    public final zzig m11229C(boolean z) {
        m11321v();
        mo11316e();
        if (!m11311l().m10880r(zzat.f8971v0) || !z) {
            return this.f9500e;
        }
        zzig zzigVar = this.f9500e;
        return zzigVar != null ? zzigVar : this.f9505j;
    }

    @MainThread
    /* renamed from: E */
    public final void m11227E(Activity activity) {
        if (m11311l().m10880r(zzat.f8971v0)) {
            synchronized (this.f9507l) {
                this.f9506k = true;
                if (activity != this.f9502g) {
                    synchronized (this.f9507l) {
                        this.f9502g = activity;
                        this.f9503h = false;
                    }
                    if (m11311l().m10880r(zzat.f8969u0) && m11311l().m10896G().booleanValue()) {
                        this.f9504i = null;
                        mo11083b().m11409x(new zzip(this));
                    }
                }
            }
        }
        if (!m11311l().m10880r(zzat.f8969u0) || m11311l().m10896G().booleanValue()) {
            m11225G(activity, m11210V(activity), false);
            zza n = m11601n();
            n.mo11083b().m11409x(new zze(n, n.mo11085a().mo14334b()));
            return;
        }
        this.f9498c = this.f9504i;
        mo11083b().m11409x(new zzik(this));
    }

    @MainThread
    /* renamed from: F */
    public final void m11226F(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (m11311l().m10896G().booleanValue() && bundle != null && (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) != null) {
            this.f9501f.put(activity, new zzig(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong(Name.MARK)));
        }
    }

    @Deprecated
    @MainThread
    /* renamed from: H */
    public final void m11224H(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        if (!m11311l().m10896G().booleanValue()) {
            mo11081c().m11555I().m11540a("setCurrentScreen cannot be called while screen reporting is disabled.");
        } else if (this.f9498c == null) {
            mo11081c().m11555I().m11540a("setCurrentScreen cannot be called while no activity active");
        } else if (this.f9501f.get(activity) == null) {
            mo11081c().m11555I().m11540a("setCurrentScreen must be called with an activity in the activity lifecycle");
        } else {
            String str3 = str2;
            if (str2 == null) {
                str3 = m11228D(activity.getClass().getCanonicalName());
            }
            boolean z0 = zzkw.m10930z0(this.f9498c.f9488b, str3);
            boolean z02 = zzkw.m10930z0(this.f9498c.f9487a, str);
            if (z0 && z02) {
                mo11081c().m11555I().m11540a("setCurrentScreen cannot be called with the same class and name");
            } else if (str != null && (str.length() <= 0 || str.length() > 100)) {
                mo11081c().m11555I().m11539b("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            } else if (str3 == null || (str3.length() > 0 && str3.length() <= 100)) {
                mo11081c().m11552L().m11538c("Setting current screen to name, class", str == null ? "null" : str, str3);
                zzig zzigVar = new zzig(str, str3, m11313j().m10998C0());
                this.f9501f.put(activity, zzigVar);
                m11225G(activity, zzigVar, true);
            } else {
                mo11081c().m11555I().m11539b("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str3.length()));
            }
        }
    }

    /* renamed from: I */
    public final void m11223I(Bundle bundle, long j) {
        String str;
        if (!m11311l().m10880r(zzat.f8971v0)) {
            mo11081c().m11555I().m11540a("Manual screen reporting is disabled.");
            return;
        }
        synchronized (this.f9507l) {
            if (!this.f9506k) {
                mo11081c().m11555I().m11540a("Cannot log screen view event when the app is in the background.");
                return;
            }
            String str2 = null;
            if (bundle != null) {
                str = bundle.getString(FirebaseAnalytics.Param.SCREEN_NAME);
                if (str == null || (str.length() > 0 && str.length() <= 100)) {
                    str2 = bundle.getString(FirebaseAnalytics.Param.SCREEN_CLASS);
                    if (str2 != null && (str2.length() <= 0 || str2.length() > 100)) {
                        mo11081c().m11555I().m11539b("Invalid screen class length for screen view. Length", Integer.valueOf(str2.length()));
                        return;
                    }
                } else {
                    mo11081c().m11555I().m11539b("Invalid screen name length for screen view. Length", Integer.valueOf(str.length()));
                    return;
                }
            } else {
                str = null;
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = this.f9502g != null ? m11228D(this.f9502g.getClass().getCanonicalName()) : "Activity";
            }
            if (this.f9503h && this.f9498c != null) {
                this.f9503h = false;
                boolean z0 = zzkw.m10930z0(this.f9498c.f9488b, str3);
                boolean z02 = zzkw.m10930z0(this.f9498c.f9487a, str);
                if (z0 && z02) {
                    mo11081c().m11555I().m11540a("Ignoring call to log screen view event with duplicate parameters.");
                    return;
                }
            }
            mo11081c().m11552L().m11538c("Logging screen view with name, class", str == null ? "null" : str, str3 == null ? "null" : str3);
            zzig zzigVar = this.f9498c == null ? this.f9499d : this.f9498c;
            zzig zzigVar2 = new zzig(str, str3, m11313j().m10998C0(), true, j);
            this.f9498c = zzigVar2;
            this.f9499d = zzigVar;
            this.f9504i = zzigVar2;
            mo11083b().m11409x(new zzii(this, bundle, zzigVar2, zzigVar, mo11085a().mo14334b()));
        }
    }

    @WorkerThread
    /* renamed from: Q */
    public final void m11215Q(String str, zzig zzigVar) {
        mo11316e();
        synchronized (this) {
            if (this.f9508m == null || this.f9508m.equals(str) || zzigVar != null) {
                this.f9508m = str;
            }
        }
    }

    /* renamed from: R */
    public final zzig m11214R() {
        return this.f9498c;
    }

    @MainThread
    /* renamed from: S */
    public final void m11213S(Activity activity) {
        if (m11311l().m10880r(zzat.f8971v0)) {
            synchronized (this.f9507l) {
                this.f9506k = false;
                this.f9503h = true;
            }
        }
        long b = mo11085a().mo14334b();
        if (!m11311l().m10880r(zzat.f8969u0) || m11311l().m10896G().booleanValue()) {
            zzig V = m11210V(activity);
            this.f9499d = this.f9498c;
            this.f9498c = null;
            mo11083b().m11409x(new zzim(this, V, b));
            return;
        }
        this.f9498c = null;
        mo11083b().m11409x(new zzin(this, b));
    }

    @MainThread
    /* renamed from: T */
    public final void m11212T(Activity activity, Bundle bundle) {
        zzig zzigVar;
        if (m11311l().m10896G().booleanValue() && bundle != null && (zzigVar = this.f9501f.get(activity)) != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong(Name.MARK, zzigVar.f9489c);
            bundle2.putString("name", zzigVar.f9487a);
            bundle2.putString("referrer_name", zzigVar.f9488b);
            bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
        }
    }

    @MainThread
    /* renamed from: U */
    public final void m11211U(Activity activity) {
        synchronized (this.f9507l) {
            if (activity == this.f9502g) {
                this.f9502g = null;
            }
        }
        if (m11311l().m10896G().booleanValue()) {
            this.f9501f.remove(activity);
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzg
    /* renamed from: y */
    protected final boolean mo11140y() {
        return false;
    }
}
