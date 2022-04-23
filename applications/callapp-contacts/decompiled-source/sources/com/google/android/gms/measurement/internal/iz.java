package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.measurement.kt;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iz.class */
public final class iz extends ec {

    /* renamed from: a  reason: collision with root package name */
    Handler f29875a;

    /* renamed from: b  reason: collision with root package name */
    protected final iy f29876b = new iy(this);

    /* renamed from: c  reason: collision with root package name */
    protected final ix f29877c = new ix(this);

    /* renamed from: d  reason: collision with root package name */
    protected final iv f29878d = new iv(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public iz(es esVar) {
        super(esVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(iz izVar, long j) {
        izVar.S_();
        izVar.e();
        izVar.t.c().k.a("Activity resumed, time", Long.valueOf(j));
        if (izVar.t.g.d(null, dc.ar)) {
            if (izVar.t.g.f() || izVar.t.b().m.a()) {
                izVar.f29877c.a(j);
            }
            izVar.f29878d.a();
        } else {
            izVar.f29878d.a();
            if (izVar.t.g.f()) {
                izVar.f29877c.a(j);
            }
        }
        iy iyVar = izVar.f29876b;
        iyVar.f29874a.S_();
        if (iyVar.f29874a.t.r()) {
            if (!iyVar.f29874a.t.g.d(null, dc.ar)) {
                iyVar.f29874a.t.b().m.a(false);
            }
            iyVar.a(iyVar.f29874a.t.j.a(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(iz izVar, long j) {
        izVar.S_();
        izVar.e();
        izVar.t.c().k.a("Activity paused, time", Long.valueOf(j));
        izVar.f29878d.a(j);
        if (izVar.t.g.f()) {
            izVar.f29877c.f29872c.c();
        }
        iy iyVar = izVar.f29876b;
        if (!iyVar.f29874a.t.g.d(null, dc.ar)) {
            iyVar.f29874a.t.b().m.a(true);
        }
    }

    @Override // com.google.android.gms.measurement.internal.ec
    protected final boolean b() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        S_();
        if (this.f29875a == null) {
            this.f29875a = new kt(Looper.getMainLooper());
        }
    }
}
