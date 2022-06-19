package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.internal.measurement.C13639kq;
/* renamed from: com.google.android.gms.measurement.internal.ix */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ix.class */
public final class C14092ix {

    /* renamed from: a */
    protected long f51925a;

    /* renamed from: b */
    protected long f51926b;

    /* renamed from: c */
    final AbstractC14134l f51927c;

    /* renamed from: d */
    final /* synthetic */ C14094iz f51928d;

    public C14092ix(C14094iz c14094iz) {
        this.f51928d = c14094iz;
        this.f51927c = new C14091iw(this, c14094iz.f51637t);
        long mo19038b = c14094iz.f51637t.f51532j.mo19038b();
        this.f51925a = mo19038b;
        this.f51926b = mo19038b;
    }

    /* renamed from: a */
    public final void m11716a() {
        this.f51927c.m11522c();
        this.f51925a = 0L;
        this.f51926b = 0L;
    }

    /* renamed from: a */
    public final void m11715a(long j) {
        this.f51928d.mo11884S_();
        this.f51927c.m11522c();
        this.f51925a = j;
        this.f51926b = j;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* renamed from: a */
    public final boolean m11714a(boolean z, boolean z2, long j) {
        this.f51928d.mo11884S_();
        this.f51928d.m12046k();
        C13639kq.m12378b();
        if (!this.f51928d.f51637t.f51529g.m12061d(null, C13935dc.f51326an)) {
            this.f51928d.f51637t.m11991b().f51465k.m12052a(this.f51928d.f51637t.f51532j.mo19039a());
        } else if (this.f51928d.f51637t.m11979r()) {
            this.f51928d.f51637t.m11991b().f51465k.m12052a(this.f51928d.f51637t.f51532j.mo19039a());
        }
        char c = j - this.f51925a;
        if (!z && c < 1000) {
            this.f51928d.f51637t.mo11661c().f51403k.m12091a("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(c));
            return false;
        }
        if (!z2) {
            c = j - this.f51926b;
            this.f51926b = j;
        }
        this.f51928d.f51637t.mo11661c().f51403k.m12091a("Recording user engagement, ms", Long.valueOf(c));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", c);
        C14052hk.m11825a(this.f51928d.f51637t.m11985l().m11819a(!this.f51928d.f51637t.f51529g.m12058f()), bundle, true);
        if (!this.f51928d.f51637t.f51529g.m12061d(null, C13935dc.f51297T) && z2) {
            bundle.putLong("_fr", 1L);
        }
        if (!this.f51928d.f51637t.f51529g.m12061d(null, C13935dc.f51297T) || !z2) {
            this.f51928d.f51637t.m11989f().m11856a("auto", "_e", bundle);
        }
        this.f51925a = j;
        this.f51927c.m11522c();
        this.f51927c.m11525a(Constants.HOUR_IN_MILLIS);
        return true;
    }
}
