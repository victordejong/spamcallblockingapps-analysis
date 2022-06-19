package com.google.firebase.perf.internal;

import com.google.android.gms.internal.firebase-perf.zzbj;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/internal/SessionManager.class */
public class SessionManager extends zzb {
    private static final SessionManager zzew = new SessionManager();
    private final GaugeManager zzbl;
    private final zza zzcq;
    private final Set<WeakReference<zzx>> zzex;
    private zzt zzey;

    private SessionManager() {
        this(GaugeManager.zzap(), zzt.zzau(), zza.zzq());
    }

    private SessionManager(GaugeManager gaugeManager, zzt zztVar, zza zzaVar) {
        this.zzex = new HashSet();
        this.zzbl = gaugeManager;
        this.zzey = zztVar;
        this.zzcq = zzaVar;
        zzaa();
    }

    public static SessionManager zzbl() {
        return zzew;
    }

    private final void zzd(zzbj zzbjVar) {
        if (this.zzey.zzax()) {
            this.zzbl.zza(this.zzey, zzbjVar);
        } else {
            this.zzbl.zzaq();
        }
    }

    @Override // com.google.firebase.perf.internal.zzb, com.google.firebase.perf.internal.zza.AbstractC3163zza
    public final void zzb(zzbj zzbjVar) {
        super.zzb(zzbjVar);
        if (this.zzcq.zzr()) {
            return;
        }
        if (zzbjVar == com.google.android.gms.internal.firebase_perf.zzbj.zzij) {
            zzc(zzbjVar);
        } else if (zzbn()) {
        } else {
            zzd(zzbjVar);
        }
    }

    public final zzt zzbm() {
        return this.zzey;
    }

    public final boolean zzbn() {
        if (this.zzey.isExpired()) {
            zzc(this.zzcq.zzs());
            return true;
        }
        return false;
    }

    public final void zzc(zzbj zzbjVar) {
        this.zzey = zzt.zzau();
        synchronized (this.zzex) {
            Iterator<WeakReference<zzx>> it = this.zzex.iterator();
            while (it.hasNext()) {
                zzx zzxVar = it.next().get();
                if (zzxVar != null) {
                    zzxVar.zza(this.zzey);
                } else {
                    it.remove();
                }
            }
        }
        if (this.zzey.zzax()) {
            this.zzbl.zzb(this.zzey.zzav(), zzbjVar);
        }
        zzd(zzbjVar);
    }

    public final void zzc(WeakReference<zzx> weakReference) {
        synchronized (this.zzex) {
            this.zzex.add(weakReference);
        }
    }

    public final void zzd(WeakReference<zzx> weakReference) {
        synchronized (this.zzex) {
            this.zzex.remove(weakReference);
        }
    }
}
