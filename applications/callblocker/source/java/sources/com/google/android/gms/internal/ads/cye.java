package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cye.class */
public final class cye extends dcw<cye, C2937b> implements dei {
    private static volatile dep<cye> zzea;
    private static final cye zzhoz;
    private int zzhox;
    private dde<C2935a> zzhoy = m10075t();

    /* renamed from: com.google.android.gms.internal.ads.cye$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cye$a.class */
    public static final class C2935a extends dcw<C2935a, C2936a> implements dei {
        private static volatile dep<C2935a> zzea;
        private static final C2935a zzhpd;
        private int zzhoq;
        private cxu zzhpa;
        private int zzhpb;
        private int zzhpc;

        /* renamed from: com.google.android.gms.internal.ads.cye$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cye$a$a.class */
        public static final class C2936a extends dcw.C2955a<C2935a, C2936a> implements dei {
            private C2936a() {
                super(C2935a.zzhpd);
            }

            /* synthetic */ C2936a(cyd cydVar) {
                this();
            }
        }

        static {
            C2935a c2935a = new C2935a();
            zzhpd = c2935a;
            dcw.m10083a(C2935a.class, c2935a);
        }

        private C2935a() {
        }

        /* JADX WARN: Type inference failed for: r9v6 */
        @Override // com.google.android.gms.internal.ads.dcw
        /* renamed from: a */
        public final Object mo8219a(int i, Object obj, Object obj2) {
            Object obj3;
            dep<C2935a> depVar;
            switch (cyd.f13813a[i - 1]) {
                case 1:
                    obj3 = new C2935a();
                    break;
                case 2:
                    obj3 = new C2936a(null);
                    break;
                case 3:
                    obj3 = m10085a(zzhpd, "��\u0004����\u0001\u0004\u0004������\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzhpa", "zzhpb", "zzhpc", "zzhoq"});
                    break;
                case 4:
                    obj3 = zzhpd;
                    break;
                case 5:
                    Object obj4 = zzea;
                    obj3 = obj4;
                    if (obj4 == null) {
                        synchronized (C2935a.class) {
                            try {
                                dep<C2935a> depVar2 = zzea;
                                depVar = depVar2;
                                if (depVar2 == null) {
                                    depVar = new dcw.C2957c<>(zzhpd);
                                    zzea = depVar;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        obj3 = depVar;
                        break;
                    }
                    break;
                case 6:
                    obj3 = (byte) 1;
                    break;
                case 7:
                    obj3 = null;
                    break;
                default:
                    throw new UnsupportedOperationException();
            }
            return obj3 == 1 ? 1 : 0;
        }

        /* renamed from: a */
        public final boolean m10392a() {
            return this.zzhpa != null;
        }

        /* renamed from: b */
        public final cxu m10391b() {
            return this.zzhpa == null ? cxu.m10415e() : this.zzhpa;
        }

        /* renamed from: c */
        public final cxy m10390c() {
            cxy m10409a = cxy.m10409a(this.zzhpb);
            cxy cxyVar = m10409a;
            if (m10409a == null) {
                cxyVar = cxy.UNRECOGNIZED;
            }
            return cxyVar;
        }

        /* renamed from: d */
        public final int m10389d() {
            return this.zzhpc;
        }

        /* renamed from: e */
        public final cyq m10388e() {
            cyq m10333a = cyq.m10333a(this.zzhoq);
            cyq cyqVar = m10333a;
            if (m10333a == null) {
                cyqVar = cyq.UNRECOGNIZED;
            }
            return cyqVar;
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.cye$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cye$b.class */
    public static final class C2937b extends dcw.C2955a<cye, C2937b> implements dei {
        private C2937b() {
            super(cye.zzhoz);
        }

        /* synthetic */ C2937b(cyd cydVar) {
            this();
        }
    }

    static {
        cye cyeVar = new cye();
        zzhoz = cyeVar;
        dcw.m10083a(cye.class, cyeVar);
    }

    private cye() {
    }

    /* renamed from: a */
    public static cye m10396a(byte[] bArr, dci dciVar) {
        return (cye) dcw.m10088a(zzhoz, bArr, dciVar);
    }

    /* renamed from: a */
    public final int m10397a() {
        return this.zzhox;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cye> depVar;
        switch (cyd.f13813a[i - 1]) {
            case 1:
                obj3 = new cye();
                break;
            case 2:
                obj3 = new C2937b(null);
                break;
            case 3:
                obj3 = m10085a(zzhoz, "��\u0002����\u0001\u0002\u0002��\u0001��\u0001\u000b\u0002\u001b", new Object[]{"zzhox", "zzhoy", C2935a.class});
                break;
            case 4:
                obj3 = zzhoz;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cye.class) {
                        try {
                            dep<cye> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhoz);
                                zzea = depVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    obj3 = depVar;
                    break;
                }
                break;
            case 6:
                obj3 = (byte) 1;
                break;
            case 7:
                obj3 = null;
                break;
            default:
                throw new UnsupportedOperationException();
        }
        return obj3 == 1 ? 1 : 0;
    }

    /* renamed from: b */
    public final List<C2935a> m10395b() {
        return this.zzhoy;
    }

    /* renamed from: c */
    public final int m10394c() {
        return this.zzhoy.size();
    }
}
