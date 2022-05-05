package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvm;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzc.class */
public final class zzc {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzc$zza.class */
    public static final class zza extends zzvm<zza, C2905zza> implements zzwv {
        private static final zza zznv = new zza();
        private static volatile zzxd<zza> zznw;
        private int zznr;
        private int zzns = 1;
        private int zznt;
        private int zznu;

        /* renamed from: com.google.android.gms.internal.measurement.zzc$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzc$zza$zza.class */
        public static final class C2905zza extends zzvm.zza<zza, C2905zza> implements zzwv {
            private C2905zza() {
                super(zza.zznv);
            }

            /* synthetic */ C2905zza(zzd zzdVar) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzc$zza$zzb.class */
        public enum zzb implements zzvp {
            NO_CACHE(1),
            PRIVATE(2),
            PUBLIC(3);
            
            private static final zzvq<zzb> zzoa = new zze();
            private final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzb zza(int i) {
                switch (i) {
                    case 1:
                        return NO_CACHE;
                    case 2:
                        return PRIVATE;
                    case 3:
                        return PUBLIC;
                    default:
                        return null;
                }
            }

            public static zzvr zzd() {
                return zzf.zzoc;
            }

            @Override // com.google.android.gms.internal.measurement.zzvp
            public final int zzc() {
                return this.value;
            }
        }

        static {
            zzvm.zza(zza.class, zznv);
        }

        private zza() {
        }

        public static zzxd<zza> zza() {
            return (zzxd) zznv.zza(zzvm.zze.zzbyz, (Object) null, (Object) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.measurement.zzvm
        public final Object zza(int i, Object obj, Object obj2) {
            switch (zzd.zznq[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C2905zza(null);
                case 3:
                    return zza(zznv, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\f��\u0002\u0004\u0001\u0003\u0004\u0002", new Object[]{"zznr", "zzns", zzb.zzd(), "zznt", "zznu"});
                case 4:
                    return zznv;
                case 5:
                    zzxd<zza> zzxdVar = zznw;
                    zzxd<zza> zzxdVar2 = zzxdVar;
                    if (zzxdVar == null) {
                        synchronized (zza.class) {
                            try {
                                zzxd<zza> zzxdVar3 = zznw;
                                zzxdVar2 = zzxdVar3;
                                if (zzxdVar3 == null) {
                                    zzxdVar2 = new zzvm.zzb<>(zznv);
                                    zznw = zzxdVar2;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                    return zzxdVar2;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }
    }
}
