package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzck;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgb.class */
public final class zzgb {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgb$zza.class */
    public static final class zza extends zzck<zza, C2904zza> implements zzdt {
        private static final zza zzol = new zza();
        private static volatile zzeb<zza> zzom;
        private int zzog;
        private boolean zzoh;
        private int zzoi;
        private String zzoj = "";
        private zzcr<zzb> zzok = zzay();

        /* renamed from: com.google.android.gms.internal.icing.zzgb$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgb$zza$zza.class */
        public static final class C2904zza extends zzck.zza<zza, C2904zza> implements zzdt {
            private C2904zza() {
                super(zza.zzol);
            }

            /* synthetic */ C2904zza(zzgc zzgcVar) {
                this();
            }
        }

        static {
            zzck.zza(zza.class, zzol);
        }

        private zza() {
        }

        public static zza zzdf() {
            return zzol;
        }

        public final int getScore() {
            return this.zzoi;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v5, types: [com.google.android.gms.internal.icing.zzck$zzb, com.google.android.gms.internal.icing.zzeb<com.google.android.gms.internal.icing.zzgb$zza>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzck
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object zza(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = com.google.android.gms.internal.icing.zzgc.zzof
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x00a9;
                    case 2: goto L_0x00a0;
                    case 3: goto L_0x0074;
                    case 4: goto L_0x0070;
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
                com.google.android.gms.internal.icing.zzeb<com.google.android.gms.internal.icing.zzgb$zza> r0 = com.google.android.gms.internal.icing.zzgb.zza.zzom
                r9 = r0
                r0 = r9
                if (r0 != 0) goto L_0x006e
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zza> r0 = com.google.android.gms.internal.icing.zzgb.zza.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzeb<com.google.android.gms.internal.icing.zzgb$zza> r0 = com.google.android.gms.internal.icing.zzgb.zza.zzom     // Catch: all -> 0x0068
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0063
                com.google.android.gms.internal.icing.zzck$zzb r0 = new com.google.android.gms.internal.icing.zzck$zzb     // Catch: all -> 0x0068
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzgb$zza r1 = com.google.android.gms.internal.icing.zzgb.zza.zzol     // Catch: all -> 0x0068
                r0.<init>(r1)     // Catch: all -> 0x0068
                r0 = r9
                com.google.android.gms.internal.icing.zzgb.zza.zzom = r0     // Catch: all -> 0x0068
            L_0x0063:
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zza> r0 = com.google.android.gms.internal.icing.zzgb.zza.class
                monitor-exit(r0)     // Catch: all -> 0x0068
                r0 = r9
                return r0
            L_0x0068:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zza> r0 = com.google.android.gms.internal.icing.zzgb.zza.class
                monitor-exit(r0)     // Catch: all -> 0x0068
                r0 = r9
                throw r0
            L_0x006e:
                r0 = r9
                return r0
            L_0x0070:
                com.google.android.gms.internal.icing.zzgb$zza r0 = com.google.android.gms.internal.icing.zzgb.zza.zzol
                return r0
            L_0x0074:
                com.google.android.gms.internal.icing.zzgb$zza r0 = com.google.android.gms.internal.icing.zzgb.zza.zzol
                java.lang.String r1 = "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\u0007��\u0002\u0004\u0001\u0003\b\u0002\u0004\u001b"
                r2 = 6
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzog"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzoh"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                java.lang.String r5 = "zzoi"
                r3[r4] = r5
                r3 = r2
                r4 = 3
                java.lang.String r5 = "zzoj"
                r3[r4] = r5
                r3 = r2
                r4 = 4
                java.lang.String r5 = "zzok"
                r3[r4] = r5
                r3 = r2
                r4 = 5
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zzb> r5 = com.google.android.gms.internal.icing.zzgb.zzb.class
                r3[r4] = r5
                java.lang.Object r0 = zza(r0, r1, r2)
                return r0
            L_0x00a0:
                com.google.android.gms.internal.icing.zzgb$zza$zza r0 = new com.google.android.gms.internal.icing.zzgb$zza$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x00a9:
                com.google.android.gms.internal.icing.zzgb$zza r0 = new com.google.android.gms.internal.icing.zzgb$zza
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzgb.zza.zza(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }

        public final boolean zzdd() {
            return this.zzoh;
        }

        public final String zzde() {
            return this.zzoj;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgb$zzb.class */
    public static final class zzb extends zzck<zzb, zza> implements zzdt {
        private static volatile zzeb<zzb> zzom;
        private static final zzb zzou = new zzb();
        private int zzog;
        private String zzon = "";
        private zzcn zzoo = zzax();
        private zzcq zzop = zzav();
        private zzcr<String> zzoq = zzck.zzay();
        private zzcr<zzc> zzor = zzay();
        private zzbi zzos = zzbi.zzdq;
        private zzco zzot = zzaw();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgb$zzb$zza.class */
        public static final class zza extends zzck.zza<zzb, zza> implements zzdt {
            private zza() {
                super(zzb.zzou);
            }

            /* synthetic */ zza(zzgc zzgcVar) {
                this();
            }
        }

        static {
            zzck.zza(zzb.class, zzou);
        }

        private zzb() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v5, types: [com.google.android.gms.internal.icing.zzck$zzb, com.google.android.gms.internal.icing.zzeb<com.google.android.gms.internal.icing.zzgb$zzb>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzck
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object zza(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = com.google.android.gms.internal.icing.zzgc.zzof
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x00bb;
                    case 2: goto L_0x00b2;
                    case 3: goto L_0x0074;
                    case 4: goto L_0x0070;
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
                com.google.android.gms.internal.icing.zzeb<com.google.android.gms.internal.icing.zzgb$zzb> r0 = com.google.android.gms.internal.icing.zzgb.zzb.zzom
                r9 = r0
                r0 = r9
                if (r0 != 0) goto L_0x006e
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zzb> r0 = com.google.android.gms.internal.icing.zzgb.zzb.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzeb<com.google.android.gms.internal.icing.zzgb$zzb> r0 = com.google.android.gms.internal.icing.zzgb.zzb.zzom     // Catch: all -> 0x0068
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0063
                com.google.android.gms.internal.icing.zzck$zzb r0 = new com.google.android.gms.internal.icing.zzck$zzb     // Catch: all -> 0x0068
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzgb$zzb r1 = com.google.android.gms.internal.icing.zzgb.zzb.zzou     // Catch: all -> 0x0068
                r0.<init>(r1)     // Catch: all -> 0x0068
                r0 = r9
                com.google.android.gms.internal.icing.zzgb.zzb.zzom = r0     // Catch: all -> 0x0068
            L_0x0063:
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zzb> r0 = com.google.android.gms.internal.icing.zzgb.zzb.class
                monitor-exit(r0)     // Catch: all -> 0x0068
                r0 = r9
                return r0
            L_0x0068:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zzb> r0 = com.google.android.gms.internal.icing.zzgb.zzb.class
                monitor-exit(r0)     // Catch: all -> 0x0068
                r0 = r9
                throw r0
            L_0x006e:
                r0 = r9
                return r0
            L_0x0070:
                com.google.android.gms.internal.icing.zzgb$zzb r0 = com.google.android.gms.internal.icing.zzgb.zzb.zzou
                return r0
            L_0x0074:
                com.google.android.gms.internal.icing.zzgb$zzb r0 = com.google.android.gms.internal.icing.zzgb.zzb.zzou
                java.lang.String r1 = "\u0001\u0007��\u0001\u0001\u0007\u0007��\u0005��\u0001\b��\u0002\u0019\u0003\u0014\u0004\u001a\u0005\u001b\u0006\n\u0001\u0007\u0012"
                r2 = 9
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzog"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzon"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                java.lang.String r5 = "zzoo"
                r3[r4] = r5
                r3 = r2
                r4 = 3
                java.lang.String r5 = "zzop"
                r3[r4] = r5
                r3 = r2
                r4 = 4
                java.lang.String r5 = "zzoq"
                r3[r4] = r5
                r3 = r2
                r4 = 5
                java.lang.String r5 = "zzor"
                r3[r4] = r5
                r3 = r2
                r4 = 6
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zzc> r5 = com.google.android.gms.internal.icing.zzgb.zzc.class
                r3[r4] = r5
                r3 = r2
                r4 = 7
                java.lang.String r5 = "zzos"
                r3[r4] = r5
                r3 = r2
                r4 = 8
                java.lang.String r5 = "zzot"
                r3[r4] = r5
                java.lang.Object r0 = zza(r0, r1, r2)
                return r0
            L_0x00b2:
                com.google.android.gms.internal.icing.zzgb$zzb$zza r0 = new com.google.android.gms.internal.icing.zzgb$zzb$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x00bb:
                com.google.android.gms.internal.icing.zzgb$zzb r0 = new com.google.android.gms.internal.icing.zzgb$zzb
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzgb.zzb.zza(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgb$zzc.class */
    public static final class zzc extends zzck<zzc, zza> implements zzdt {
        private static volatile zzeb<zzc> zzom;
        private static final zzc zzoy = new zzc();
        private int zzog;
        private zza zzox;
        private String zzov = "";
        private String zzow = "";
        private zzcr<zzb> zzok = zzay();

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgb$zzc$zza.class */
        public static final class zza extends zzck.zza<zzc, zza> implements zzdt {
            private zza() {
                super(zzc.zzoy);
            }

            /* synthetic */ zza(zzgc zzgcVar) {
                this();
            }
        }

        static {
            zzck.zza(zzc.class, zzoy);
        }

        private zzc() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r9v5, types: [com.google.android.gms.internal.icing.zzck$zzb, com.google.android.gms.internal.icing.zzeb<com.google.android.gms.internal.icing.zzgb$zzc>] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // com.google.android.gms.internal.icing.zzck
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object zza(int r8, java.lang.Object r9, java.lang.Object r10) {
            /*
                r7 = this;
                int[] r0 = com.google.android.gms.internal.icing.zzgc.zzof
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x00a9;
                    case 2: goto L_0x00a0;
                    case 3: goto L_0x0074;
                    case 4: goto L_0x0070;
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
                com.google.android.gms.internal.icing.zzeb<com.google.android.gms.internal.icing.zzgb$zzc> r0 = com.google.android.gms.internal.icing.zzgb.zzc.zzom
                r9 = r0
                r0 = r9
                if (r0 != 0) goto L_0x006e
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zzc> r0 = com.google.android.gms.internal.icing.zzgb.zzc.class
                monitor-enter(r0)
                com.google.android.gms.internal.icing.zzeb<com.google.android.gms.internal.icing.zzgb$zzc> r0 = com.google.android.gms.internal.icing.zzgb.zzc.zzom     // Catch: all -> 0x0068
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0063
                com.google.android.gms.internal.icing.zzck$zzb r0 = new com.google.android.gms.internal.icing.zzck$zzb     // Catch: all -> 0x0068
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.icing.zzgb$zzc r1 = com.google.android.gms.internal.icing.zzgb.zzc.zzoy     // Catch: all -> 0x0068
                r0.<init>(r1)     // Catch: all -> 0x0068
                r0 = r9
                com.google.android.gms.internal.icing.zzgb.zzc.zzom = r0     // Catch: all -> 0x0068
            L_0x0063:
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zzc> r0 = com.google.android.gms.internal.icing.zzgb.zzc.class
                monitor-exit(r0)     // Catch: all -> 0x0068
                r0 = r9
                return r0
            L_0x0068:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zzc> r0 = com.google.android.gms.internal.icing.zzgb.zzc.class
                monitor-exit(r0)     // Catch: all -> 0x0068
                r0 = r9
                throw r0
            L_0x006e:
                r0 = r9
                return r0
            L_0x0070:
                com.google.android.gms.internal.icing.zzgb$zzc r0 = com.google.android.gms.internal.icing.zzgb.zzc.zzoy
                return r0
            L_0x0074:
                com.google.android.gms.internal.icing.zzgb$zzc r0 = com.google.android.gms.internal.icing.zzgb.zzc.zzoy
                java.lang.String r1 = "\u0001\u0004��\u0001\u0001\u0004\u0004��\u0001��\u0001\b��\u0002\b\u0001\u0003\u001b\u0004\t\u0002"
                r2 = 6
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzog"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.String r5 = "zzov"
                r3[r4] = r5
                r3 = r2
                r4 = 2
                java.lang.String r5 = "zzow"
                r3[r4] = r5
                r3 = r2
                r4 = 3
                java.lang.String r5 = "zzok"
                r3[r4] = r5
                r3 = r2
                r4 = 4
                java.lang.Class<com.google.android.gms.internal.icing.zzgb$zzb> r5 = com.google.android.gms.internal.icing.zzgb.zzb.class
                r3[r4] = r5
                r3 = r2
                r4 = 5
                java.lang.String r5 = "zzox"
                r3[r4] = r5
                java.lang.Object r0 = zza(r0, r1, r2)
                return r0
            L_0x00a0:
                com.google.android.gms.internal.icing.zzgb$zzc$zza r0 = new com.google.android.gms.internal.icing.zzgb$zzc$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x00a9:
                com.google.android.gms.internal.icing.zzgb$zzc r0 = new com.google.android.gms.internal.icing.zzgb$zzc
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.icing.zzgb.zzc.zza(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }
    }
}
