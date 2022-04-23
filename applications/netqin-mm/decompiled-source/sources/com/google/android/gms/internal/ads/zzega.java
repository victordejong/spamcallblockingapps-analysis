package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.y50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzega.class */
public final class zzega extends zzejz<zzega, zza> implements zzell {
    public static volatile zzelw<zzega> zzel;
    public static final zzega zzibi;
    public int zzhwq;
    public zzeip zzhwr = zzeip.zzier;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzega$zza.class */
    public static final class zza extends zzejz.zzb<zzega, zza> implements zzell {
        public zza() {
            super(zzega.zzibi);
        }

        public /* synthetic */ zza(y50 y50Var) {
            this();
        }

        /* renamed from: a */
        public final zza m12587a(int i) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzega) this.f28072b).m12592b(0);
            return this;
        }

        /* renamed from: a */
        public final zza m12586a(zzeip zzeipVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzega) this.f28072b).m12594a(zzeipVar);
            return this;
        }
    }

    static {
        zzega zzegaVar = new zzega();
        zzibi = zzegaVar;
        zzejz.m12401a(zzega.class, zzegaVar);
    }

    /* renamed from: a */
    public static zzega m12593a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzega) zzejz.m12411a(zzibi, zzeipVar, zzejmVar);
    }

    /* renamed from: o */
    public static zza m12589o() {
        return zzibi.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (y50.f16093a[i - 1]) {
            case 1:
                return new zzega();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzibi, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzhwq", "zzhwr"});
            case 4:
                return zzibi;
            case 5:
                zzelw<zzega> zzelwVar = zzel;
                zzelw<zzega> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzega.class) {
                        try {
                            zzelw<zzega> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzibi);
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

    /* renamed from: a */
    public final void m12594a(zzeip zzeipVar) {
        zzeipVar.getClass();
        this.zzhwr = zzeipVar;
    }

    /* renamed from: b */
    public final void m12592b(int i) {
        this.zzhwq = i;
    }

    /* renamed from: m */
    public final int m12591m() {
        return this.zzhwq;
    }

    /* renamed from: n */
    public final zzeip m12590n() {
        return this.zzhwr;
    }
}
