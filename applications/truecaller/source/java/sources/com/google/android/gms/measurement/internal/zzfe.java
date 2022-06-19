package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzu;
import com.mopub.common.Constants;
import e.m.a.f.l.a.d;
import e.m.a.f.l.a.p3;
import e.m.a.f.l.a.v0;
import java.util.HashMap;
import java.util.concurrent.Callable;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1642f.p1667l.p1668a.C25079l0;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzfe.class */
public final /* synthetic */ class zzfe implements Callable {

    /* renamed from: a */
    public final /* synthetic */ zzfi f6402a;

    /* renamed from: b */
    public final /* synthetic */ String f6403b;

    public /* synthetic */ zzfe(zzfi zzfiVar, String str) {
        this.f6402a = zzfiVar;
        this.f6403b = str;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        final zzfi zzfiVar = this.f6402a;
        final String str = this.f6403b;
        return new zzu("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfi zzfiVar2 = zzfiVar;
                String str2 = str;
                d dVar = ((p3) zzfiVar2).b.c;
                zzkp.E(dVar);
                C25079l0 y = dVar.y(str2);
                HashMap m8661V = C22128a.m8661V("platform", Constants.ANDROID_PLATFORM, "package_name", str2);
                ((v0) zzfiVar2).a.g.m();
                m8661V.put("gmp_version", 55005L);
                if (y != null) {
                    String m4195O = y.m4195O();
                    if (m4195O != null) {
                        m8661V.put("app_version", m4195O);
                    }
                    m8661V.put("app_version_int", Long.valueOf(y.m4209A()));
                    m8661V.put("dynamite_version", Long.valueOf(y.m4206D()));
                }
                return m8661V;
            }
        });
    }
}
