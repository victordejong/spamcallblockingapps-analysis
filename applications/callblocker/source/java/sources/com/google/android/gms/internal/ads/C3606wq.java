package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.wq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wq.class */
public final class C3606wq {

    /* renamed from: a */
    private static dxq f17565a;

    /* renamed from: b */
    private static final Object f17566b = new Object();
    @Deprecated

    /* renamed from: c */
    private static final AbstractC3610wu<Void> f17567c = new C3605wp();

    public C3606wq(Context context) {
        m6871a(context.getApplicationContext() != null ? context.getApplicationContext() : context);
    }

    /* renamed from: a */
    public static crt<drt> m6870a(String str) {
        C3658yo c3658yo = new C3658yo();
        f17565a.m8203a(new C3612ww(str, c3658yo));
        return c3658yo;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0030 A[Catch: all -> 0x004e, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x000c, B:8:0x0016, B:14:0x0030, B:16:0x0036, B:17:0x0039, B:17:0x0039, B:19:0x003e, B:23:0x0046), top: B:29:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0046 A[Catch: all -> 0x004e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x000c, B:8:0x0016, B:14:0x0030, B:16:0x0036, B:17:0x0039, B:17:0x0039, B:19:0x003e, B:23:0x0046), top: B:29:0x0006 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.dxq m6871a(android.content.Context r3) {
        /*
            java.lang.Object r0 = com.google.android.gms.internal.ads.C3606wq.f17566b
            r4 = r0
            r0 = r4
            monitor-enter(r0)
            com.google.android.gms.internal.ads.dxq r0 = com.google.android.gms.internal.ads.C3606wq.f17565a     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L39
            r0 = r3
            com.google.android.gms.internal.ads.edi.m7866a(r0)     // Catch: java.lang.Throwable -> L4e
            boolean r0 = com.google.android.gms.common.util.C2707d.m13875a()     // Catch: java.lang.Throwable -> L4e
            if (r0 != 0) goto L41
            com.google.android.gms.internal.ads.ect<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.edi.f16412bR     // Catch: java.lang.Throwable -> L4e
            r5 = r0
            com.google.android.gms.internal.ads.ede r0 = com.google.android.gms.internal.ads.dyx.m8158e()     // Catch: java.lang.Throwable -> L4e
            r1 = r5
            java.lang.Object r0 = r0.m7876a(r1)     // Catch: java.lang.Throwable -> L4e
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L4e
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto L41
            r0 = 1
            r6 = r0
        L2c:
            r0 = r6
            if (r0 == 0) goto L46
            r0 = r3
            com.google.android.gms.internal.ads.dxq r0 = com.google.android.gms.internal.ads.C3596wg.m6884a(r0)     // Catch: java.lang.Throwable -> L4e
            r3 = r0
        L35:
            r0 = r3
            com.google.android.gms.internal.ads.C3606wq.f17565a = r0     // Catch: java.lang.Throwable -> L4e
        L39:
            com.google.android.gms.internal.ads.dxq r0 = com.google.android.gms.internal.ads.C3606wq.f17565a     // Catch: java.lang.Throwable -> L4e java.lang.Throwable -> L4e
            r3 = r0
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4e
            r0 = r3
            return r0
        L41:
            r0 = 0
            r6 = r0
            goto L2c
        L46:
            r0 = r3
            com.google.android.gms.internal.ads.dxq r0 = com.google.android.gms.internal.ads.C3648ye.m6740a(r0)     // Catch: java.lang.Throwable -> L4e
            r3 = r0
            goto L35
        L4e:
            r3 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4e
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3606wq.m6871a(android.content.Context):com.google.android.gms.internal.ads.dxq");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0057 -> B:5:0x004b). Please submit an issue!!! */
    /* renamed from: a */
    public final crt<String> m6872a(int i, String str, Map<String, String> map, byte[] bArr) {
        C3609wt c3609wt = new C3609wt(null);
        C3608ws c3608ws = new C3608ws(this, str, c3609wt);
        C3638xv c3638xv = new C3638xv(null);
        C3607wr c3607wr = new C3607wr(this, i, str, c3609wt, c3608ws, bArr, map, c3638xv);
        if (C3638xv.m6760c()) {
            try {
                c3638xv.m6772a(str, "GET", c3607wr.mo6866b(), c3607wr.mo6868a());
            } catch (zzb e) {
                C3556uu.m6745e(e.getMessage());
            }
        }
        f17565a.m8203a(c3607wr);
        return c3609wt;
    }

    /* renamed from: a */
    public final crt<String> m6869a(String str, Map<String, String> map) {
        return m6872a(0, str, map, null);
    }
}
