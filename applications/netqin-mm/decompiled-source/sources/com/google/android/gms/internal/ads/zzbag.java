package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.C3344a6;
import p131c.p161d.p170b.p224d.p252g.p253a.C3381b6;
import p131c.p161d.p170b.p224d.p252g.p253a.C3423c6;
import p131c.p161d.p170b.p224d.p252g.p253a.C4278z5;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbag.class */
public final class zzbag {

    /* renamed from: a */
    public static zzae f24706a;

    /* renamed from: b */
    public static final Object f24707b = new Object();

    static {
        new C3344a6();
    }

    public zzbag(Context context) {
        m15972a(context.getApplicationContext() != null ? context.getApplicationContext() : context);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035 A[Catch: all -> 0x004e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x000c, B:8:0x0016, B:15:0x0035, B:16:0x003d, B:18:0x0043, B:19:0x0046, B:19:0x0046, B:21:0x004b), top: B:29:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d A[Catch: all -> 0x004e, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x000c, B:8:0x0016, B:15:0x0035, B:16:0x003d, B:18:0x0043, B:19:0x0046, B:19:0x0046, B:21:0x004b), top: B:29:0x0006 }] */
    @com.google.android.gms.common.util.VisibleForTesting
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzae m15972a(android.content.Context r3) {
        /*
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzbag.f24707b
            r4 = r0
            r0 = r4
            monitor-enter(r0)
            com.google.android.gms.internal.ads.zzae r0 = com.google.android.gms.internal.ads.zzbag.f24706a     // Catch: all -> 0x004e
            if (r0 != 0) goto L_0x0046
            r0 = r3
            com.google.android.gms.internal.ads.zzabb.m16916a(r0)     // Catch: all -> 0x004e
            boolean r0 = com.google.android.gms.common.util.ClientLibraryUtils.m17107a()     // Catch: all -> 0x004e
            if (r0 != 0) goto L_0x002f
            com.google.android.gms.internal.ads.zzaaq<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.zzabb.f23770Y1     // Catch: all -> 0x004e
            r5 = r0
            com.google.android.gms.internal.ads.zzaax r0 = com.google.android.gms.internal.ads.zzwm.m11166e()     // Catch: all -> 0x004e
            r1 = r5
            java.lang.Object r0 = r0.m16921a(r1)     // Catch: all -> 0x004e
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: all -> 0x004e
            boolean r0 = r0.booleanValue()     // Catch: all -> 0x004e
            if (r0 == 0) goto L_0x002f
            r0 = 1
            r6 = r0
            goto L_0x0031
        L_0x002f:
            r0 = 0
            r6 = r0
        L_0x0031:
            r0 = r6
            if (r0 == 0) goto L_0x003d
            r0 = r3
            com.google.android.gms.internal.ads.zzae r0 = com.google.android.gms.internal.ads.zzazz.m15990a(r0)     // Catch: all -> 0x004e
            r3 = r0
            goto L_0x0042
        L_0x003d:
            r0 = r3
            com.google.android.gms.internal.ads.zzae r0 = com.google.android.gms.internal.ads.zzbk.m15350a(r0)     // Catch: all -> 0x004e
            r3 = r0
        L_0x0042:
            r0 = r3
            com.google.android.gms.internal.ads.zzbag.f24706a = r0     // Catch: all -> 0x004e
        L_0x0046:
            com.google.android.gms.internal.ads.zzae r0 = com.google.android.gms.internal.ads.zzbag.f24706a     // Catch: all -> 0x004e, all -> 0x004e
            r3 = r0
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x004e
            r0 = r3
            return r0
        L_0x004e:
            r3 = move-exception
            r0 = r4
            monitor-exit(r0)     // Catch: all -> 0x004e
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbag.m15972a(android.content.Context):com.google.android.gms.internal.ads.zzae");
    }

    /* renamed from: a */
    public static zzdzc<zzy> m15971a(String str) {
        zzbcg zzbcgVar = new zzbcg();
        f24706a.m16838a(new zzbam(str, zzbcgVar));
        return zzbcgVar;
    }

    /* renamed from: a */
    public final zzdzc<String> m15973a(int i, String str, Map<String, String> map, byte[] bArr) {
        C3423c6 c6Var = new C3423c6(null);
        C4278z5 z5Var = new C4278z5(this, str, c6Var);
        zzbbk zzbbkVar = new zzbbk(null);
        C3381b6 b6Var = new C3381b6(this, i, str, c6Var, z5Var, bArr, map, zzbbkVar);
        if (zzbbk.m15880a()) {
            try {
                zzbbkVar.m15873a(str, "GET", b6Var.mo16972a(), b6Var.mo16956g());
            } catch (zzl e) {
                zzbbq.m15852d(e.getMessage());
            }
        }
        f24706a.m16838a(b6Var);
        return c6Var;
    }

    /* renamed from: a */
    public final zzdzc<String> m15970a(String str, Map<String, String> map) {
        return m15973a(0, str, map, null);
    }
}
