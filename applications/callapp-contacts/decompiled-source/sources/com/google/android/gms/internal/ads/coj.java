package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/coj.class */
public final class coj extends up {

    /* renamed from: a  reason: collision with root package name */
    private final coa f26154a;

    /* renamed from: b  reason: collision with root package name */
    private final cnc f26155b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26156c;

    /* renamed from: d  reason: collision with root package name */
    private final cpj f26157d;
    private final Context e;
    private bhu f;
    private boolean g = ((Boolean) ekb.e().a(aq.aq)).booleanValue();

    public coj(String str, coa coaVar, Context context, cnc cncVar, cpj cpjVar) {
        this.f26156c = str;
        this.f26154a = coaVar;
        this.f26155b = cncVar;
        this.f26157d = cpjVar;
        this.e = context;
    }

    private final void a(zzvq zzvqVar, uy uyVar, int i) throws RemoteException {
        synchronized (this) {
            o.b("#008 Must be called on the main UI thread.");
            this.f26155b.f26107a.set(uyVar);
            zzr.zzkv();
            if (zzj.zzbc(this.e) && zzvqVar.zzcip == null) {
                zzd.zzex("Failed to load the ad because app ID is missing.");
                this.f26155b.a(cqh.a(cqj.APP_ID_MISSING, null, null));
            } else if (this.f == null) {
                coc cocVar = new coc(null);
                this.f26154a.a(i);
                this.f26154a.a(zzvqVar, this.f26156c, cocVar, new col(this));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final Bundle a() {
        o.b("#008 Must be called on the main UI thread.");
        bhu bhuVar = this.f;
        return bhuVar != null ? bhuVar.f24482b.a() : new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(b bVar) throws RemoteException {
        synchronized (this) {
            a(bVar, this.g);
        }
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(b bVar, boolean z) throws RemoteException {
        synchronized (this) {
            o.b("#008 Must be called on the main UI thread.");
            if (this.f == null) {
                zzd.zzez("Rewarded can not be shown before loaded");
                this.f26155b.a_(cqh.a(cqj.NOT_READY, null, null));
                return;
            }
            this.f.a(z, (Activity) d.a(bVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(emc emcVar) {
        if (emcVar == null) {
            this.f26155b.a((AdMetadataListener) null);
        } else {
            this.f26155b.a(new com(this, emcVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(emd emdVar) {
        o.b("setOnPaidEventListener must be called on the main UI thread.");
        this.f26155b.e.set(emdVar);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(ur urVar) {
        o.b("#008 Must be called on the main UI thread.");
        this.f26155b.f26108b.set(urVar);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(uz uzVar) {
        o.b("#008 Must be called on the main UI thread.");
        this.f26155b.f26109c.set(uzVar);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(zzaww zzawwVar) {
        synchronized (this) {
            o.b("#008 Must be called on the main UI thread.");
            cpj cpjVar = this.f26157d;
            cpjVar.f26219a = zzawwVar.zzear;
            if (((Boolean) ekb.e().a(aq.aA)).booleanValue()) {
                cpjVar.f26220b = zzawwVar.zzeas;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(zzvq zzvqVar, uy uyVar) throws RemoteException {
        synchronized (this) {
            a(zzvqVar, uyVar, cpg.f26211b);
        }
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(boolean z) {
        synchronized (this) {
            o.b("setImmersiveMode must be called on the main UI thread.");
            this.g = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void b(zzvq zzvqVar, uy uyVar) throws RemoteException {
        synchronized (this) {
            a(zzvqVar, uyVar, cpg.f26212c);
        }
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final boolean b() {
        o.b("#008 Must be called on the main UI thread.");
        bhu bhuVar = this.f;
        return bhuVar != null && !bhuVar.e;
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final String c() throws RemoteException {
        synchronized (this) {
            bhu bhuVar = this.f;
            if (bhuVar == null || bhuVar.l == null) {
                return null;
            }
            return this.f.l.f23815a;
        }
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final ul d() {
        o.b("#008 Must be called on the main UI thread.");
        bhu bhuVar = this.f;
        if (bhuVar != null) {
            return bhuVar.f24484d;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final emj e() {
        bhu bhuVar;
        if (((Boolean) ekb.e().a(aq.em)).booleanValue() && (bhuVar = this.f) != null) {
            return bhuVar.l;
        }
        return null;
    }
}
