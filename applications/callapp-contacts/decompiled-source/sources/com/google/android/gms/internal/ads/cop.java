package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cop.class */
public final class cop extends tv {

    /* renamed from: a  reason: collision with root package name */
    private final coa f26169a;

    /* renamed from: b  reason: collision with root package name */
    private final cnc f26170b;

    /* renamed from: c  reason: collision with root package name */
    private final cpj f26171c;

    /* renamed from: d  reason: collision with root package name */
    private bhu f26172d;
    private boolean e = false;

    public cop(coa coaVar, cnc cncVar, cpj cpjVar) {
        this.f26169a = coaVar;
        this.f26170b = cncVar;
        this.f26171c = cpjVar;
    }

    private final boolean j() {
        boolean z;
        synchronized (this) {
            bhu bhuVar = this.f26172d;
            if (bhuVar != null) {
                if (!bhuVar.f24483c.f23668a.get()) {
                    z = true;
                }
            }
            z = false;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a() throws RemoteException {
        synchronized (this) {
            a((b) null);
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(b bVar) throws RemoteException {
        Activity activity;
        synchronized (this) {
            o.b("showAd must be called on the main UI thread.");
            if (this.f26172d != null) {
                if (bVar != null) {
                    Object a2 = d.a(bVar);
                    if (a2 instanceof Activity) {
                        activity = (Activity) a2;
                        this.f26172d.a(this.e, activity);
                    }
                }
                activity = null;
                this.f26172d.a(this.e, activity);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(ekz ekzVar) {
        o.b("setAdMetadataListener can only be called from the UI thread.");
        if (ekzVar == null) {
            this.f26170b.a((AdMetadataListener) null);
        } else {
            this.f26170b.a(new cor(this, ekzVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(tq tqVar) {
        o.b("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
        this.f26170b.f26110d.set(tqVar);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(tz tzVar) throws RemoteException {
        o.b("setRewardedVideoAdListener can only be called from the UI thread.");
        this.f26170b.a(tzVar);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(zzavt zzavtVar) throws RemoteException {
        synchronized (this) {
            o.b("loadAd must be called on the main UI thread.");
            if (!as.a((String) ekb.e().a(aq.db), zzavtVar.zzbvf)) {
                if (j()) {
                    if (!((Boolean) ekb.e().a(aq.dd)).booleanValue()) {
                        return;
                    }
                }
                coc cocVar = new coc(null);
                this.f26172d = null;
                this.f26169a.a(cpg.f26210a);
                this.f26169a.a(zzavtVar.zzdvn, zzavtVar.zzbvf, cocVar, new cos(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(String str) throws RemoteException {
        synchronized (this) {
            o.b("setUserId must be called on the main UI thread.");
            this.f26171c.f26219a = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void a(boolean z) {
        synchronized (this) {
            o.b("setImmersiveMode must be called on the main UI thread.");
            this.e = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final Bundle b() {
        o.b("getAdMetadata can only be called from the UI thread.");
        bhu bhuVar = this.f26172d;
        return bhuVar != null ? bhuVar.f24482b.a() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void b(b bVar) {
        synchronized (this) {
            o.b("pause must be called on the main UI thread.");
            if (this.f26172d != null) {
                this.f26172d.j.a(bVar == null ? null : (Context) d.a(bVar));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void b(String str) throws RemoteException {
        synchronized (this) {
            if (((Boolean) ekb.e().a(aq.aA)).booleanValue()) {
                o.b("#008 Must be called on the main UI thread.: setCustomData");
                this.f26171c.f26220b = str;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void c(b bVar) {
        synchronized (this) {
            o.b("resume must be called on the main UI thread.");
            if (this.f26172d != null) {
                this.f26172d.j.b(bVar == null ? null : (Context) d.a(bVar));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void c(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final boolean c() throws RemoteException {
        o.b("isLoaded must be called on the main UI thread.");
        return j();
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void d() {
        b((b) null);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void d(b bVar) {
        synchronized (this) {
            o.b("destroy must be called on the main UI thread.");
            Context context = null;
            this.f26170b.a((AdMetadataListener) null);
            if (this.f26172d != null) {
                if (bVar != null) {
                    context = (Context) d.a(bVar);
                }
                this.f26172d.j.c(context);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void e() {
        c((b) null);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final void f() throws RemoteException {
        d(null);
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final String g() throws RemoteException {
        synchronized (this) {
            bhu bhuVar = this.f26172d;
            if (bhuVar == null || bhuVar.l == null) {
                return null;
            }
            return this.f26172d.l.f23815a;
        }
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final boolean h() {
        bhu bhuVar = this.f26172d;
        if (bhuVar == null) {
            return false;
        }
        adt adtVar = bhuVar.f24481a.get();
        return adtVar != null && !adtVar.R();
    }

    @Override // com.google.android.gms.internal.ads.ts
    public final emj i() throws RemoteException {
        synchronized (this) {
            if (!((Boolean) ekb.e().a(aq.em)).booleanValue()) {
                return null;
            }
            bhu bhuVar = this.f26172d;
            if (bhuVar == null) {
                return null;
            }
            return bhuVar.l;
        }
    }
}
