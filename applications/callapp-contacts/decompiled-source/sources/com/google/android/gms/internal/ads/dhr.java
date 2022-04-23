package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhr.class */
public final class dhr extends dnh<dhr, a> implements dov {
    private static volatile dpc<dhr> zzek;
    private static final dhr zziix;
    int zzihc;
    private dhn zziin;
    dlw zziiv = dlw.f26941a;
    dlw zziiw = dlw.f26941a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dhr$a.class */
    public static final class a extends dnh.b<dhr, a> implements dov {
        private a() {
            super(dhr.zziix);
        }

        /* synthetic */ a(dhs dhsVar) {
            this();
        }

        public final a a() {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            ((dhr) this.f26993a).zzihc = 0;
            return this;
        }

        public final a a(dhn dhnVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dhr.a((dhr) this.f26993a, dhnVar);
            return this;
        }

        public final a a(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dhr.a((dhr) this.f26993a, dlwVar);
            return this;
        }

        public final a b(dlw dlwVar) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dhr.b((dhr) this.f26993a, dlwVar);
            return this;
        }
    }

    static {
        dhr dhrVar = new dhr();
        zziix = dhrVar;
        dnh.a(dhr.class, dhrVar);
    }

    private dhr() {
    }

    public static dhr a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dhr) dnh.a(zziix, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dhr dhrVar, dhn dhnVar) {
        dhnVar.getClass();
        dhrVar.zziin = dhnVar;
    }

    static /* synthetic */ void a(dhr dhrVar, dlw dlwVar) {
        dlwVar.getClass();
        dhrVar.zziiv = dlwVar;
    }

    public static a b() {
        return zziix.i();
    }

    static /* synthetic */ void b(dhr dhrVar, dlw dlwVar) {
        dlwVar.getClass();
        dhrVar.zziiw = dlwVar;
    }

    public static dhr c() {
        return zziix;
    }

    public final dhn a() {
        dhn dhnVar = this.zziin;
        dhn dhnVar2 = dhnVar;
        if (dhnVar == null) {
            dhnVar2 = dhn.d();
        }
        return dhnVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (dhs.f26839a[i - 1]) {
            case 1:
                return new dhr();
            case 2:
                return new a(null);
            case 3:
                return a(zziix, "��\u0004����\u0001\u0004\u0004������\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zzihc", "zziin", "zziiv", "zziiw"});
            case 4:
                return zziix;
            case 5:
                dpc<dhr> dpcVar = zzek;
                dpc<dhr> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dhr.class) {
                        try {
                            dpc<dhr> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.a<>(zziix);
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
