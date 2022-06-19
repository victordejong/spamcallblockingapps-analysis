package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.C2579b;
import com.google.android.gms.common.internal.AbstractC2623c;
import com.google.android.gms.internal.ads.atw;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/clz.class */
public final class clz implements AbstractC2623c.AbstractC2624a, AbstractC2623c.AbstractC2625b {

    /* renamed from: a */
    private cmy f13311a;

    /* renamed from: b */
    private final String f13312b;

    /* renamed from: c */
    private final String f13313c;

    /* renamed from: e */
    private final HandlerThread f13315e = new HandlerThread("GassClient");

    /* renamed from: d */
    private final LinkedBlockingQueue<atw.C2798a> f13314d = new LinkedBlockingQueue<>();

    public clz(Context context, String str, String str2) {
        this.f13312b = str;
        this.f13313c = str2;
        this.f13315e.start();
        this.f13311a = new cmy(context, this.f13315e.getLooper(), this, this, 9200000);
        this.f13311a.m14072o();
    }

    /* renamed from: a */
    private final cnf m11069a() {
        cnf cnfVar;
        try {
            cnfVar = this.f13311a.m11002c();
        } catch (DeadObjectException | IllegalStateException e) {
            cnfVar = null;
        }
        return cnfVar;
    }

    /* renamed from: b */
    private final void m11068b() {
        if (this.f13311a != null) {
            if (!this.f13311a.m14081f() && !this.f13311a.m14079g()) {
                return;
            }
            this.f13311a.m14083e();
        }
    }

    /* renamed from: c */
    private static atw.C2798a m11066c() {
        return (atw.C2798a) ((dcw) atw.C2798a.m12647h().m12565j(32768L).mo9987g());
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4310a(int i) {
        try {
            this.f13314d.put(m11066c());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4308a(Bundle bundle) {
        cnf m11069a = m11069a();
        if (m11069a != null) {
            try {
                this.f13314d.put(m11069a.mo10998a(new cnb(this.f13312b, this.f13313c)).m11001a());
                m11068b();
                this.f13315e.quit();
            } catch (Throwable th) {
                try {
                    this.f13314d.put(m11066c());
                } catch (InterruptedException e) {
                } catch (Throwable th2) {
                    m11068b();
                    this.f13315e.quit();
                    throw th2;
                }
                m11068b();
                this.f13315e.quit();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2625b
    /* renamed from: a */
    public final void mo4307a(C2579b c2579b) {
        try {
            this.f13314d.put(m11066c());
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: b */
    public final atw.C2798a m11067b(int i) {
        atw.C2798a c2798a;
        try {
            c2798a = this.f13314d.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            c2798a = null;
        }
        atw.C2798a c2798a2 = c2798a;
        if (c2798a == null) {
            c2798a2 = m11066c();
        }
        return c2798a2;
    }
}
