package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.measurement.HandlerC13642kt;
/* renamed from: com.google.android.gms.measurement.internal.iz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iz.class */
public final class C14094iz extends AbstractC13962ec {

    /* renamed from: a */
    Handler f51930a;

    /* renamed from: b */
    protected final C14093iy f51931b = new C14093iy(this);

    /* renamed from: c */
    protected final C14092ix f51932c = new C14092ix(this);

    /* renamed from: d */
    protected final C14090iv f51933d = new C14090iv(this);

    public C14094iz(C13979es c13979es) {
        super(c13979es);
    }

    /* renamed from: a */
    public static /* synthetic */ void m11710a(C14094iz c14094iz, long j) {
        c14094iz.mo11884S_();
        c14094iz.m11707e();
        c14094iz.f51637t.mo11661c().f51403k.m12091a("Activity resumed, time", Long.valueOf(j));
        if (c14094iz.f51637t.f51529g.m12061d(null, C13935dc.f51330ar)) {
            if (c14094iz.f51637t.f51529g.m12058f() || c14094iz.f51637t.m11991b().f51467m.m12077a()) {
                c14094iz.f51932c.m11715a(j);
            }
            c14094iz.f51933d.m11718a();
        } else {
            c14094iz.f51933d.m11718a();
            if (c14094iz.f51637t.f51529g.m12058f()) {
                c14094iz.f51932c.m11715a(j);
            }
        }
        C14093iy c14093iy = c14094iz.f51931b;
        c14093iy.f51929a.mo11884S_();
        if (!c14093iy.f51929a.f51637t.m11979r()) {
            return;
        }
        if (!c14093iy.f51929a.f51637t.f51529g.m12061d(null, C13935dc.f51330ar)) {
            c14093iy.f51929a.f51637t.m11991b().f51467m.m12076a(false);
        }
        c14093iy.m11712a(c14093iy.f51929a.f51637t.f51532j.mo19039a(), false);
    }

    /* renamed from: b */
    public static /* synthetic */ void m11708b(C14094iz c14094iz, long j) {
        c14094iz.mo11884S_();
        c14094iz.m11707e();
        c14094iz.f51637t.mo11661c().f51403k.m12091a("Activity paused, time", Long.valueOf(j));
        c14094iz.f51933d.m11717a(j);
        if (c14094iz.f51637t.f51529g.m12058f()) {
            c14094iz.f51932c.f51927c.m11522c();
        }
        C14093iy c14093iy = c14094iz.f51931b;
        if (!c14093iy.f51929a.f51637t.f51529g.m12061d(null, C13935dc.f51330ar)) {
            c14093iy.f51929a.f51637t.m11991b().f51467m.m12076a(true);
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13962ec
    /* renamed from: b */
    protected final boolean mo11709b() {
        return false;
    }

    /* renamed from: e */
    public final void m11707e() {
        mo11884S_();
        if (this.f51930a == null) {
            this.f51930a = new HandlerC13642kt(Looper.getMainLooper());
        }
    }
}
