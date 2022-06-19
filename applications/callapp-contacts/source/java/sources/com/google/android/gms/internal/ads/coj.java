package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/coj.class */
public final class coj extends AbstractBinderC12966up {

    /* renamed from: a */
    private final coa f46184a;

    /* renamed from: b */
    private final cnc f46185b;

    /* renamed from: c */
    private final String f46186c;

    /* renamed from: d */
    private final cpj f46187d;

    /* renamed from: e */
    private final Context f46188e;

    /* renamed from: f */
    private bhu f46189f;

    /* renamed from: g */
    private boolean f46190g = ((Boolean) ekb.m14831e().m18571a(C12187aq.f42680aq)).booleanValue();

    public coj(String str, coa coaVar, Context context, cnc cncVar, cpj cpjVar) {
        this.f46186c = str;
        this.f46184a = coaVar;
        this.f46185b = cncVar;
        this.f46187d = cpjVar;
        this.f46188e = context;
    }

    /* renamed from: a */
    private final void m17382a(zzvq zzvqVar, AbstractC12975uy abstractC12975uy, int i) throws RemoteException {
        synchronized (this) {
            C12045o.m19155b("#008 Must be called on the main UI thread.");
            this.f46185b.f46128a.set(abstractC12975uy);
            zzr.zzkv();
            if (zzj.zzbc(this.f46188e) && zzvqVar.zzcip == null) {
                zzd.zzex("Failed to load the ad because app ID is missing.");
                this.f46185b.mo17319a(cqh.m17323a(cqj.APP_ID_MISSING, null, null));
            } else if (this.f46189f != null) {
            } else {
                coc cocVar = new coc(null);
                this.f46184a.m17389a(i);
                this.f46184a.mo17387a(zzvqVar, this.f46186c, cocVar, new col(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final Bundle mo14103a() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        bhu bhuVar = this.f46189f;
        return bhuVar != null ? bhuVar.f43991b.m18420a() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14102a(AbstractC12126b abstractC12126b) throws RemoteException {
        synchronized (this) {
            mo14101a(abstractC12126b, this.f46190g);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14101a(AbstractC12126b abstractC12126b, boolean z) throws RemoteException {
        synchronized (this) {
            C12045o.m19155b("#008 Must be called on the main UI thread.");
            if (this.f46189f == null) {
                zzd.zzez("Rewarded can not be shown before loaded");
                this.f46185b.mo17402a_(cqh.m17323a(cqj.NOT_READY, null, null));
                return;
            }
            this.f46189f.m17848a(z, (Activity) BinderC12129d.m18980a(abstractC12126b));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14100a(emc emcVar) {
        if (emcVar == null) {
            this.f46185b.m17407a((AdMetadataListener) null);
        } else {
            this.f46185b.m17407a(new C12280com(this, emcVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14099a(emd emdVar) {
        C12045o.m19155b("setOnPaidEventListener must be called on the main UI thread.");
        this.f46185b.f46132e.set(emdVar);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14098a(AbstractC12968ur abstractC12968ur) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        this.f46185b.f46129b.set(abstractC12968ur);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14097a(AbstractC12976uz abstractC12976uz) {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        this.f46185b.f46130c.set(abstractC12976uz);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14096a(zzaww zzawwVar) {
        synchronized (this) {
            C12045o.m19155b("#008 Must be called on the main UI thread.");
            cpj cpjVar = this.f46187d;
            cpjVar.f46316a = zzawwVar.zzear;
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42638aA)).booleanValue()) {
                cpjVar.f46317b = zzawwVar.zzeas;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14095a(zzvq zzvqVar, AbstractC12975uy abstractC12975uy) throws RemoteException {
        synchronized (this) {
            m17382a(zzvqVar, abstractC12975uy, cpg.f46308b);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14094a(boolean z) {
        synchronized (this) {
            C12045o.m19155b("setImmersiveMode must be called on the main UI thread.");
            this.f46190g = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: b */
    public final void mo14092b(zzvq zzvqVar, AbstractC12975uy abstractC12975uy) throws RemoteException {
        synchronized (this) {
            m17382a(zzvqVar, abstractC12975uy, cpg.f46309c);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: b */
    public final boolean mo14093b() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        bhu bhuVar = this.f46189f;
        return bhuVar != null && !bhuVar.f43994e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: c */
    public final String mo14091c() throws RemoteException {
        synchronized (this) {
            bhu bhuVar = this.f46189f;
            if (bhuVar == null || bhuVar.f42490l == null) {
                return null;
            }
            return this.f46189f.f42490l.f43089a;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: d */
    public final AbstractC12962ul mo14090d() {
        C12045o.m19155b("#008 Must be called on the main UI thread.");
        bhu bhuVar = this.f46189f;
        if (bhuVar != null) {
            return bhuVar.f43993d;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: e */
    public final emj mo14089e() {
        bhu bhuVar;
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42888em)).booleanValue() && (bhuVar = this.f46189f) != null) {
            return bhuVar.f42490l;
        }
        return null;
    }
}
