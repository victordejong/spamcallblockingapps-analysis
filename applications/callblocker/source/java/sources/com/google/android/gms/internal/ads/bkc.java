package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.C2579b;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bkc.class */
public final class bkc extends bke {
    public bkc(Context context) {
        this.f11420f = new C3404pd(context, C2341q.m14730q().m6841a(), this, this);
    }

    /* renamed from: a */
    public final crt<InputStream> m11837a(C3423pw c3423pw) {
        C3658yo<InputStream> c3658yo;
        synchronized (this.f11416b) {
            if (this.f11417c) {
                c3658yo = this.f11415a;
            } else {
                this.f11417c = true;
                this.f11419e = c3423pw;
                this.f11420f.m14072o();
                this.f11415a.mo6734a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bkb

                    /* renamed from: a */
                    private final bkc f11413a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f11413a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11413a.m11836a();
                    }
                }, C3650yg.f17647f);
                c3658yo = this.f11415a;
            }
        }
        return c3658yo;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2623c.AbstractC2624a
    /* renamed from: a */
    public final void mo4308a(Bundle bundle) {
        synchronized (this.f11416b) {
            if (!this.f11418d) {
                this.f11418d = true;
                try {
                    this.f11420f.m7343c().mo7336a(this.f11419e, new bkd(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f11415a.m6733a(new zzclc(0));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bke, com.google.android.gms.common.internal.AbstractC2623c.AbstractC2625b
    /* renamed from: a */
    public final void mo4307a(C2579b c2579b) {
        C3556uu.m6751b("Cannot connect to remote service, fallback to local instance.");
        this.f11415a.m6733a(new zzclc(0));
    }
}
