package com.google.android.gms.analytics;

import com.google.android.gms.common.a.d;
import com.google.android.gms.common.internal.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zze.class */
public final class zze {

    /* renamed from: a  reason: collision with root package name */
    final zzh f3895a;

    /* renamed from: b  reason: collision with root package name */
    final d f3896b;
    boolean c;
    long d;
    long e;
    long f;
    boolean g;
    private long h;
    private long i;
    private final Map<Class<? extends zzg>, zzg> j;
    private final List<zzk> k;

    private zze(zze zzeVar) {
        this.f3895a = zzeVar.f3895a;
        this.f3896b = zzeVar.f3896b;
        this.d = zzeVar.d;
        this.e = zzeVar.e;
        this.f = zzeVar.f;
        this.h = zzeVar.h;
        this.i = zzeVar.i;
        this.k = new ArrayList(zzeVar.k);
        this.j = new HashMap(zzeVar.j.size());
        for (Map.Entry<Class<? extends zzg>, zzg> entry : zzeVar.j.entrySet()) {
            zzg a2 = a(entry.getKey());
            entry.getValue().zzb(a2);
            this.j.put(entry.getKey(), a2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(zzh zzhVar, d dVar) {
        b.a(zzhVar);
        b.a(dVar);
        this.f3895a = zzhVar;
        this.f3896b = dVar;
        this.h = 1800000L;
        this.i = 3024000000L;
        this.j = new HashMap();
        this.k = new ArrayList();
    }

    private static <T extends zzg> T a(Class<T> cls) {
        try {
            return cls.newInstance();
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException("dataType default constructor is not accessible", e);
        } catch (InstantiationException e2) {
            throw new IllegalArgumentException("dataType doesn't have default constructor", e2);
        }
    }

    public final <T extends zzg> T zza(Class<T> cls) {
        return (T) this.j.get(cls);
    }

    public final void zza(zzg zzgVar) {
        b.a(zzgVar);
        Class<?> cls = zzgVar.getClass();
        if (cls.getSuperclass() != zzg.class) {
            throw new IllegalArgumentException();
        }
        zzgVar.zzb(zzb(cls));
    }

    public final <T extends zzg> T zzb(Class<T> cls) {
        zzg zzgVar = this.j.get(cls);
        T t = (T) zzgVar;
        if (zzgVar == null) {
            t = (T) a(cls);
            this.j.put(cls, t);
        }
        return t;
    }

    public final List<zzk> zzkA() {
        return this.k;
    }

    public final long zzkB() {
        return this.d;
    }

    public final void zzkC() {
        final zzi zzkG = this.f3895a.zzkG();
        if (this.g) {
            throw new IllegalStateException("Measurement prototype can't be submitted");
        } else if (zzkD()) {
            throw new IllegalStateException("Measurement can only be submitted once");
        } else {
            final zze zzky = zzky();
            zzky.f = zzky.f3896b.b();
            if (zzky.e != 0) {
                zzky.d = zzky.e;
            } else {
                zzky.d = zzky.f3896b.a();
            }
            zzky.c = true;
            zzkG.f3900a.execute(new Runnable() { // from class: com.google.android.gms.analytics.zzi.1
                @Override // java.lang.Runnable
                public final void run() {
                    zzky.f3895a.zza(zzky);
                    for (zzj zzjVar : zzi.this.d) {
                        zzjVar.zza(zzky);
                    }
                    zzi.a(zzky);
                }
            });
        }
    }

    public final boolean zzkD() {
        return this.c;
    }

    public final zze zzky() {
        return new zze(this);
    }

    public final Collection<zzg> zzkz() {
        return this.j.values();
    }

    public final void zzn(long j) {
        this.e = j;
    }
}
