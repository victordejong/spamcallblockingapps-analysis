package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.f;
import com.google.android.gms.common.util.i;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.a.a;
import com.google.android.gms.measurement.internal.ek;
import com.google.android.gms.measurement.internal.fu;
import com.google.android.gms.measurement.internal.hb;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ak.class */
public final class ak {
    private static volatile ak e;

    /* renamed from: a  reason: collision with root package name */
    protected final f f28930a;

    /* renamed from: b  reason: collision with root package name */
    protected final ExecutorService f28931b;

    /* renamed from: c  reason: collision with root package name */
    public final a f28932c;

    /* renamed from: d  reason: collision with root package name */
    public final String f28933d;
    private final String f;
    private final List<Pair<fu, ab>> g;
    private int h;
    private boolean i;
    private volatile mz j;

    protected ak(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !c(str2, str3)) {
            this.f = "FA";
        } else {
            this.f = str;
        }
        this.f28930a = i.d();
        this.f28931b = js.a().a(new t(this));
        this.f28932c = new a(this);
        this.g = new ArrayList();
        boolean z = true;
        try {
            if (hb.a(context, ek.a(context)) != null && !f()) {
                this.f28933d = null;
                this.i = true;
                Log.w(this.f, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
                return;
            }
        } catch (IllegalStateException e2) {
        }
        if (!c(str2, str3)) {
            this.f28933d = "fa";
            if (str2 == null || str3 == null) {
                if ((str3 != null ? false : z) ^ (str2 == null)) {
                    Log.w(this.f, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            }
        } else {
            this.f28933d = str2;
        }
        a(new i(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.f, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new aj(this));
        }
    }

    public static ak a(Context context, String str, String str2, String str3, Bundle bundle) {
        o.a(context);
        if (e == null) {
            synchronized (ak.class) {
                try {
                    if (e == null) {
                        e = new ak(context, str, str2, str3, bundle);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Exception exc, boolean z, boolean z2) {
        this.i |= z;
        if (z) {
            Log.w(this.f, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z2) {
            a("Error with data collection. Data lost.", exc);
        }
        Log.w(this.f, "Error with data collection. Data lost.", exc);
    }

    private void a(String str, Object obj) {
        a(new r(this, false, 5, str, obj, null, null));
    }

    private final void a(String str, String str2, Bundle bundle, boolean z) {
        a(new y(this, null, str, str2, bundle, z, true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(String str, String str2) {
        return (str2 == null || str == null || f()) ? false : true;
    }

    private static boolean f() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException e2) {
            return false;
        }
    }

    public final Bundle a(Bundle bundle, boolean z) {
        lu luVar = new lu();
        a(new s(this, bundle, luVar));
        if (z) {
            return luVar.b(5000L);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final mz a(Context context) {
        try {
            return my.asInterface(DynamiteModule.a(context, DynamiteModule.f, ModuleDescriptor.MODULE_ID).a("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e2) {
            a((Exception) e2, true, false);
            return null;
        }
    }

    public final String a() {
        lu luVar = new lu();
        a(new l(this, luVar));
        return luVar.a(500L);
    }

    public final List<Bundle> a(String str, String str2) {
        lu luVar = new lu();
        a(new e(this, str, str2, luVar));
        List<Bundle> list = (List) lu.a(luVar.b(5000L), List.class);
        List<Bundle> list2 = list;
        if (list == null) {
            list2 = Collections.emptyList();
        }
        return list2;
    }

    public final Map<String, Object> a(String str, String str2, boolean z) {
        lu luVar = new lu();
        a(new q(this, str, str2, z, luVar));
        Bundle b2 = luVar.b(5000L);
        if (b2 == null || b2.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(b2.size());
        for (String str3 : b2.keySet()) {
            Object obj = b2.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                hashMap.put(str3, obj);
            }
        }
        return hashMap;
    }

    public final void a(Activity activity, String str, String str2) {
        a(new g(this, activity, str, str2));
    }

    public final void a(Bundle bundle) {
        a(new c(this, bundle));
    }

    public final void a(aa aaVar) {
        this.f28931b.execute(aaVar);
    }

    public final void a(fu fuVar) {
        o.a(fuVar);
        synchronized (this.g) {
            for (int i = 0; i < this.g.size(); i++) {
                if (fuVar.equals(this.g.get(i).first)) {
                    Log.w(this.f, "OnEventListener already registered.");
                    return;
                }
            }
            ab abVar = new ab(fuVar);
            this.g.add(new Pair<>(fuVar, abVar));
            if (this.j != null) {
                try {
                    this.j.registerOnMeasurementEventListener(abVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException e2) {
                    Log.w(this.f, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            a(new x(this, abVar));
        }
    }

    public final void a(String str) {
        a(new f(this, str));
    }

    public final void a(String str, Bundle bundle) {
        a((String) null, str, bundle, false);
    }

    public final void a(String str, String str2, Bundle bundle) {
        a(str, str2, bundle, true);
    }

    public final void a(String str, String str2, Object obj, boolean z) {
        a(new z(this, str, str2, obj, z));
    }

    public final void a(boolean z) {
        a(new w(this, z));
    }

    public final String b() {
        lu luVar = new lu();
        a(new m(this, luVar));
        return luVar.a(50L);
    }

    public final void b(String str) {
        a(new j(this, str));
    }

    public final void b(String str, String str2, Bundle bundle) {
        a(new d(this, str, str2, bundle));
    }

    public final long c() {
        long j;
        lu luVar = new lu();
        a(new n(this, luVar));
        Long l = (Long) lu.a(luVar.b(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f28930a.a()).nextLong();
            int i = this.h + 1;
            this.h = i;
            j = nextLong + i;
        } else {
            j = l.longValue();
        }
        return j;
    }

    public final void c(String str) {
        a(new k(this, str));
    }

    public final int d(String str) {
        lu luVar = new lu();
        a(new u(this, str, luVar));
        Integer num = (Integer) lu.a(luVar.b(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final String d() {
        lu luVar = new lu();
        a(new o(this, luVar));
        return luVar.a(500L);
    }

    public final String e() {
        lu luVar = new lu();
        a(new p(this, luVar));
        return luVar.a(500L);
    }
}
