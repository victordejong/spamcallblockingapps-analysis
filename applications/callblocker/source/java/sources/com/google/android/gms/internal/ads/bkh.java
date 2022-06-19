package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.C2579b;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bkh.class */
public final class bkh extends bke {

    /* renamed from: g */
    private String f11422g;

    /* renamed from: h */
    private int f11423h = bkn.f11429a;

    public bkh(Context context) {
        this.f11420f = new C3404pd(context, C2341q.m14730q().m6841a(), this, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.crt] */
    /* renamed from: a */
    public final crt<InputStream> m11834a(C3423pw c3423pw) {
        C3658yo<InputStream> c3658yo;
        synchronized (this.f11416b) {
            if (this.f11423h != bkn.f11429a && this.f11423h != bkn.f11430b) {
                c3658yo = crg.m10777a((Throwable) new zzclc(1));
            } else if (this.f11417c) {
                c3658yo = this.f11415a;
            } else {
                this.f11423h = bkn.f11430b;
                this.f11417c = true;
                this.f11419e = c3423pw;
                this.f11420f.m14072o();
                this.f11415a.mo6734a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bkk

                    /* renamed from: a */
                    private final bkh f11426a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f11426a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11426a.m11836a();
                    }
                }, C3650yg.f17647f);
                c3658yo = this.f11415a;
            }
        }
        return c3658yo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v31, types: [com.google.android.gms.internal.ads.crt] */
    /* renamed from: a */
    public final crt<InputStream> m11833a(String str) {
        C3658yo<InputStream> c3658yo;
        synchronized (this.f11416b) {
            if (this.f11423h != bkn.f11429a && this.f11423h != bkn.f11431c) {
                c3658yo = crg.m10777a((Throwable) new zzclc(1));
            } else if (this.f11417c) {
                c3658yo = this.f11415a;
            } else {
                this.f11423h = bkn.f11431c;
                this.f11417c = true;
                this.f11422g = str;
                this.f11420f.m14072o();
                this.f11415a.mo6734a(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bkj

                    /* renamed from: a */
                    private final bkh f11425a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f11425a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f11425a.m11836a();
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
                    if (this.f11423h == bkn.f11430b) {
                        this.f11420f.m7343c().mo7333c(this.f11419e, new bkd(this));
                    } else if (this.f11423h == bkn.f11431c) {
                        this.f11420f.m7343c().mo7335a(this.f11422g, new bkd(this));
                    } else {
                        this.f11415a.m6733a(new zzclc(0));
                    }
                } catch (RemoteException e) {
                    this.f11415a.m6733a(new zzclc(0));
                } catch (IllegalArgumentException e2) {
                    this.f11415a.m6733a(new zzclc(0));
                } catch (Throwable th) {
                    C2341q.m14740g().m7095a(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
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
