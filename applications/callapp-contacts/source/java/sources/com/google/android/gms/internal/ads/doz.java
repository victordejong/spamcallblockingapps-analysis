package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/doz.class */
final class doz<T> implements dpp<T> {

    /* renamed from: a */
    private final dot f47347a;

    /* renamed from: b */
    private final dqh<?, ?> f47348b;

    /* renamed from: c */
    private final boolean f47349c;

    /* renamed from: d */
    private final dmv<?> f47350d;

    private doz(dqh<?, ?> dqhVar, dmv<?> dmvVar, dot dotVar) {
        this.f47348b = dqhVar;
        this.f47349c = dmvVar.mo16388a(dotVar);
        this.f47350d = dmvVar;
        this.f47347a = dotVar;
    }

    /* renamed from: a */
    public static <T> doz<T> m16206a(dqh<?, ?> dqhVar, dmv<?> dmvVar, dot dotVar) {
        return new doz<>(dqhVar, dmvVar, dotVar);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    public final int mo16123a(T t) {
        int hashCode = this.f47348b.mo16018b(t).hashCode();
        int i = hashCode;
        if (this.f47349c) {
            i = (hashCode * 53) + this.f47350d.mo16387a(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    public final T mo16124a() {
        return (T) this.f47347a.mo16253n().mo16260e();
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    public final void mo16122a(T t, dpj dpjVar, dmt dmtVar) throws IOException {
        boolean z;
        dqh<?, ?> dqhVar = this.f47348b;
        dmv<?> dmvVar = this.f47350d;
        Object mo16014c = dqhVar.mo16014c(t);
        dmvVar.mo16384b(t);
        do {
            try {
                if (dpjVar.mo16193a() == Integer.MAX_VALUE) {
                    return;
                }
                int mo16188b = dpjVar.mo16188b();
                if (mo16188b == 11) {
                    int i = 0;
                    Object obj = null;
                    dlw dlwVar = null;
                    while (dpjVar.mo16193a() != Integer.MAX_VALUE) {
                        int mo16188b2 = dpjVar.mo16188b();
                        if (mo16188b2 == 16) {
                            i = dpjVar.mo16160o();
                            obj = dmvVar.mo16389a(dmtVar, this.f47347a, i);
                        } else if (mo16188b2 == 26) {
                            if (obj != null) {
                                dmvVar.mo16385b();
                            } else {
                                dlwVar = dpjVar.mo16162n();
                            }
                        } else if (!dpjVar.mo16184c()) {
                            break;
                        }
                    }
                    if (dpjVar.mo16188b() != 12) {
                        throw zzenn.m13631e();
                    } else if (dlwVar != null) {
                        if (obj != null) {
                            dmvVar.mo16382c();
                        } else {
                            dqhVar.mo16023a((dqh<?, ?>) mo16014c, i, dlwVar);
                        }
                    }
                } else if ((mo16188b & 7) != 2) {
                    z = dpjVar.mo16184c();
                } else if (dmvVar.mo16389a(dmtVar, this.f47347a, mo16188b >>> 3) != null) {
                    dmvVar.mo16385b();
                } else {
                    z = dqhVar.m16028a((dqh<?, ?>) mo16014c, dpjVar);
                }
                z = true;
            } finally {
                dqhVar.mo16015b((Object) t, (T) mo16014c);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    public final void mo16121a(T t, drd drdVar) throws IOException {
        Iterator<Map.Entry<?, Object>> m16369c = this.f47350d.mo16387a(t).m16369c();
        while (m16369c.hasNext()) {
            Map.Entry<?, Object> next = m16369c.next();
            dnb dnbVar = (dnb) next.getKey();
            if (dnbVar.m16362c() != dra.MESSAGE || dnbVar.m16361d() || dnbVar.m16360e()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof dnv) {
                drdVar.mo15914a(dnbVar.m16364a(), (Object) ((dnv) next).f47296a.getValue().m16299c());
            } else {
                drdVar.mo15914a(dnbVar.m16364a(), next.getValue());
            }
        }
        dqh<?, ?> dqhVar = this.f47348b;
        dqhVar.mo16016b((dqh<?, ?>) dqhVar.mo16018b(t), drdVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147 A[EDGE_INSN: B:65:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo16119a(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.ads.dlr r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.doz.mo16119a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.dlr):void");
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: a */
    public final boolean mo16120a(T t, T t2) {
        if (!this.f47348b.mo16018b(t).equals(this.f47348b.mo16018b(t2))) {
            return false;
        }
        if (!this.f47349c) {
            return true;
        }
        return this.f47350d.mo16387a(t).equals(this.f47350d.mo16387a(t2));
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: b */
    public final int mo16118b(T t) {
        dqh<?, ?> dqhVar = this.f47348b;
        int mo16011e = dqhVar.mo16011e(dqhVar.mo16018b(t)) + 0;
        int i = mo16011e;
        if (this.f47349c) {
            dmz<?> mo16387a = this.f47350d.mo16387a(t);
            int i2 = 0;
            for (int i3 = 0; i3 < mo16387a.f47260a.m16044c(); i3++) {
                i2 += dmz.m16370b(mo16387a.f47260a.m16046b(i3));
            }
            for (Map.Entry<?, Object> entry : mo16387a.f47260a.m16041d()) {
                i2 += dmz.m16370b(entry);
            }
            i = mo16011e + i2;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: b */
    public final void mo16117b(T t, T t2) {
        dpr.m16099a(this.f47348b, t, t2);
        if (this.f47349c) {
            dpr.m16101a(this.f47350d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: c */
    public final void mo16116c(T t) {
        this.f47348b.mo16012d(t);
        this.f47350d.mo16381c(t);
    }

    @Override // com.google.android.gms.internal.ads.dpp
    /* renamed from: d */
    public final boolean mo16115d(T t) {
        return this.f47350d.mo16387a(t).m16366d();
    }
}
