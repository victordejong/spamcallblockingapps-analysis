package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dem.class */
final class dem<T> implements dfd<T> {

    /* renamed from: a */
    private final deg f14159a;

    /* renamed from: b */
    private final dfv<?, ?> f14160b;

    /* renamed from: c */
    private final boolean f14161c;

    /* renamed from: d */
    private final dck<?> f14162d;

    private dem(dfv<?, ?> dfvVar, dck<?> dckVar, deg degVar) {
        this.f14160b = dfvVar;
        this.f14161c = dckVar.mo10133a(degVar);
        this.f14162d = dckVar;
        this.f14159a = degVar;
    }

    /* renamed from: a */
    public static <T> dem<T> m9933a(dfv<?, ?> dfvVar, dck<?> dckVar, deg degVar) {
        return new dem<>(dfvVar, dckVar, degVar);
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final int mo9845a(T t) {
        int hashCode = this.f14160b.mo9725b(t).hashCode();
        int i = hashCode;
        if (this.f14161c) {
            i = (hashCode * 53) + this.f14162d.mo10129a(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final T mo9846a() {
        return (T) this.f14159a.mo9981v().mo9988f();
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final void mo9844a(T t, dex dexVar, dci dciVar) {
        boolean z;
        dfv<?, ?> dfvVar = this.f14160b;
        dck<?> dckVar = this.f14162d;
        Object mo9721c = dfvVar.mo9721c(t);
        dcl<?> mo10127b = dckVar.mo10127b(t);
        do {
            try {
                if (dexVar.mo9900a() == Integer.MAX_VALUE) {
                    return;
                }
                int mo9895b = dexVar.mo9895b();
                if (mo9895b == 11) {
                    int i = 0;
                    Object obj = null;
                    dbi dbiVar = null;
                    while (dexVar.mo9900a() != Integer.MAX_VALUE) {
                        int mo9895b2 = dexVar.mo9895b();
                        if (mo9895b2 == 16) {
                            i = dexVar.mo9867o();
                            obj = dckVar.mo10134a(dciVar, this.f14159a, i);
                        } else if (mo9895b2 == 26) {
                            if (obj != null) {
                                dckVar.mo10132a(dexVar, obj, dciVar, mo10127b);
                            } else {
                                dbiVar = dexVar.mo9869n();
                            }
                        } else if (!dexVar.mo9891c()) {
                            break;
                        }
                    }
                    if (dexVar.mo9895b() != 12) {
                        throw zzeco.m6546e();
                    } else if (dbiVar != null) {
                        if (obj != null) {
                            dckVar.mo10135a(dbiVar, obj, dciVar, mo10127b);
                        } else {
                            dfvVar.mo9730a((dfv<?, ?>) mo9721c, i, dbiVar);
                        }
                    }
                } else if ((mo9895b & 7) == 2) {
                    Object mo10134a = dckVar.mo10134a(dciVar, this.f14159a, mo9895b >>> 3);
                    if (mo10134a != null) {
                        dckVar.mo10132a(dexVar, mo10134a, dciVar, mo10127b);
                    } else {
                        z = dfvVar.m9741a((dfv<?, ?>) mo9721c, dexVar);
                    }
                } else {
                    z = dexVar.mo9891c();
                }
                z = true;
            } finally {
                dfvVar.mo9722b((Object) t, (T) mo9721c);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final void mo9843a(T t, dgo dgoVar) {
        Iterator<Map.Entry<?, Object>> m10110d = this.f14162d.mo10129a(t).m10110d();
        while (m10110d.hasNext()) {
            Map.Entry<?, Object> next = m10110d.next();
            dcn dcnVar = (dcn) next.getKey();
            if (dcnVar.mo10058c() != dgp.MESSAGE || dcnVar.mo10057d() || dcnVar.mo10056e()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof ddi) {
                dgoVar.mo9619a(dcnVar.mo10062a(), (Object) ((ddi) next).m10035a().m10031c());
            } else {
                dgoVar.mo9619a(dcnVar.mo10062a(), next.getValue());
            }
        }
        dfv<?, ?> dfvVar = this.f14160b;
        dfvVar.mo9723b((dfv<?, ?>) dfvVar.mo9725b(t), dgoVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x002d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x014a A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo9841a(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.ads.dbh r12) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dem.mo9841a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.dbh):void");
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: a */
    public final boolean mo9842a(T t, T t2) {
        return !this.f14160b.mo9725b(t).equals(this.f14160b.mo9725b(t2)) ? false : this.f14161c ? this.f14162d.mo10129a(t).equals(this.f14162d.mo10129a(t2)) : true;
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: b */
    public final int mo9840b(T t) {
        dfv<?, ?> dfvVar = this.f14160b;
        int mo9718e = dfvVar.mo9718e(dfvVar.mo9725b(t)) + 0;
        int i = mo9718e;
        if (this.f14161c) {
            i = mo9718e + this.f14162d.mo10129a(t).m10107g();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: b */
    public final void mo9839b(T t, T t2) {
        dff.m9808a(this.f14160b, t, t2);
        if (this.f14161c) {
            dff.m9810a(this.f14162d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: c */
    public final void mo9838c(T t) {
        this.f14160b.mo9719d(t);
        this.f14162d.mo10126c(t);
    }

    @Override // com.google.android.gms.internal.ads.dfd
    /* renamed from: d */
    public final boolean mo9837d(T t) {
        return this.f14162d.mo10129a(t).m10108f();
    }
}
