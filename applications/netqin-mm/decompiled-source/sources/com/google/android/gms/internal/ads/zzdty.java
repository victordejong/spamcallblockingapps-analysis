package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.l00;
import p131c.p161d.p170b.p224d.p252g.p253a.m00;
import p131c.p161d.p170b.p224d.p252g.p253a.n00;
import p131c.p161d.p170b.p224d.p252g.p253a.o00;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdty.class */
public final class zzdty extends zzejz<zzdty, zzb> implements zzell {
    public static volatile zzelw<zzdty> zzel;
    public static final zzeki<Integer, zza> zzhmz = new l00();
    public static final zzdty zzhnd;
    public int zzdw;
    public zzekf zzhmy = zzejz.m12396f();
    public String zzhna = "";
    public String zzhnb = "";
    public String zzhnc = "";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdty$zza.class */
    public enum zza implements zzeke {
        BLOCKED_REASON_UNKNOWN(1),
        BLOCKED_REASON_BACKGROUND(2);
        
        public static final zzekd<zza> zzes = new o00();
        public final int value;

        zza(int i) {
            this.value = i;
        }

        public static zza zzeg(int i) {
            if (i == 1) {
                return BLOCKED_REASON_UNKNOWN;
            }
            if (i != 2) {
                return null;
            }
            return BLOCKED_REASON_BACKGROUND;
        }

        public static zzekg zzw() {
            return n00.f14208a;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + zza.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
        }

        @Override // com.google.android.gms.internal.ads.zzeke
        public final int zzv() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdty$zzb.class */
    public static final class zzb extends zzejz.zzb<zzdty, zzb> implements zzell {
        public zzb() {
            super(zzdty.zzhnd);
        }

        public /* synthetic */ zzb(l00 l00Var) {
            this();
        }

        /* renamed from: a */
        public final zzb m13184a(zza zzaVar) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzdty) this.f28072b).m13190a(zzaVar);
            return this;
        }

        /* renamed from: a */
        public final zzb m13183a(String str) {
            if (this.f28073c) {
                m12381m();
                this.f28073c = false;
            }
            ((zzdty) this.f28072b).m13187a(str);
            return this;
        }
    }

    static {
        zzdty zzdtyVar = new zzdty();
        zzhnd = zzdtyVar;
        zzejz.m12401a(zzdty.class, zzdtyVar);
    }

    /* renamed from: m */
    public static zzb m13186m() {
        return zzhnd.m12399b();
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (m00.f14008a[i - 1]) {
            case 1:
                return new zzdty();
            case 2:
                return new zzb(null);
            case 3:
                return zzejz.m12403a(zzhnd, "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u001e\u0002ဈ��\u0003ဈ\u0001\u0004ဈ\u0002", new Object[]{"zzdw", "zzhmy", zza.zzw(), "zzhna", "zzhnb", "zzhnc"});
            case 4:
                return zzhnd;
            case 5:
                zzelw<zzdty> zzelwVar = zzel;
                zzelw<zzdty> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzdty.class) {
                        try {
                            zzelw<zzdty> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zzhnd);
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
    public final void m13190a(zza zzaVar) {
        zzaVar.getClass();
        zzekf zzekfVar = this.zzhmy;
        if (!zzekfVar.mo12360w()) {
            this.zzhmy = zzejz.m12405a(zzekfVar);
        }
        this.zzhmy.mo12364k(zzaVar.zzv());
    }

    /* renamed from: a */
    public final void m13187a(String str) {
        str.getClass();
        this.zzdw |= 1;
        this.zzhna = str;
    }
}
