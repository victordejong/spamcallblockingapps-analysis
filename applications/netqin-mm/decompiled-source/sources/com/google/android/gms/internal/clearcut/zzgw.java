package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p255c.C4378l3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw.class */
public final class zzgw {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw$zza.class */
    public static final class zza extends zzcg<zza, C10512zza> implements zzdq {
        public static volatile zzdz<zza> zzbg;
        public static final zza zzbir;
        public zzcn<zzb> zzbiq = zzcg.m10719i();

        /* renamed from: com.google.android.gms.internal.clearcut.zzgw$zza$zza  reason: collision with other inner class name */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw$zza$zza.class */
        public static final class C10512zza extends zzcg.zza<zza, C10512zza> implements zzdq {
            public C10512zza() {
                super(zza.zzbir);
            }

            public /* synthetic */ C10512zza(C4378l3 l3Var) {
                this();
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw$zza$zzb.class */
        public static final class zzb extends zzcg<zzb, C10513zza> implements zzdq {
            public static volatile zzdz<zzb> zzbg;
            public static final zzb zzbiv;
            public int zzbb;
            public String zzbis = "";
            public long zzbit;
            public long zzbiu;
            public int zzya;

            /* renamed from: com.google.android.gms.internal.clearcut.zzgw$zza$zzb$zza  reason: collision with other inner class name */
            /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/clearcut/zzgw$zza$zzb$zza.class */
            public static final class C10513zza extends zzcg.zza<zzb, C10513zza> implements zzdq {
                public C10513zza() {
                    super(zzb.zzbiv);
                }

                public /* synthetic */ C10513zza(C4378l3 l3Var) {
                    this();
                }

                /* renamed from: a */
                public final C10513zza m10569a(long j) {
                    mo10707k();
                    ((zzb) this.f29249b).m10582a(j);
                    return this;
                }

                /* renamed from: a */
                public final C10513zza m10568a(String str) {
                    mo10707k();
                    ((zzb) this.f29249b).m10579a(str);
                    return this;
                }

                /* renamed from: b */
                public final C10513zza m10567b(long j) {
                    mo10707k();
                    ((zzb) this.f29249b).m10578b(j);
                    return this;
                }
            }

            static {
                zzb zzbVar = new zzb();
                zzbiv = zzbVar;
                zzcg.m10724a(zzb.class, zzbVar);
            }

            /* renamed from: o */
            public static C10513zza m10571o() {
                return (C10513zza) ((zzcg.zza) zzbiv.mo10535a(zzcg.zzg.f29256e, (Object) null, (Object) null));
            }

            /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza$zzb>, com.google.android.gms.internal.clearcut.zzcg$zzb] */
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
                    int[] r0 = p131c.p161d.p170b.p224d.p252g.p255c.C4378l3.f16560a
                    r1 = r8
                    r2 = 1
                    int r1 = r1 - r2
                    r0 = r0[r1]
                    switch(r0) {
                        case 1: goto L_0x00a6;
                        case 2: goto L_0x009d;
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
                    com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza$zzb> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzb.zzbg
                    r10 = r0
                    r0 = r10
                    r9 = r0
                    r0 = r10
                    if (r0 != 0) goto L_0x0071
                    java.lang.Class<com.google.android.gms.internal.clearcut.zzgw$zza$zzb> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzb.class
                    monitor-enter(r0)
                    com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza$zzb> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzb.zzbg     // Catch: all -> 0x006b
                    r10 = r0
                    r0 = r10
                    r9 = r0
                    r0 = r10
                    if (r0 != 0) goto L_0x0065
                    com.google.android.gms.internal.clearcut.zzcg$zzb r0 = new com.google.android.gms.internal.clearcut.zzcg$zzb     // Catch: all -> 0x006b
                    r9 = r0
                    r0 = r9
                    com.google.android.gms.internal.clearcut.zzgw$zza$zzb r1 = com.google.android.gms.internal.clearcut.zzgw.zza.zzb.zzbiv     // Catch: all -> 0x006b
                    r0.<init>(r1)     // Catch: all -> 0x006b
                    r0 = r9
                    com.google.android.gms.internal.clearcut.zzgw.zza.zzb.zzbg = r0     // Catch: all -> 0x006b
                L_0x0065:
                    java.lang.Class<com.google.android.gms.internal.clearcut.zzgw$zza$zzb> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzb.class
                    monitor-exit(r0)     // Catch: all -> 0x006b
                    goto L_0x0071
                L_0x006b:
                    r9 = move-exception
                    java.lang.Class<com.google.android.gms.internal.clearcut.zzgw$zza$zzb> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzb.class
                    monitor-exit(r0)     // Catch: all -> 0x006b
                    r0 = r9
                    throw r0
                L_0x0071:
                    r0 = r9
                    return r0
                L_0x0073:
                    com.google.android.gms.internal.clearcut.zzgw$zza$zzb r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzb.zzbiv
                    return r0
                L_0x0077:
                    com.google.android.gms.internal.clearcut.zzgw$zza$zzb r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzb.zzbiv
                    java.lang.String r1 = "\u0001\u0004��\u0001\u0001\u0004\u0004\u0005������\u0001\u0004��\u0002\b\u0001\u0003\u0002\u0002\u0004\u0002\u0003"
                    r2 = 5
                    java.lang.Object[] r2 = new java.lang.Object[r2]
                    r3 = r2
                    r4 = 0
                    java.lang.String r5 = "zzbb"
                    r3[r4] = r5
                    r3 = r2
                    r4 = 1
                    java.lang.String r5 = "zzya"
                    r3[r4] = r5
                    r3 = r2
                    r4 = 2
                    java.lang.String r5 = "zzbis"
                    r3[r4] = r5
                    r3 = r2
                    r4 = 3
                    java.lang.String r5 = "zzbit"
                    r3[r4] = r5
                    r3 = r2
                    r4 = 4
                    java.lang.String r5 = "zzbiu"
                    r3[r4] = r5
                    java.lang.Object r0 = com.google.android.gms.internal.clearcut.zzcg.m10726a(r0, r1, r2)
                    return r0
                L_0x009d:
                    com.google.android.gms.internal.clearcut.zzgw$zza$zzb$zza r0 = new com.google.android.gms.internal.clearcut.zzgw$zza$zzb$zza
                    r1 = r0
                    r2 = 0
                    r1.<init>(r2)
                    return r0
                L_0x00a6:
                    com.google.android.gms.internal.clearcut.zzgw$zza$zzb r0 = new com.google.android.gms.internal.clearcut.zzgw$zza$zzb
                    r1 = r0
                    r1.<init>()
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzgw.zza.zzb.mo10535a(int, java.lang.Object, java.lang.Object):java.lang.Object");
            }

            /* renamed from: a */
            public final void m10582a(long j) {
                this.zzbb |= 4;
                this.zzbit = j;
            }

            /* renamed from: a */
            public final void m10579a(String str) {
                if (str != null) {
                    this.zzbb |= 2;
                    this.zzbis = str;
                    return;
                }
                throw null;
            }

            /* renamed from: b */
            public final void m10578b(long j) {
                this.zzbb |= 8;
                this.zzbiu = j;
            }

            /* renamed from: j */
            public final int m10576j() {
                return this.zzya;
            }

            /* renamed from: k */
            public final boolean m10575k() {
                return (this.zzbb & 1) == 1;
            }

            /* renamed from: l */
            public final String m10574l() {
                return this.zzbis;
            }

            /* renamed from: m */
            public final long m10573m() {
                return this.zzbit;
            }

            /* renamed from: n */
            public final long m10572n() {
                return this.zzbiu;
            }
        }

        static {
            zza zzaVar = new zza();
            zzbir = zzaVar;
            zzcg.m10724a(zza.class, zzaVar);
        }

        /* renamed from: a */
        public static zza m10586a(byte[] bArr) throws zzco {
            return (zza) zzcg.m10721b(zzbir, bArr);
        }

        /* renamed from: k */
        public static zza m10584k() {
            return zzbir;
        }

        /* JADX WARN: Type inference failed for: r9v6, types: [com.google.android.gms.internal.clearcut.zzcg$zzb, com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza>] */
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
                int[] r0 = p131c.p161d.p170b.p224d.p252g.p255c.C4378l3.f16560a
                r1 = r8
                r2 = 1
                int r1 = r1 - r2
                r0 = r0[r1]
                switch(r0) {
                    case 1: goto L_0x0097;
                    case 2: goto L_0x008e;
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
                com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzbg
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0071
                java.lang.Class<com.google.android.gms.internal.clearcut.zzgw$zza> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.class
                monitor-enter(r0)
                com.google.android.gms.internal.clearcut.zzdz<com.google.android.gms.internal.clearcut.zzgw$zza> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzbg     // Catch: all -> 0x006b
                r10 = r0
                r0 = r10
                r9 = r0
                r0 = r10
                if (r0 != 0) goto L_0x0065
                com.google.android.gms.internal.clearcut.zzcg$zzb r0 = new com.google.android.gms.internal.clearcut.zzcg$zzb     // Catch: all -> 0x006b
                r9 = r0
                r0 = r9
                com.google.android.gms.internal.clearcut.zzgw$zza r1 = com.google.android.gms.internal.clearcut.zzgw.zza.zzbir     // Catch: all -> 0x006b
                r0.<init>(r1)     // Catch: all -> 0x006b
                r0 = r9
                com.google.android.gms.internal.clearcut.zzgw.zza.zzbg = r0     // Catch: all -> 0x006b
            L_0x0065:
                java.lang.Class<com.google.android.gms.internal.clearcut.zzgw$zza> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                goto L_0x0071
            L_0x006b:
                r9 = move-exception
                java.lang.Class<com.google.android.gms.internal.clearcut.zzgw$zza> r0 = com.google.android.gms.internal.clearcut.zzgw.zza.class
                monitor-exit(r0)     // Catch: all -> 0x006b
                r0 = r9
                throw r0
            L_0x0071:
                r0 = r9
                return r0
            L_0x0073:
                com.google.android.gms.internal.clearcut.zzgw$zza r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzbir
                return r0
            L_0x0077:
                com.google.android.gms.internal.clearcut.zzgw$zza r0 = com.google.android.gms.internal.clearcut.zzgw.zza.zzbir
                java.lang.String r1 = "\u0001\u0001����\u0001\u0001\u0001\u0002��\u0001��\u0001\u001b"
                r2 = 2
                java.lang.Object[] r2 = new java.lang.Object[r2]
                r3 = r2
                r4 = 0
                java.lang.String r5 = "zzbiq"
                r3[r4] = r5
                r3 = r2
                r4 = 1
                java.lang.Class<com.google.android.gms.internal.clearcut.zzgw$zza$zzb> r5 = com.google.android.gms.internal.clearcut.zzgw.zza.zzb.class
                r3[r4] = r5
                java.lang.Object r0 = com.google.android.gms.internal.clearcut.zzcg.m10726a(r0, r1, r2)
                return r0
            L_0x008e:
                com.google.android.gms.internal.clearcut.zzgw$zza$zza r0 = new com.google.android.gms.internal.clearcut.zzgw$zza$zza
                r1 = r0
                r2 = 0
                r1.<init>(r2)
                return r0
            L_0x0097:
                com.google.android.gms.internal.clearcut.zzgw$zza r0 = new com.google.android.gms.internal.clearcut.zzgw$zza
                r1 = r0
                r1.<init>()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.zzgw.zza.mo10535a(int, java.lang.Object, java.lang.Object):java.lang.Object");
        }

        /* renamed from: j */
        public final List<zzb> m10585j() {
            return this.zzbiq;
        }
    }
}
