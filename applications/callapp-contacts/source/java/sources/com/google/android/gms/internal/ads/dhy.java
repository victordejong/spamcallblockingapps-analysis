package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhy.class */
public final class dhy extends dnh<dhy, C12354a> implements dov {
    private static volatile dpc<dhy> zzek;
    private static final dhy zzijr;
    int zzihc;
    dlw zzihd = dlw.f47199a;
    private did zzijq;

    /* renamed from: com.google.android.gms.internal.ads.dhy$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhy$a.class */
    public static final class C12354a extends dnh.C12383b<dhy, C12354a> implements dov {
        private C12354a() {
            super(dhy.zzijr);
        }

        /* synthetic */ C12354a(dia diaVar) {
            this();
        }

        /* renamed from: a */
        public final C12354a m16653a() {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            ((dhy) this.f47274a).zzihc = 0;
            return this;
        }

        /* renamed from: a */
        public final C12354a m16652a(did didVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dhy.m16659a((dhy) this.f47274a, didVar);
            return this;
        }

        /* renamed from: a */
        public final C12354a m16651a(dlw dlwVar) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dhy.m16658a((dhy) this.f47274a, dlwVar);
            return this;
        }
    }

    static {
        dhy dhyVar = new dhy();
        zzijr = dhyVar;
        dnh.m16339a(dhy.class, dhyVar);
    }

    private dhy() {
    }

    /* renamed from: a */
    public static dhy m16657a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhy) dnh.m16349a(zzijr, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m16659a(dhy dhyVar, did didVar) {
        didVar.getClass();
        dhyVar.zzijq = didVar;
    }

    /* renamed from: a */
    static /* synthetic */ void m16658a(dhy dhyVar, dlw dlwVar) {
        dlwVar.getClass();
        dhyVar.zzihd = dlwVar;
    }

    /* renamed from: b */
    public static C12354a m16656b() {
        return zzijr.m16335i();
    }

    /* renamed from: c */
    public static dhy m16655c() {
        return zzijr;
    }

    /* renamed from: a */
    public final did m16661a() {
        did didVar = this.zzijq;
        did didVar2 = didVar;
        if (didVar == null) {
            didVar2 = did.m16645b();
        }
        return didVar2;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (dia.f47082a[i - 1]) {
            case 1:
                return new dhy();
            case 2:
                return new C12354a(null);
            case 3:
                return m16341a(zzijr, "��\u0003����\u0001\u0003\u0003������\u0001\u000b\u0002\t\u0003\n", new Object[]{"zzihc", "zzijq", "zzihd"});
            case 4:
                return zzijr;
            case 5:
                dpc<dhy> dpcVar = zzek;
                dpc<dhy> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhy.class) {
                        try {
                            dpc<dhy> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzijr);
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
