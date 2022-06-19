package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwo.class */
public final class cwo extends dcw<cwo, C2916a> implements dei {
    private static volatile dep<cwo> zzea;
    private static final cwo zzhmf;
    private int zzhlh;
    private dbi zzhli = dbi.f13932a;

    /* renamed from: com.google.android.gms.internal.ads.cwo$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cwo$a.class */
    public static final class C2916a extends dcw.C2955a<cwo, C2916a> implements dei {
        private C2916a() {
            super(cwo.zzhmf);
        }

        /* synthetic */ C2916a(cwn cwnVar) {
            this();
        }

        /* renamed from: a */
        public final C2916a m10522a(int i) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cwo) this.f14072a).m10525b(0);
            return this;
        }

        /* renamed from: a */
        public final C2916a m10521a(dbi dbiVar) {
            if (this.f14073b) {
                m10066c();
                this.f14073b = false;
            }
            ((cwo) this.f14072a).m10528a(dbiVar);
            return this;
        }
    }

    static {
        cwo cwoVar = new cwo();
        zzhmf = cwoVar;
        dcw.m10083a(cwo.class, cwoVar);
    }

    private cwo() {
    }

    /* renamed from: a */
    public static cwo m10527a(dbi dbiVar, dci dciVar) {
        return (cwo) dcw.m10093a(zzhmf, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final void m10528a(dbi dbiVar) {
        dbiVar.getClass();
        this.zzhli = dbiVar;
    }

    /* renamed from: b */
    public final void m10525b(int i) {
        this.zzhlh = i;
    }

    /* renamed from: c */
    public static C2916a m10524c() {
        return zzhmf.m10079n();
    }

    /* renamed from: a */
    public final int m10531a() {
        return this.zzhlh;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<cwo> depVar;
        switch (cwn.f13752a[i - 1]) {
            case 1:
                obj3 = new cwo();
                break;
            case 2:
                obj3 = new C2916a(null);
                break;
            case 3:
                obj3 = m10085a(zzhmf, "��\u0002����\u0001\u0003\u0002������\u0001\u000b\u0003\n", new Object[]{"zzhlh", "zzhli"});
                break;
            case 4:
                obj3 = zzhmf;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (cwo.class) {
                        try {
                            dep<cwo> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzhmf);
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
    public final dbi m10526b() {
        return this.zzhli;
    }
}
