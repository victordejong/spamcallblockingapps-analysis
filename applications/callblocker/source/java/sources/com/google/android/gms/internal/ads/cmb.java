package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.AbstractC2623c;
import com.google.android.gms.internal.ads.akn;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cmb.class */
final class cmb implements AbstractC2623c.AbstractC2624a, AbstractC2623c.AbstractC2625b {

    /* renamed from: a */
    private cmy f13316a;

    /* renamed from: b */
    private final String f13317b;

    /* renamed from: c */
    private final String f13318c;

    /* renamed from: d */
    private final dkc f13319d;

    /* renamed from: h */
    private final clq f13323h;

    /* renamed from: e */
    private final int f13320e = 1;

    /* renamed from: g */
    private final HandlerThread f13322g = new HandlerThread("GassDGClient");

    /* renamed from: i */
    private final long f13324i = System.currentTimeMillis();

    /* renamed from: f */
    private final LinkedBlockingQueue<cno> f13321f = new LinkedBlockingQueue<>();

    public cmb(Context context, int i, dkc dkcVar, String str, String str2, String str3, clq clqVar) {
        this.f13317b = str;
        this.f13319d = dkcVar;
        this.f13318c = str2;
        this.f13323h = clqVar;
        this.f13322g.start();
        this.f13316a = new cmy(context, this.f13322g.getLooper(), this, this, 19621000);
        this.f13316a.m14072o();
    }

    /* renamed from: a */
    private final cnf m11064a() {
        cnf cnfVar;
        try {
            cnfVar = this.f13316a.m11002c();
        } catch (DeadObjectException | IllegalStateException e) {
            cnfVar = null;
        }
        return cnfVar;
    }

    /* renamed from: a */
    private final void m11063a(int i, long j, Exception exc) {
        if (this.f13323h != null) {
            this.f13323h.m11085a(i, System.currentTimeMillis() - j, exc);
        }
    }

    /* renamed from: b */
    private final void m11062b() {
        if (this.f13316a != null) {
            if (!this.f13316a.m14081f() && !this.f13316a.m14079g()) {
                return;
            }
            this.f13316a.m14083e();
        }
    }

    /* renamed from: c */
    private static cno m11060c() {
        return new cno(null, 1);
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4310a(int i) {
        try {
            m11063a(4011, this.f13324i, null);
            this.f13321f.put(m11060c());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4308a(Bundle bundle) {
        cnf m11064a = m11064a();
        if (m11064a != null) {
            try {
                cno mo10997a = m11064a.mo10997a(new cnm(this.f13320e, this.f13319d, this.f13317b, this.f13318c));
                m11063a(5011, this.f13324i, null);
                this.f13321f.put(mo10997a);
            } catch (Throwable th) {
                try {
                    m11063a(2010, this.f13324i, new Exception(th));
                } finally {
                    m11062b();
                    this.f13322g.quit();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2625b
    /* renamed from: a */
    public final void mo4307a(C2579b c2579b) {
        try {
            m11063a(4012, this.f13324i, null);
            this.f13321f.put(m11060c());
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: b */
    public final cno m11061b(int i) {
        cno cnoVar;
        try {
            cnoVar = this.f13321f.poll(50000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            m11063a(2009, this.f13324i, e);
            cnoVar = null;
        }
        m11063a(3004, this.f13324i, null);
        if (cnoVar != null) {
            if (cnoVar.f13408b == 7) {
                clq.m11078a(akn.C2774a.EnumC2778c.DISABLED);
            } else {
                clq.m11078a(akn.C2774a.EnumC2778c.ENABLED);
            }
        }
        cno cnoVar2 = cnoVar;
        if (cnoVar == null) {
            cnoVar2 = m11060c();
        }
        return cnoVar2;
    }
}
