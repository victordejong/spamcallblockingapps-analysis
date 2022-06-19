package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dit.class */
public final class dit extends dnh<dit, C12368a> implements dov {
    private static volatile dpc<dit> zzek;
    private static final dit zzile;
    int zzihc;
    diw zzild;

    /* renamed from: com.google.android.gms.internal.ads.dit$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dit$a.class */
    public static final class C12368a extends dnh.C12383b<dit, C12368a> implements dov {
        private C12368a() {
            super(dit.zzile);
        }

        /* synthetic */ C12368a(diu diuVar) {
            this();
        }

        /* renamed from: a */
        public final C12368a m16598a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dit) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12368a m16597a(diw diwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dit.m16601a((dit) this.f47274a, diwVar);
            return this;
        }
    }

    static {
        dit ditVar = new dit();
        zzile = ditVar;
        dnh.m16339a(dit.class, ditVar);
    }

    private dit() {
    }

    /* renamed from: a */
    public static C12368a m16603a() {
        return zzile.m16335i();
    }

    /* renamed from: a */
    public static dit m16600a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dit) dnh.m16349a(zzile, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16601a(dit ditVar, diw diwVar) {
        diwVar.getClass();
        ditVar.zzild = diwVar;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (diu.f47096a[i - 1]) {
            case 1:
                return new dit();
            case 2:
                return new C12368a(null);
            case 3:
                return m16341a(zzile, "��\u0002����\u0001\u0002\u0002������\u0001\u000b\u0002\t", new Object[]{"zzihc", "zzild"});
            case 4:
                return zzile;
            case 5:
                dpc<dit> dpcVar = zzek;
                dpc<dit> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dit.class) {
                        try {
                            dpc<dit> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzile);
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
