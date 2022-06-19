package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeo.class */
public final class zzeo<T> {
    private final zzdz zza;
    private final zzei zzb;
    private final zzem<T> zzc;
    private final CopyOnWriteArraySet<zzen<T>> zzd;
    private final ArrayDeque<Runnable> zze;
    private final ArrayDeque<Runnable> zzf;
    private boolean zzg;

    public zzeo(Looper looper, zzdz zzdzVar, zzem<T> zzemVar) {
        this(new CopyOnWriteArraySet(), looper, zzdzVar, zzemVar);
    }

    private zzeo(CopyOnWriteArraySet<zzen<T>> copyOnWriteArraySet, Looper looper, zzdz zzdzVar, zzem<T> zzemVar) {
        this.zza = zzdzVar;
        this.zzd = copyOnWriteArraySet;
        this.zzc = zzemVar;
        this.zze = new ArrayDeque<>();
        this.zzf = new ArrayDeque<>();
        this.zzb = zzdzVar.zza(looper, new Handler.Callback() { // from class: com.google.android.gms.internal.ads.zzej
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                zzeo.zzg(zzeo.this, message);
                return true;
            }
        });
    }

    public static /* synthetic */ boolean zzg(zzeo zzeoVar, Message message) {
        Iterator<zzen<T>> it2 = zzeoVar.zzd.iterator();
        while (it2.hasNext()) {
            it2.next().zzb(zzeoVar.zzc);
            if (zzeoVar.zzb.zzf(0)) {
                return true;
            }
        }
        return true;
    }

    public final zzeo<T> zza(Looper looper, zzem<T> zzemVar) {
        return new zzeo<>(this.zzd, looper, this.zza, zzemVar);
    }

    public final void zzb(T t) {
        if (!this.zzg) {
            Objects.requireNonNull(t);
            this.zzd.add(new zzen<>(t));
        }
    }

    public final void zzc() {
        if (this.zzf.isEmpty()) {
            return;
        }
        if (!this.zzb.zzf(0)) {
            zzei zzeiVar = this.zzb;
            zzeiVar.zzj(zzeiVar.zza(0));
        }
        boolean isEmpty = this.zze.isEmpty();
        this.zze.addAll(this.zzf);
        this.zzf.clear();
        if (!isEmpty) {
            return;
        }
        while (!this.zze.isEmpty()) {
            this.zze.peekFirst().run();
            this.zze.removeFirst();
        }
    }

    public final void zzd(final int i, final zzel<T> zzelVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.zzd);
        this.zzf.add(new Runnable() { // from class: com.google.android.gms.internal.ads.zzek
            @Override // java.lang.Runnable
            public final void run() {
                CopyOnWriteArraySet copyOnWriteArraySet2 = copyOnWriteArraySet;
                int i2 = i;
                zzel zzelVar2 = zzelVar;
                Iterator it2 = copyOnWriteArraySet2.iterator();
                while (it2.hasNext()) {
                    ((zzen) it2.next()).zza(i2, zzelVar2);
                }
            }
        });
    }

    public final void zze() {
        Iterator<zzen<T>> it2 = this.zzd.iterator();
        while (it2.hasNext()) {
            it2.next().zzc(this.zzc);
        }
        this.zzd.clear();
        this.zzg = true;
    }

    public final void zzf(T t) {
        Iterator<zzen<T>> it2 = this.zzd.iterator();
        while (it2.hasNext()) {
            zzen<T> next = it2.next();
            if (next.zza.equals(t)) {
                next.zzc(this.zzc);
                this.zzd.remove(next);
            }
        }
    }
}
