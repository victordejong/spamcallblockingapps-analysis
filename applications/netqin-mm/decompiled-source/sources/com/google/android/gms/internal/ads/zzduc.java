package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdty;
import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.p00;
import p131c.p161d.p170b.p224d.p252g.p253a.q00;
import p131c.p161d.p170b.p224d.p252g.p253a.r00;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduc.class */
public final class zzduc extends zzejz<zzduc, zza> implements zzell {
    public static volatile zzelw<zzduc> zzel;
    public static final zzduc zzhnk;
    public int zzdw;
    public int zzhnh;
    public zzdty zzhnj;
    public String zzdx = "";
    public String zzhni = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduc$zza.class */
    public static final class zza extends zzejz.zzb<zzduc, zza> implements zzell {
        public zza() {
            super(zzduc.zzhnk);
        }

        public /* synthetic */ zza(p00 p00Var) {
            this();
        }

        /* renamed from: a */
        public final zza m13167a(zzdty.zzb zzbVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzduc) this.f28072b).m13175a((zzdty) ((zzejz) zzbVar.mo12342K()));
            return this;
        }

        /* renamed from: a */
        public final zza m13166a(zzb zzbVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzduc) this.f28072b).m13174a(zzbVar);
            return this;
        }

        /* renamed from: a */
        public final zza m13165a(String str) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzduc) this.f28072b).m13170a(str);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzduc$zzb.class */
    public enum zzb implements zzeke {
        EVENT_TYPE_UNKNOWN(0),
        BLOCKED_IMPRESSION(1);
        
        public static final zzekd<zzb> zzes = new q00();
        public final int value;

        zzb(int i) {
            this.value = i;
        }

        public static zzb zzeh(int i) {
            if (i == 0) {
                return EVENT_TYPE_UNKNOWN;
            }
            if (i != 1) {
                return null;
            }
            return BLOCKED_IMPRESSION;
        }

        public static zzekg zzw() {
            return r00.f14849a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + zzb.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.zzeke
        public final int zzv() {
            return this.value;
        }
    }

    static {
        zzduc zzducVar = new zzduc();
        zzhnk = zzducVar;
        zzejz.m12401a(zzduc.class, zzducVar);
    }

    /* renamed from: m */
    public static zza m13169m() {
        return zzhnk.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (p00.f14373a[i - 1]) {
            case 1:
                return new zzduc();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zzhnk, "\u0001\u0004��\u0001\u0001\u0004\u0004������\u0001ဌ��\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzdw", "zzhnh", zzb.zzw(), "zzdx", "zzhni", "zzhnj"});
            case 4:
                return zzhnk;
            case 5:
                zzelw<zzduc> zzelwVar = zzel;
                zzelw<zzduc> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzduc.class) {
                        try {
                            zzelw<zzduc> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhnk);
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
    public final void m13175a(zzdty zzdtyVar) {
        zzdtyVar.getClass();
        this.zzhnj = zzdtyVar;
        this.zzdw |= 8;
    }

    /* renamed from: a */
    public final void m13174a(zzb zzbVar) {
        this.zzhnh = zzbVar.zzv();
        this.zzdw |= 1;
    }

    /* renamed from: a */
    public final void m13170a(String str) {
        str.getClass();
        this.zzdw |= 2;
        this.zzdx = str;
    }
}
