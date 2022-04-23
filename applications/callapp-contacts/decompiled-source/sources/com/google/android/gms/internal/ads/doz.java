package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doz.class */
final class doz<T> implements dpp<T> {

    /* renamed from: a  reason: collision with root package name */
    private final dot f27046a;

    /* renamed from: b  reason: collision with root package name */
    private final dqh<?, ?> f27047b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f27048c;

    /* renamed from: d  reason: collision with root package name */
    private final dmv<?> f27049d;

    private doz(dqh<?, ?> dqhVar, dmv<?> dmvVar, dot dotVar) {
        this.f27047b = dqhVar;
        this.f27048c = dmvVar.a(dotVar);
        this.f27049d = dmvVar;
        this.f27046a = dotVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> doz<T> a(dqh<?, ?> dqhVar, dmv<?> dmvVar, dot dotVar) {
        return new doz<>(dqhVar, dmvVar, dotVar);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final int a(T t) {
        int hashCode = this.f27047b.b(t).hashCode();
        int i = hashCode;
        if (this.f27048c) {
            i = (hashCode * 53) + this.f27049d.a(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final T a() {
        return (T) this.f27046a.n().e();
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final void a(T t, dpj dpjVar, dmt dmtVar) throws IOException {
        boolean z;
        dqh<?, ?> dqhVar = this.f27047b;
        dmv<?> dmvVar = this.f27049d;
        Object c2 = dqhVar.c(t);
        dmvVar.b(t);
        do {
            try {
                if (dpjVar.a() != Integer.MAX_VALUE) {
                    int b2 = dpjVar.b();
                    if (b2 == 11) {
                        int i = 0;
                        Object obj = null;
                        dlw dlwVar = null;
                        while (dpjVar.a() != Integer.MAX_VALUE) {
                            int b3 = dpjVar.b();
                            if (b3 == 16) {
                                i = dpjVar.o();
                                obj = dmvVar.a(dmtVar, this.f27046a, i);
                            } else if (b3 == 26) {
                                if (obj != null) {
                                    dmvVar.b();
                                } else {
                                    dlwVar = dpjVar.n();
                                }
                            } else if (!dpjVar.c()) {
                                break;
                            }
                        }
                        if (dpjVar.b() != 12) {
                            throw zzenn.e();
                        } else if (dlwVar != null) {
                            if (obj != null) {
                                dmvVar.c();
                            } else {
                                dqhVar.a((dqh<?, ?>) c2, i, dlwVar);
                            }
                        }
                    } else if ((b2 & 7) != 2) {
                        z = dpjVar.c();
                    } else if (dmvVar.a(dmtVar, this.f27046a, b2 >>> 3) != null) {
                        dmvVar.b();
                    } else {
                        z = dqhVar.a((dqh<?, ?>) c2, dpjVar);
                    }
                    z = true;
                } else {
                    return;
                }
            } finally {
                dqhVar.b((Object) t, (T) c2);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final void a(T t, drd drdVar) throws IOException {
        Iterator<Map.Entry<?, Object>> c2 = this.f27049d.a(t).c();
        while (c2.hasNext()) {
            Map.Entry<?, Object> next = c2.next();
            dnb dnbVar = (dnb) next.getKey();
            if (dnbVar.c() != dra.MESSAGE || dnbVar.d() || dnbVar.e()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof dnv) {
                drdVar.a(dnbVar.a(), (Object) ((dnv) next).f27010a.getValue().c());
            } else {
                drdVar.a(dnbVar.a(), next.getValue());
            }
        }
        dqh<?, ?> dqhVar = this.f27047b;
        dqhVar.b((dqh<?, ?>) dqhVar.b(t), drdVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147 A[EDGE_INSN: B:65:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.dpp
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.ads.dlr r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.doz.a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.dlr):void");
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final boolean a(T t, T t2) {
        if (!this.f27047b.b(t).equals(this.f27047b.b(t2))) {
            return false;
        }
        if (this.f27048c) {
            return this.f27049d.a(t).equals(this.f27049d.a(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final int b(T t) {
        dqh<?, ?> dqhVar = this.f27047b;
        int e = dqhVar.e(dqhVar.b(t)) + 0;
        int i = e;
        if (this.f27048c) {
            dmz<?> a2 = this.f27049d.a(t);
            int i2 = 0;
            for (int i3 = 0; i3 < a2.f26980a.c(); i3++) {
                i2 += dmz.b(a2.f26980a.b(i3));
            }
            for (Map.Entry<?, Object> entry : a2.f26980a.d()) {
                i2 += dmz.b(entry);
            }
            i = e + i2;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final void b(T t, T t2) {
        dpr.a(this.f27047b, t, t2);
        if (this.f27048c) {
            dpr.a(this.f27049d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final void c(T t) {
        this.f27047b.d(t);
        this.f27049d.c(t);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    public final boolean d(T t) {
        return this.f27049d.a(t).d();
    }
}
