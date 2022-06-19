package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dva.class */
public final class dva extends dnh<dva, C12429a> implements dov {
    private static final dva zzacn;
    private static volatile dpc<dva> zzek;
    String zzaci = "";
    String zzacj = "";
    long zzack;
    long zzacl;
    long zzacm;
    private int zzdv;

    /* renamed from: com.google.android.gms.internal.ads.dva$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dva$a.class */
    public static final class C12429a extends dnh.C12383b<dva, C12429a> implements dov {
        private C12429a() {
            super(dva.zzacn);
        }

        /* synthetic */ C12429a(duz duzVar) {
            this();
        }

        /* renamed from: a */
        public final C12429a m15682a(long j) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dva.m15689a((dva) this.f47274a, j);
            return this;
        }

        /* renamed from: a */
        public final C12429a m15681a(String str) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dva.m15688a((dva) this.f47274a, str);
            return this;
        }

        /* renamed from: b */
        public final C12429a m15680b(long j) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dva.m15686b((dva) this.f47274a, j);
            return this;
        }

        /* renamed from: b */
        public final C12429a m15679b(String str) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dva.m15685b((dva) this.f47274a, str);
            return this;
        }

        /* renamed from: c */
        public final C12429a m15678c(long j) {
            if (this.f47275b) {
                m16324c();
                this.f47275b = false;
            }
            dva.m15683c((dva) this.f47274a, j);
            return this;
        }
    }

    static {
        dva dvaVar = new dva();
        zzacn = dvaVar;
        dnh.m16339a(dva.class, dvaVar);
    }

    private dva() {
    }

    /* renamed from: a */
    public static C12429a m15692a() {
        return zzacn.m16335i();
    }

    /* renamed from: a */
    public static dva m15691a(dlw dlwVar) throws zzenn {
        return (dva) dnh.m16350a(zzacn, dlwVar);
    }

    /* renamed from: a */
    public static dva m15690a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dva) dnh.m16349a(zzacn, dlwVar, dmtVar);
    }

    /* renamed from: a */
    static /* synthetic */ void m15689a(dva dvaVar, long j) {
        dvaVar.zzdv |= 4;
        dvaVar.zzack = j;
    }

    /* renamed from: a */
    static /* synthetic */ void m15688a(dva dvaVar, String str) {
        str.getClass();
        dvaVar.zzdv |= 1;
        dvaVar.zzaci = str;
    }

    /* renamed from: b */
    public static dva m15687b() {
        return zzacn;
    }

    /* renamed from: b */
    static /* synthetic */ void m15686b(dva dvaVar, long j) {
        dvaVar.zzdv |= 8;
        dvaVar.zzacl = j;
    }

    /* renamed from: b */
    static /* synthetic */ void m15685b(dva dvaVar, String str) {
        str.getClass();
        dvaVar.zzdv |= 2;
        dvaVar.zzacj = str;
    }

    /* renamed from: c */
    static /* synthetic */ void m15683c(dva dvaVar, long j) {
        dvaVar.zzdv |= 16;
        dvaVar.zzacm = j;
    }

    @Override // com.google.android.gms.internal.ads.dnh
    /* renamed from: a */
    public final Object mo14895a(int i, Object obj) {
        switch (duz.f47647a[i - 1]) {
            case 1:
                return new dva();
            case 2:
                return new C12429a(null);
            case 3:
                return m16341a(zzacn, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဈ��\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzdv", "zzaci", "zzacj", "zzack", "zzacl", "zzacm"});
            case 4:
                return zzacn;
            case 5:
                dpc<dva> dpcVar = zzek;
                dpc<dva> dpcVar2 = dpcVar;
                if (dpcVar == null) {
                    synchronized (dva.class) {
                        try {
                            dpc<dva> dpcVar3 = zzek;
                            dpcVar2 = dpcVar3;
                            if (dpcVar3 == null) {
                                dpcVar2 = new dnh.C12382a<>(zzacn);
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
