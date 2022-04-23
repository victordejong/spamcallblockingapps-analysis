package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzdx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhj.class */
public final class zzhj {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhj$zza.class */
    public static final class zza extends zzdx<zza, C2481zza> implements zzfj {
        private static volatile zzfr<zza> zzbc;
        private static final zza zzqr;
        private int zzbd;
        private boolean zzqn;
        private int zzqo;
        private String zzqp = "";
        private zzee<zzb> zzqq = zzdx.m13826o();

        /* renamed from: com.google.android.gms.internal.icing.zzhj$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhj$zza$zza.class */
        public static final class C2481zza extends zzdx.zzb<zza, C2481zza> implements zzfj {
            private C2481zza() {
                super(zza.zzqr);
            }

            /* synthetic */ C2481zza(zzhi zzhiVar) {
                this();
            }
        }

        static {
            zza zzaVar = new zza();
            zzqr = zzaVar;
            zzdx.m13831j(zza.class, zzaVar);
        }

        private zza() {
        }

        /* renamed from: w */
        public static zza m13481w() {
            return zzqr;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.icing.zzdx$zza, com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhj$zza>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzdx
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo13474g(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = com.google.android.gms.internal.icing.zzhi.f8121a
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x00ac;
                    case 2: goto L_0x00a3;
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
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhj$zza> r0 = com.google.android.gms.internal.icing.zzhj.zza.zzbc
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zza> r0 = com.google.android.gms.internal.icing.zzhj.zza.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhj$zza> r0 = com.google.android.gms.internal.icing.zzhj.zza.zzbc     // Catch: all -> 0x006b
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.icing.zzdx$zza r0 = new com.google.android.gms.internal.icing.zzdx$zza     // Catch: all -> 0x006b
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzhj$zza r1 = com.google.android.gms.internal.icing.zzhj.zza.zzqr     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r9
                com.google.android.gms.internal.icing.zzhj.zza.zzbc = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zza> r0 = com.google.android.gms.internal.icing.zzhj.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zza> r0 = com.google.android.gms.internal.icing.zzhj.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r9
                throw r0
            L_0x0071:
                r0 = r9
                return r0
            L_0x0073:
                com.google.android.gms.internal.icing.zzhj$zza r0 = com.google.android.gms.internal.icing.zzhj.zza.zzqr
                return r0
            L_0x0077:
                com.google.android.gms.internal.icing.zzhj$zza r0 = com.google.android.gms.internal.icing.zzhj.zza.zzqr
                java.lang.String r1 = "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u0007��\u0002\u0004\u0001\u0003\b\u0002\u0004\u001b"
                r2 = 6
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzbd"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzqn"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                java.lang.String r5 = "zzqo"
                r3[r4] = r5
                r3 = r2
                r4 = 3
                java.lang.String r5 = "zzqp"
                r3[r4] = r5
                r3 = r2
                r4 = 4
                java.lang.String r5 = "zzqq"
                r3[r4] = r5
                r3 = r2
                r4 = 5
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zzb> r5 = com.google.android.gms.internal.icing.zzhj.zzb.class
                r3[r4] = r5
                java.lang.Object r0 = com.google.android.gms.internal.icing.zzdx.m13833h(r0, r1, r2)
                return r0
            L_0x00a3:
                com.google.android.gms.internal.icing.zzhj$zza$zza r0 = new com.google.android.gms.internal.icing.zzhj$zza$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x00ac:
                com.google.android.gms.internal.icing.zzhj$zza r0 = new com.google.android.gms.internal.icing.zzhj$zza
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzhj.zza.mo13474g(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }

        /* renamed from: p */
        public final int m13484p() {
            return this.zzqo;
        }

        /* renamed from: q */
        public final boolean m13483q() {
            return this.zzqn;
        }

        /* renamed from: v */
        public final String m13482v() {
            return this.zzqp;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhj$zzb.class */
    public static final class zzb extends zzdx<zzb, zza> implements zzfj {
        private static volatile zzfr<zzb> zzbc;
        private static final zzb zzqz;
        private int zzbd;
        private String zzqs = "";
        private zzea zzqt = zzdx.m13827n();
        private zzef zzqu = zzdx.m13829l();
        private zzee<String> zzqv = zzdx.m13826o();
        private zzee<zzc> zzqw = zzdx.m13826o();
        private zzct zzqx = zzct.f7956g;
        private zzed zzqy = zzdx.m13828m();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhj$zzb$zza.class */
        public static final class zza extends zzdx.zzb<zzb, zza> implements zzfj {
            private zza() {
                super(zzb.zzqz);
            }

            /* synthetic */ zza(zzhi zzhiVar) {
                this();
            }
        }

        static {
            zzb zzbVar = new zzb();
            zzqz = zzbVar;
            zzdx.m13831j(zzb.class, zzbVar);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.icing.zzdx$zza, com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhj$zzb>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzdx
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo13474g(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = com.google.android.gms.internal.icing.zzhi.f8121a
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x00be;
                    case 2: goto L_0x00b5;
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
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhj$zzb> r0 = com.google.android.gms.internal.icing.zzhj.zzb.zzbc
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zzb> r0 = com.google.android.gms.internal.icing.zzhj.zzb.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhj$zzb> r0 = com.google.android.gms.internal.icing.zzhj.zzb.zzbc     // Catch: all -> 0x006b
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.icing.zzdx$zza r0 = new com.google.android.gms.internal.icing.zzdx$zza     // Catch: all -> 0x006b
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzhj$zzb r1 = com.google.android.gms.internal.icing.zzhj.zzb.zzqz     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r9
                com.google.android.gms.internal.icing.zzhj.zzb.zzbc = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zzb> r0 = com.google.android.gms.internal.icing.zzhj.zzb.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zzb> r0 = com.google.android.gms.internal.icing.zzhj.zzb.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r9
                throw r0
            L_0x0071:
                r0 = r9
                return r0
            L_0x0073:
                com.google.android.gms.internal.icing.zzhj$zzb r0 = com.google.android.gms.internal.icing.zzhj.zzb.zzqz
                return r0
            L_0x0077:
                com.google.android.gms.internal.icing.zzhj$zzb r0 = com.google.android.gms.internal.icing.zzhj.zzb.zzqz
                java.lang.String r1 = "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0005��\u0001\b��\u0002\u0019\u0003\u0014\u0004\u001a\u0005\u001b\u0006\n\u0001\u0007\u0012"
                r2 = 9
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzbd"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzqs"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                java.lang.String r5 = "zzqt"
                r3[r4] = r5
                r3 = r2
                r4 = 3
                java.lang.String r5 = "zzqu"
                r3[r4] = r5
                r3 = r2
                r4 = 4
                java.lang.String r5 = "zzqv"
                r3[r4] = r5
                r3 = r2
                r4 = 5
                java.lang.String r5 = "zzqw"
                r3[r4] = r5
                r3 = r2
                r4 = 6
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zzc> r5 = com.google.android.gms.internal.icing.zzhj.zzc.class
                r3[r4] = r5
                r3 = r2
                r4 = 7
                java.lang.String r5 = "zzqx"
                r3[r4] = r5
                r3 = r2
                r4 = 8
                java.lang.String r5 = "zzqy"
                r3[r4] = r5
                java.lang.Object r0 = com.google.android.gms.internal.icing.zzdx.m13833h(r0, r1, r2)
                return r0
            L_0x00b5:
                com.google.android.gms.internal.icing.zzhj$zzb$zza r0 = new com.google.android.gms.internal.icing.zzhj$zzb$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x00be:
                com.google.android.gms.internal.icing.zzhj$zzb r0 = new com.google.android.gms.internal.icing.zzhj$zzb
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzhj.zzb.mo13474g(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhj$zzc.class */
    public static final class zzc extends zzdx<zzc, zza> implements zzfj {
        private static volatile zzfr<zzc> zzbc;
        private static final zzc zzrd;
        private int zzbd;
        private zza zzrc;
        private String zzra = "";
        private String zzrb = "";
        private zzee<zzb> zzqq = zzdx.m13826o();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzhj$zzc$zza.class */
        public static final class zza extends zzdx.zzb<zzc, zza> implements zzfj {
            private zza() {
                super(zzc.zzrd);
            }

            /* synthetic */ zza(zzhi zzhiVar) {
                this();
            }
        }

        static {
            zzc zzcVar = new zzc();
            zzrd = zzcVar;
            zzdx.m13831j(zzc.class, zzcVar);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.icing.zzdx$zza, com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhj$zzc>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzdx
        /* renamed from: g */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo13474g(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = com.google.android.gms.internal.icing.zzhi.f8121a
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x00ac;
                    case 2: goto L_0x00a3;
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
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhj$zzc> r0 = com.google.android.gms.internal.icing.zzhj.zzc.zzbc
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zzc> r0 = com.google.android.gms.internal.icing.zzhj.zzc.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzfr<com.google.android.gms.internal.icing.zzhj$zzc> r0 = com.google.android.gms.internal.icing.zzhj.zzc.zzbc     // Catch: all -> 0x006b
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.icing.zzdx$zza r0 = new com.google.android.gms.internal.icing.zzdx$zza     // Catch: all -> 0x006b
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzhj$zzc r1 = com.google.android.gms.internal.icing.zzhj.zzc.zzrd     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r9
                com.google.android.gms.internal.icing.zzhj.zzc.zzbc = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zzc> r0 = com.google.android.gms.internal.icing.zzhj.zzc.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zzc> r0 = com.google.android.gms.internal.icing.zzhj.zzc.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r9
                throw r0
            L_0x0071:
                r0 = r9
                return r0
            L_0x0073:
                com.google.android.gms.internal.icing.zzhj$zzc r0 = com.google.android.gms.internal.icing.zzhj.zzc.zzrd
                return r0
            L_0x0077:
                com.google.android.gms.internal.icing.zzhj$zzc r0 = com.google.android.gms.internal.icing.zzhj.zzc.zzrd
                java.lang.String r1 = "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\b��\u0002\b\u0001\u0003\u001b\u0004\t\u0002"
                r2 = 6
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzbd"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzra"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                java.lang.String r5 = "zzrb"
                r3[r4] = r5
                r3 = r2
                r4 = 3
                java.lang.String r5 = "zzqq"
                r3[r4] = r5
                r3 = r2
                r4 = 4
                java.lang.Class<com.google.android.gms.internal.icing.zzhj$zzb> r5 = com.google.android.gms.internal.icing.zzhj.zzb.class
                r3[r4] = r5
                r3 = r2
                r4 = 5
                java.lang.String r5 = "zzrc"
                r3[r4] = r5
                java.lang.Object r0 = com.google.android.gms.internal.icing.zzdx.m13833h(r0, r1, r2)
                return r0
            L_0x00a3:
                com.google.android.gms.internal.icing.zzhj$zzc$zza r0 = new com.google.android.gms.internal.icing.zzhj$zzc$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x00ac:
                com.google.android.gms.internal.icing.zzhj$zzc r0 = new com.google.android.gms.internal.icing.zzhj$zzc
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzhj.zzc.mo13474g(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }
}
