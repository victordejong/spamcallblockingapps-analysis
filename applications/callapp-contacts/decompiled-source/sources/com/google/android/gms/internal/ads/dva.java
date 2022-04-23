package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dnh;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dva.class */
public final class dva extends dnh<dva, a> implements dov {
    private static final dva zzacn;
    private static volatile dpc<dva> zzek;
    String zzaci = "";
    String zzacj = "";
    long zzack;
    long zzacl;
    long zzacm;
    private int zzdv;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dva$a.class */
    public static final class a extends dnh.b<dva, a> implements dov {
        private a() {
            super(dva.zzacn);
        }

        /* synthetic */ a(duz duzVar) {
            this();
        }

        public final a a(long j) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dva.a((dva) this.f26993a, j);
            return this;
        }

        public final a a(String str) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dva.a((dva) this.f26993a, str);
            return this;
        }

        public final a b(long j) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dva.b((dva) this.f26993a, j);
            return this;
        }

        public final a b(String str) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dva.b((dva) this.f26993a, str);
            return this;
        }

        public final a c(long j) {
            if (this.f26994b) {
                c();
                this.f26994b = false;
            }
            dva.c((dva) this.f26993a, j);
            return this;
        }
    }

    static {
        dva dvaVar = new dva();
        zzacn = dvaVar;
        dnh.a(dva.class, dvaVar);
    }

    private dva() {
    }

    public static a a() {
        return zzacn.i();
    }

    public static dva a(dlw dlwVar) throws zzenn {
        return (dva) dnh.a(zzacn, dlwVar);
    }

    public static dva a(dlw dlwVar, dmt dmtVar) throws zzenn {
        return (dva) dnh.a(zzacn, dlwVar, dmtVar);
    }

    static /* synthetic */ void a(dva dvaVar, long j) {
        dvaVar.zzdv |= 4;
        dvaVar.zzack = j;
    }

    static /* synthetic */ void a(dva dvaVar, String str) {
        str.getClass();
        dvaVar.zzdv |= 1;
        dvaVar.zzaci = str;
    }

    public static dva b() {
        return zzacn;
    }

    static /* synthetic */ void b(dva dvaVar, long j) {
        dvaVar.zzdv |= 8;
        dvaVar.zzacl = j;
    }

    static /* synthetic */ void b(dva dvaVar, String str) {
        str.getClass();
        dvaVar.zzdv |= 2;
        dvaVar.zzacj = str;
    }

    static /* synthetic */ void c(dva dvaVar, long j) {
        dvaVar.zzdv |= 16;
        dvaVar.zzacm = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dnh
    public final Object a(int i, Object obj) {
        switch (duz.f27244a[i - 1]) {
            case 1:
                return new dva();
            case 2:
                return new a(null);
            case 3:
                return a(zzacn, "\u0001\u0005��\u0001\u0001\u0005\u0005������\u0001ဈ��\u0002ဈ\u0001\u0003ဃ\u0002\u0004ဃ\u0003\u0005ဃ\u0004", new Object[]{"zzdv", "zzaci", "zzacj", "zzack", "zzacl", "zzacm"});
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
                                dpcVar2 = new dnh.a<>(zzacn);
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
