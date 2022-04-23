package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.internal.measurement.kq;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ix.class */
public final class ix {

    /* renamed from: a  reason: collision with root package name */
    protected long f29870a;

    /* renamed from: b  reason: collision with root package name */
    protected long f29871b;

    /* renamed from: c  reason: collision with root package name */
    final l f29872c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ iz f29873d;

    public ix(iz izVar) {
        this.f29873d = izVar;
        this.f29872c = new iw(this, izVar.t);
        long b2 = izVar.t.j.b();
        this.f29870a = b2;
        this.f29871b = b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f29872c.c();
        this.f29870a = 0L;
        this.f29871b = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(long j) {
        this.f29873d.S_();
        this.f29872c.c();
        this.f29870a = j;
        this.f29871b = j;
    }

    public final boolean a(boolean z, boolean z2, long j) {
        this.f29873d.S_();
        this.f29873d.k();
        kq.b();
        if (!this.f29873d.t.g.d(null, dc.an)) {
            this.f29873d.t.b().k.a(this.f29873d.t.j.a());
        } else if (this.f29873d.t.r()) {
            this.f29873d.t.b().k.a(this.f29873d.t.j.a());
        }
        long j2 = j - this.f29870a;
        if (z || j2 >= 1000) {
            if (!z2) {
                j2 = j - this.f29871b;
                this.f29871b = j;
            }
            this.f29873d.t.c().k.a("Recording user engagement, ms", Long.valueOf(j2));
            Bundle bundle = new Bundle();
            bundle.putLong("_et", j2);
            hk.a(this.f29873d.t.l().a(!this.f29873d.t.g.f()), bundle, true);
            if (!this.f29873d.t.g.d(null, dc.T) && z2) {
                bundle.putLong("_fr", 1L);
            }
            if (!this.f29873d.t.g.d(null, dc.T) || !z2) {
                this.f29873d.t.f().a("auto", "_e", bundle);
            }
            this.f29870a = j;
            this.f29872c.c();
            this.f29872c.a(Constants.HOUR_IN_MILLIS);
            return true;
        }
        this.f29873d.t.c().k.a("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
        return false;
    }
}
