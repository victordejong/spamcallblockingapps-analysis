package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzejz;
import p131c.p161d.p170b.p224d.p252g.p253a.v50;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefu.class */
public final class zzefu extends zzejz<zzefu, zza> implements zzell {
    public static volatile zzelw<zzefu> zzel;
    public static final zzefu zziax;
    public String zziav = "";
    public zzefe zziaw;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzefu$zza.class */
    public static final class zza extends zzejz.zzb<zzefu, zza> implements zzell {
        public zza() {
            super(zzefu.zziax);
        }

        public /* synthetic */ zza(v50 v50Var) {
            this();
        }
    }

    static {
        zzefu zzefuVar = new zzefu();
        zziax = zzefuVar;
        zzejz.m12401a(zzefu.class, zzefuVar);
    }

    /* renamed from: a */
    public static zzefu m12612a(zzeip zzeipVar, zzejm zzejmVar) throws zzekj {
        return (zzefu) zzejz.m12411a(zziax, zzeipVar, zzejmVar);
    }

    /* renamed from: o */
    public static zzefu m12609o() {
        return zziax;
    }

    @Override // com.google.android.gms.internal.ads.zzejz
    /* renamed from: a */
    public final Object mo11212a(int i, Object obj, Object obj2) {
        switch (v50.f15699a[i - 1]) {
            case 1:
                return new zzefu();
            case 2:
                return new zza(null);
            case 3:
                return zzejz.m12403a(zziax, "��\u0002����\u0001\u0002\u0002������\u0001Ȉ\u0002\t", new Object[]{"zziav", "zziaw"});
            case 4:
                return zziax;
            case 5:
                zzelw<zzefu> zzelwVar = zzel;
                zzelw<zzefu> zzelwVar2 = zzelwVar;
                if (zzelwVar == null) {
                    synchronized (zzefu.class) {
                        try {
                            zzelw<zzefu> zzelwVar3 = zzel;
                            zzelwVar2 = zzelwVar3;
                            if (zzelwVar3 == null) {
                                zzelwVar2 = new zzejz.zza<>(zziax);
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
    public final String m12611m() {
        return this.zziav;
    }

    /* renamed from: n */
    public final zzefe m12610n() {
        zzefe zzefeVar = this.zziaw;
        zzefe zzefeVar2 = zzefeVar;
        if (zzefeVar == null) {
            zzefeVar2 = zzefe.m12679o();
        }
        return zzefeVar2;
    }
}
