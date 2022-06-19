package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dix.class */
public final class dix extends dnh<dix, C12370a> implements dov {
    private static volatile dpc<dix> zzek;
    private static final dix zzili;
    int zzihc;
    private dja zzilh;

    /* renamed from: com.google.android.gms.internal.ads.dix$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dix$a.class */
    public static final class C12370a extends dnh.C12383b<dix, C12370a> implements dov {
        private C12370a() {
            super(dix.zzili);
        }

        /* synthetic */ C12370a(diy diyVar) {
            this();
        }

        /* renamed from: a */
        public final C12370a m16587a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dix) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12370a m16586a(dja djaVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dix.m16591a((dix) this.f47274a, djaVar);
            return this;
        }
    }

    static {
        dix dixVar = new dix();
        zzili = dixVar;
        dnh.m16339a(dix.class, dixVar);
    }

    private dix() {
    }

    /* renamed from: a */
    public static dix m16590a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dix) dnh.m16349a(zzili, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16591a(dix dixVar, dja djaVar) {
        djaVar.getClass();
        dixVar.zzilh = djaVar;
    }

    /* renamed from: b */
    public static C12370a m16589b() {
        return zzili.m16335i();
    }

    /* renamed from: a */
    public final dja m16593a() {
        dja djaVar = this.zzilh;
        dja djaVar2 = djaVar;
        if (djaVar == null) {
            djaVar2 = dja.m16585a();
        }
        return djaVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (diy.f47098a[i - 1]) {
            case 1:
                return new dix();
            case 2:
                return new C12370a(null);
            case 3:
                return m16341a(zzili, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzihc", "zzilh"});
            case 4:
                return zzili;
            case 5:
                dpc<dix> dpcVar = zzek;
                dpc<dix> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dix.class) {
                        try {
                            dpc<dix> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzili);
                                zzek = dpcVar2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return dpcVar2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
