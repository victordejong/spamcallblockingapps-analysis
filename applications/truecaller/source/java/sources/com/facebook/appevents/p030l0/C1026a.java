package com.facebook.appevents.p030l0;

import kotlin.Metadata;
@Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0003\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0002J\u001c\u0010\u000f\u001a\u00020\f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0011H\u0007J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/facebook/appevents/integrity/IntegrityManager;", "", "()V", "INTEGRITY_TYPE_ADDRESS", "", "INTEGRITY_TYPE_HEALTH", "INTEGRITY_TYPE_NONE", "RESTRICTIVE_ON_DEVICE_PARAMS_KEY", "enabled", "", "isSampleEnabled", "enable", "", "getIntegrityPredictionResult", "textFeature", "processParameters", "parameters", "", "shouldFilter", "input", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.l0.a */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/l0/a.class */
public final class C1026a {

    /* renamed from: a */
    public static final C1026a f2833a = new C1026a();

    /* renamed from: b */
    public static boolean f2834b;

    /* renamed from: c */
    public static boolean f2835c;

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
        if (r8 == null) goto L18;
     */
    /* JADX WARN: Type inference failed for: r1v5, types: [float[], float[][]] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m41872a(java.lang.String r8) {
        /*
            r7 = this;
            r0 = r7
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
            if (r0 == 0) goto L9
            r0 = 0
            return r0
        L9:
            r0 = r7
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)     // Catch: java.lang.Throwable -> L7d
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L19
            r0 = r10
            r8 = r0
            goto L72
        L19:
            r0 = 30
            float[] r0 = new float[r0]     // Catch: java.lang.Throwable -> L6a
            r11 = r0
            r0 = 0
            r12 = r0
        L22:
            r0 = r12
            r1 = 30
            if (r0 >= r1) goto L35
            r0 = r11
            r1 = r12
            r2 = 0
            r0[r1] = r2
            int r12 = r12 + 1
            goto L22
        L35:
            com.facebook.appevents.n0.h r0 = com.facebook.appevents.p032n0.C1056h.f2914a     // Catch: java.lang.Throwable -> L6a
            r13 = r0
            com.facebook.appevents.n0.h$a r0 = com.facebook.appevents.p032n0.C1056h.EnumC1057a.MTML_INTEGRITY_DETECT     // Catch: java.lang.Throwable -> L6a
            r1 = 1
            float[] r1 = new float[r1]     // Catch: java.lang.Throwable -> L6a
            r2 = r1
            r3 = 0
            r4 = r11
            r2[r3] = r4     // Catch: java.lang.Throwable -> L6a
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> L6a
            r3 = r2
            r4 = 0
            r5 = r8
            r3[r4] = r5     // Catch: java.lang.Throwable -> L6a
            java.lang.String[] r0 = com.facebook.appevents.p032n0.C1056h.m41846f(r0, r1, r2)     // Catch: java.lang.Throwable -> L6a
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L59
            goto L61
        L59:
            r0 = r8
            r1 = 0
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L67
        L61:
            java.lang.String r0 = "none"
            r8 = r0
            goto L72
        L67:
            goto L72
        L6a:
            r8 = move-exception
            r0 = r8
            r1 = r7
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)     // Catch: java.lang.Throwable -> L7d
            r0 = r10
            r8 = r0
        L72:
            java.lang.String r0 = "none"
            r1 = r8
            boolean r0 = s1.z.c.l.a(r0, r1)     // Catch: java.lang.Throwable -> L7d
            r9 = r0
            r0 = r9
            r1 = 1
            r0 = r0 ^ r1
            return r0
        L7d:
            r8 = move-exception
            r0 = r8
            r1 = r7
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p030l0.C1026a.m41872a(java.lang.String):boolean");
    }
}
