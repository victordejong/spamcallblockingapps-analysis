package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.jy;
import com.google.android.gms.internal.measurement.nc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hp.class */
public final class hp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ zzp f29782a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ nc f29783b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ik f29784c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hp(ik ikVar, zzp zzpVar, nc ncVar) {
        this.f29784c = ikVar;
        this.f29782a = zzpVar;
        this.f29783b = ncVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        es esVar;
        String str = null;
        try {
            try {
                jy.b();
                if (!this.f29784c.t.g.d(null, dc.au) || this.f29784c.t.b().e().c()) {
                    df dfVar = this.f29784c.f29842b;
                    if (dfVar == null) {
                        this.f29784c.t.c().f29506c.a("Failed to get app instance id");
                        esVar = this.f29784c.t;
                        str = null;
                    } else {
                        o.a(this.f29782a);
                        String c2 = dfVar.c(this.f29782a);
                        if (c2 != null) {
                            this.f29784c.t.f().a(c2);
                            this.f29784c.t.b().f.a(c2);
                        }
                        this.f29784c.i();
                        esVar = this.f29784c.t;
                        str = c2;
                    }
                } else {
                    this.f29784c.t.c().h.a("Analytics storage consent denied; will not get app instance id");
                    this.f29784c.t.f().a((String) null);
                    this.f29784c.t.b().f.a(null);
                    esVar = this.f29784c.t;
                    str = null;
                }
            } catch (RemoteException e) {
                this.f29784c.t.c().f29506c.a("Failed to get app instance id", e);
                esVar = this.f29784c.t;
            }
            esVar.g().a(this.f29783b, str);
        } catch (Throwable th) {
            this.f29784c.t.g().a(this.f29783b, (String) null);
            throw th;
        }
    }
}
