package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzelb;
import java.util.List;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegy.class */
public final class zzegy extends zzelb<zzegy, zza> implements zzemq {
    private static volatile zzemx<zzegy> zzek;
    private static final zzegy zziis;
    private String zziiq = "";
    private zzell<zzegk> zziir = zzbin();

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzegy$zza.class */
    public static final class zza extends zzelb.zzb<zzegy, zza> implements zzemq {
        private zza() {
            super(zzegy.zziis);
        }

        /* synthetic */ zza(zzeha zzehaVar) {
            this();
        }
    }

    static {
        zzegy zzegyVar = new zzegy();
        zziis = zzegyVar;
        zzelb.zza(zzegy.class, zzegyVar);
    }

    private zzegy() {
    }

    public static zzegy zzbfk() {
        return zziis;
    }

    @Override // com.google.android.gms.internal.ads.zzelb
    public final Object zza(int i, Object obj, Object obj2) {
        switch (zzeha.zzel[i - 1]) {
            case 1:
                return new zzegy();
            case 2:
                return new zza(null);
            case 3:
                return zza(zziis, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001Ȉ\u0002\u001b", new Object[]{"zziiq", "zziir", zzegk.class});
            case 4:
                return zziis;
            case 5:
                zzemx<zzegy> zzemxVar = zzek;
                zzemx<zzegy> zzemxVar2 = zzemxVar;
                if (zzemxVar == null) {
                    synchronized (zzegy.class) {
                        try {
                            zzemx<zzegy> zzemxVar3 = zzek;
                            zzemxVar2 = zzemxVar3;
                            if (zzemxVar3 == null) {
                                zzemxVar2 = new zzelb.zza<>(zziis);
                                zzek = zzemxVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return zzemxVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final List<zzegk> zzbfj() {
        return this.zziir;
    }
}
