package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.pb0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgq.class */
public final class zzgq extends zzejz<zzgq, zza> implements zzell {
    public static final zzgq zzacb;
    public static volatile zzelw<zzgq> zzel;
    public zzgr zzaby;
    public zzeip zzabz;
    public zzeip zzaca;
    public int zzdw;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgq$zza.class */
    public static final class zza extends zzejz.zzb<zzgq, zza> implements zzell {
        public zza() {
            super(zzgq.zzacb);
        }

        public /* synthetic */ zza(pb0 pb0Var) {
            this();
        }
    }

    static {
        zzgq zzgqVar = new zzgq();
        zzacb = zzgqVar;
        zzejz.m12401a(zzgq.class, zzgqVar);
    }

    public zzgq() {
        zzeip zzeipVar = zzeip.zzier;
        this.zzabz = zzeipVar;
        this.zzaca = zzeipVar;
    }

    /* renamed from: a */
    public static zzgq m12116a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzgq) zzejz.m12411a(zzacb, zzeipVar, zzejmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (pb0.f14525a[i - 1]) {
            case 1:
                return new zzgq();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzacb, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001ဉ��\u0002ည\u0001\u0003ည\u0002", new Object[]{"zzdw", "zzaby", "zzabz", "zzaca"});
            case 4:
                return zzacb;
            case 5:
                zzelw<zzgq> zzelwVar = zzel;
                zzelw<zzgq> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzgq.class) {
                        try {
                            zzelw<zzgq> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzacb);
                                zzel = zzelwVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return zzelwVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: m */
    public final zzgr m12115m() {
        zzgr zzgrVar = this.zzaby;
        zzgr zzgrVar2 = zzgrVar;
        if (zzgrVar == null) {
            zzgrVar2 = zzgr.m12093s();
        }
        return zzgrVar2;
    }

    /* renamed from: n */
    public final zzeip m12114n() {
        return this.zzabz;
    }

    /* renamed from: o */
    public final zzeip m12113o() {
        return this.zzaca;
    }
}
