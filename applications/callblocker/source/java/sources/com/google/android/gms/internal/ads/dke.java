package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dke.class */
public final class dke extends dcw<dke, C3001a> implements dei {
    private static final dke zzabm;
    private static volatile dep<dke> zzea;
    private dki zzabj;
    private dbi zzabk = dbi.f13932a;
    private dbi zzabl = dbi.f13932a;
    private int zzdl;

    /* renamed from: com.google.android.gms.internal.ads.dke$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dke$a.class */
    public static final class C3001a extends dcw.C2955a<dke, C3001a> implements dei {
        private C3001a() {
            super(dke.zzabm);
        }

        /* synthetic */ C3001a(dkg dkgVar) {
            this();
        }
    }

    static {
        dke dkeVar = new dke();
        zzabm = dkeVar;
        dcw.m10083a(dke.class, dkeVar);
    }

    private dke() {
    }

    /* renamed from: a */
    public static dke m9357a(dbi dbiVar, dci dciVar) {
        return (dke) dcw.m10093a(zzabm, dbiVar, dciVar);
    }

    /* renamed from: a */
    public final dki m9358a() {
        return this.zzabj == null ? dki.m9336g() : this.zzabj;
    }

    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // com.google.android.gms.internal.ads.dcw
    /* renamed from: a */
    public final Object mo8219a(int i, Object obj, Object obj2) {
        Object obj3;
        dep<dke> depVar;
        switch (dkg.f14522a[i - 1]) {
            case 1:
                obj3 = new dke();
                break;
            case 2:
                obj3 = new C3001a(null);
                break;
            case 3:
                obj3 = m10085a(zzabm, "\u0001\u0003��\u0001\u0001\u0003\u0003������\u0001\t��\u0002\n\u0001\u0003\n\u0002", new Object[]{"zzdl", "zzabj", "zzabk", "zzabl"});
                break;
            case 4:
                obj3 = zzabm;
                break;
            case 5:
                Object obj4 = zzea;
                obj3 = obj4;
                if (obj4 == null) {
                    synchronized (dke.class) {
                        try {
                            dep<dke> depVar2 = zzea;
                            depVar = depVar2;
                            if (depVar2 == null) {
                                depVar = new dcw.C2957c<>(zzabm);
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
    public final dbi m9356b() {
        return this.zzabk;
    }

    /* renamed from: c */
    public final dbi m9355c() {
        return this.zzabl;
    }
}
