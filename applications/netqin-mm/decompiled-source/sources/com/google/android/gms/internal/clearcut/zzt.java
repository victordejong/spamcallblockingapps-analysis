package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import p131c.p161d.p170b.p224d.p252g.p255c.C4398p3;
import p131c.p161d.p170b.p224d.p252g.p255c.C4403q3;
import p131c.p161d.p170b.p224d.p252g.p255c.C4408r3;
import p131c.p161d.p170b.p224d.p252g.p255c.C4413s3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzt.class */
public final class zzt {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzt$zza.class */
    public static final class zza extends zzcg<zza, C10514zza> implements zzdq {
        public static final zza zzbf;
        public static volatile zzdz<zza> zzbg;
        public int zzbb;
        public int zzbc;
        public int zzbd;
        public int zzbe;

        /* renamed from: com.google.android.gms.internal.clearcut.zzt$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzt$zza$zza.class */
        public static final class C10514zza extends zzcg.zza<zza, C10514zza> implements zzdq {
            public C10514zza() {
                super(zza.zzbf);
            }

            public /* synthetic */ C10514zza(C4398p3 p3Var) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzt$zza$zzb.class */
        public enum zzb implements zzcj {
            ARCH_UNKNOWN(0),
            ARCH_NON_NATIVE(1),
            ARCH_ARMV5(2),
            ARCH_ARMV7(4),
            ARCH_ARM64(5),
            ARCH_MIPS(6),
            ARCH_MIPS_64(7),
            ARCH_X86(8),
            ARCH_X86_64(9);
            
            public static final zzck<zzb> zzbq = new C4403q3();
            public final int value;

            zzb(int i) {
                this.value = i;
            }

            public static zzb zza(int i) {
                switch (i) {
                    case 0:
                        return ARCH_UNKNOWN;
                    case 1:
                        return ARCH_NON_NATIVE;
                    case 2:
                        return ARCH_ARMV5;
                    case 3:
                    default:
                        return null;
                    case 4:
                        return ARCH_ARMV7;
                    case 5:
                        return ARCH_ARM64;
                    case 6:
                        return ARCH_MIPS;
                    case 7:
                        return ARCH_MIPS_64;
                    case 8:
                        return ARCH_X86;
                    case 9:
                        return ARCH_X86_64;
                }
            }

            public static zzck<zzb> zzd() {
                return zzbq;
            }

            @Override // com.google.android.gms.internal.clearcut.zzcj
            public final int zzc() {
                return this.value;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzt$zza$zzc.class */
        public enum zzc implements zzcj {
            BUILD_TYPE_UNKNOWN(0),
            BUILD_TYPE_PROD(1),
            BUILD_TYPE_INTERNAL(2),
            BUILD_TYPE_PRODLMP(3),
            BUILD_TYPE_THINGS(4),
            BUILD_TYPE_PRODMNC(5),
            BUILD_TYPE_WEARABLE(6),
            BUILD_TYPE_AUTO(7),
            BUILD_TYPE_SIDEWINDERMNC(8),
            BUILD_TYPE_ATV(9),
            BUILD_TYPE_PRODPIX(10),
            BUILD_TYPE_PRODPI(11);
            
            public static final zzck<zzc> zzbq = new C4408r3();
            public final int value;

            zzc(int i) {
                this.value = i;
            }

            public static zzc zzc(int i) {
                switch (i) {
                    case 0:
                        return BUILD_TYPE_UNKNOWN;
                    case 1:
                        return BUILD_TYPE_PROD;
                    case 2:
                        return BUILD_TYPE_INTERNAL;
                    case 3:
                        return BUILD_TYPE_PRODLMP;
                    case 4:
                        return BUILD_TYPE_THINGS;
                    case 5:
                        return BUILD_TYPE_PRODMNC;
                    case 6:
                        return BUILD_TYPE_WEARABLE;
                    case 7:
                        return BUILD_TYPE_AUTO;
                    case 8:
                        return BUILD_TYPE_SIDEWINDERMNC;
                    case 9:
                        return BUILD_TYPE_ATV;
                    case 10:
                        return BUILD_TYPE_PRODPIX;
                    case 11:
                        return BUILD_TYPE_PRODPI;
                    default:
                        return null;
                }
            }

            public static zzck<zzc> zzd() {
                return zzbq;
            }

            @Override // com.google.android.gms.internal.clearcut.zzcj
            public final int zzc() {
                return this.value;
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzt$zza$zzd.class */
        public enum zzd implements zzcj {
            DENSITY_UNKNOWN(0),
            DENSITY_ALLDPI(1),
            DENSITY_LDPI(2),
            DENSITY_MDPI(3),
            DENSITY_TVDPI(4),
            DENSITY_HDPI(5),
            DENSITY_XHDPI(7),
            DENSITY_DPI400(8),
            DENSITY_XXHDPI(9),
            DENSITY_XXXHDPI(10);
            
            public static final zzck<zzd> zzbq = new C4413s3();
            public final int value;

            zzd(int i) {
                this.value = i;
            }

            public static zzck<zzd> zzd() {
                return zzbq;
            }

            public static zzd zzd(int i) {
                switch (i) {
                    case 0:
                        return DENSITY_UNKNOWN;
                    case 1:
                        return DENSITY_ALLDPI;
                    case 2:
                        return DENSITY_LDPI;
                    case 3:
                        return DENSITY_MDPI;
                    case 4:
                        return DENSITY_TVDPI;
                    case 5:
                        return DENSITY_HDPI;
                    case 6:
                    default:
                        return null;
                    case 7:
                        return DENSITY_XHDPI;
                    case 8:
                        return DENSITY_DPI400;
                    case 9:
                        return DENSITY_XXHDPI;
                    case 10:
                        return DENSITY_XXXHDPI;
                }
            }

            @Override // com.google.android.gms.internal.clearcut.zzcj
            public final int zzc() {
                return this.value;
            }
        }

        static {
            zza zzaVar = new zza();
            zzbf = zzaVar;
            zzcg.m10724a(zza.class, zzaVar);
        }

        /* JADX WARN: Type inference failed for: r9v7, types: [com.google.android.gms.internal.clearcut.zzcg$zzb, com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzt$zza>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.clearcut.zzcg
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo10535a(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = p131c.p161d.p170b.p224d.p252g.p255c.C4398p3.f16610a
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x00bd;
                    case 2: goto L_0x00b4;
                    case 3: goto L_0x0077;
                    case 4: goto L_0x0073;
                    case 5: goto L_0x003f;
                    case 6: goto L_0x003a;
                    case 7: goto L_0x0038;
                    default: goto L_0x0030;
                }
            L_0x0030:
                java.lang.UnsupportedOperationException r0 = new java.lang.UnsupportedOperationException
                r1 = r0
                r1.<init>()
                throw r0
            L_0x0038:
                r0 = 0
                return r0
            L_0x003a:
                r0 = 1
                java.lang.Byte r0 = java.lang.Byte.valueOf(r0)
                return r0
            L_0x003f:
                com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzt$zza> r0 = com.google.android.gms.internal.clearcut.zzt.zza.zzbg
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.clearcut.zzt$zza> r0 = com.google.android.gms.internal.clearcut.zzt.zza.class
                monitor-enter(r0)
                com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzt$zza> r0 = com.google.android.gms.internal.clearcut.zzt.zza.zzbg     // Catch: all -> 0x006b
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.clearcut.zzcg$zzb r0 = new com.google.android.gms.internal.clearcut.zzcg$zzb     // Catch: all -> 0x006b
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.clearcut.zzt$zza r1 = com.google.android.gms.internal.clearcut.zzt.zza.zzbf     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r9
                com.google.android.gms.internal.clearcut.zzt.zza.zzbg = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.clearcut.zzt$zza> r0 = com.google.android.gms.internal.clearcut.zzt.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.clearcut.zzt$zza> r0 = com.google.android.gms.internal.clearcut.zzt.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r9
                throw r0
            L_0x0071:
                r0 = r9
                return r0
            L_0x0073:
                com.google.android.gms.internal.clearcut.zzt$zza r0 = com.google.android.gms.internal.clearcut.zzt.zza.zzbf
                return r0
            L_0x0077:
                com.google.android.gms.internal.clearcut.zzck r0 = com.google.android.gms.internal.clearcut.zzt.zza.zzc.zzd()
                r10 = r0
                com.google.android.gms.internal.clearcut.zzck r0 = com.google.android.gms.internal.clearcut.zzt.zza.zzb.zzd()
                r11 = r0
                com.google.android.gms.internal.clearcut.zzck r0 = com.google.android.gms.internal.clearcut.zzt.zza.zzd.zzd()
                r9 = r0
                com.google.android.gms.internal.clearcut.zzt$zza r0 = com.google.android.gms.internal.clearcut.zzt.zza.zzbf
                java.lang.String r1 = "\u0001\u0003��\u0001\u0001\u0003\u0003\u0004������\u0001\f��\u0002\f\u0001\u0003\f\u0002"
                r2 = 7
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzbb"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzbc"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                r5 = r10
                r3[r4] = r5
                r3 = r2
                r4 = 3
                java.lang.String r5 = "zzbd"
                r3[r4] = r5
                r3 = r2
                r4 = 4
                r5 = r11
                r3[r4] = r5
                r3 = r2
                r4 = 5
                java.lang.String r5 = "zzbe"
                r3[r4] = r5
                r3 = r2
                r4 = 6
                r5 = r9
                r3[r4] = r5
                java.lang.Object r0 = com.google.android.gms.internal.clearcut.zzcg.m10726a(r0, r1, r2)
                return r0
            L_0x00b4:
                com.google.android.gms.internal.clearcut.zzt$zza$zza r0 = new com.google.android.gms.internal.clearcut.zzt$zza$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x00bd:
                com.google.android.gms.internal.clearcut.zzt$zza r0 = new com.google.android.gms.internal.clearcut.zzt$zza
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzt.zza.mo10535a(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }
}
