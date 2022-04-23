package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.util.zzi;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.util.n;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yd.class */
public final class yd {

    /* renamed from: b  reason: collision with root package name */
    final yo f28527b;

    /* renamed from: c  reason: collision with root package name */
    public Context f28528c;

    /* renamed from: d  reason: collision with root package name */
    zzbar f28529d;
    private final zzi h;
    private dbt<ArrayList<String>> l;

    /* renamed from: a  reason: collision with root package name */
    final Object f28526a = new Object();
    private boolean i = false;
    ax e = null;
    private Boolean j = null;
    final AtomicInteger f = new AtomicInteger(0);
    final yi g = new yi(null);
    private final Object k = new Object();

    public yd() {
        zzi zziVar = new zzi();
        this.h = zziVar;
        this.f28527b = new yo(ekb.f(), zziVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList<String> a(Context context) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            PackageInfo b2 = c.a(context).b(context.getApplicationInfo().packageName, 4096);
            if (!(b2.requestedPermissions == null || b2.requestedPermissionsFlags == null)) {
                for (int i = 0; i < b2.requestedPermissions.length; i++) {
                    if ((b2.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(b2.requestedPermissions[i]);
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return arrayList;
    }

    public final ax a() {
        ax axVar;
        synchronized (this.f28526a) {
            axVar = this.e;
        }
        return axVar;
    }

    public final void a(Context context, zzbar zzbarVar) {
        ax axVar;
        synchronized (this.f28526a) {
            if (!this.i) {
                this.f28528c = context.getApplicationContext();
                this.f28529d = zzbarVar;
                zzr.zzky().a(this.f28527b);
                this.h.initialize(this.f28528c);
                sb.a(this.f28528c, this.f28529d);
                zzr.zzle();
                if (!ci.f25869c.a().booleanValue()) {
                    zzd.zzed("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    axVar = null;
                } else {
                    axVar = new ax();
                }
                this.e = axVar;
                if (axVar != null) {
                    zl.a(new yf(this).zzyx(), "AppState.registerCsiReporter");
                }
                this.i = true;
                e();
            }
        }
        zzr.zzkv().zzq(context, zzbarVar.zzbrz);
    }

    public final void a(Boolean bool) {
        synchronized (this.f28526a) {
            this.j = bool;
        }
    }

    public final void a(Throwable th, String str) {
        sb.a(this.f28528c, this.f28529d).a(th, str);
    }

    public final Boolean b() {
        Boolean bool;
        synchronized (this.f28526a) {
            bool = this.j;
        }
        return bool;
    }

    public final void b(Throwable th, String str) {
        sb.a(this.f28528c, this.f28529d).a(th, str, cu.g.a().floatValue());
    }

    public final Resources c() {
        if (this.f28529d.zzekc) {
            return this.f28528c.getResources();
        }
        try {
            yz.a(this.f28528c).h.getResources();
            return null;
        } catch (zzbap e) {
            zzd.zzd("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final zzf d() {
        zzi zziVar;
        synchronized (this.f28526a) {
            zziVar = this.h;
        }
        return zziVar;
    }

    public final dbt<ArrayList<String>> e() {
        if (n.b() && this.f28528c != null) {
            if (!((Boolean) ekb.e().a(aq.bC)).booleanValue()) {
                synchronized (this.k) {
                    dbt<ArrayList<String>> dbtVar = this.l;
                    if (dbtVar != null) {
                        return dbtVar;
                    }
                    dbt<ArrayList<String>> a2 = zd.f28573a.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.yg

                        /* renamed from: a  reason: collision with root package name */
                        private final yd f28535a;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f28535a = this;
                        }

                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return yd.a(tm.a(this.f28535a.f28528c));
                        }
                    });
                    this.l = a2;
                    return a2;
                }
            }
        }
        return dbh.a(new ArrayList());
    }
}
