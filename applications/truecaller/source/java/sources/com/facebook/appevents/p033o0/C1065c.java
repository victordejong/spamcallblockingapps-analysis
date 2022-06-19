package com.facebook.appevents.p033o0;

import java.util.Set;
import kotlin.Metadata;
import s1.u.i;
@Metadata(d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J\b\u0010\n\u001a\u00020\u0007H\u0007J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0007J\u001c\u0010\u000e\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0007R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;", "", "()V", "ALLOWED_IMPLICIT_EVENTS", "", "", "isEventEligibleForOnDeviceProcessing", "", "event", "Lcom/facebook/appevents/AppEvent;", "isOnDeviceProcessingEnabled", "sendCustomEventAsync", "", "applicationId", "sendInstallEventAsync", "preferencesName", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.o0.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/o0/c.class */
public final class C1065c {

    /* renamed from: a */
    public static final C1065c f2937a = new C1065c();

    /* renamed from: b */
    public static final Set<String> f2938b = i.z0(new String[]{"fb_mobile_purchase", "StartTrial", "Subscribe"});

    /* JADX WARN: Removed duplicated region for block: B:31:0x0084  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m41823a() {
        /*
            java.lang.Class<com.facebook.appevents.o0.c> r0 = com.facebook.appevents.p033o0.C1065c.class
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto Le
            r0 = 0
            return r0
        Le:
            e.j.f0 r0 = p193e.p1538j.C23228f0.f64291a     // Catch: java.lang.Throwable -> L8a
            r5 = r0
            android.content.Context r0 = p193e.p1538j.C23228f0.m7354a()     // Catch: java.lang.Throwable -> L8a
            boolean r0 = p193e.p1538j.C23228f0.m7347h(r0)     // Catch: java.lang.Throwable -> L8a
            if (r0 != 0) goto L26
            boolean r0 = com.facebook.internal.C1168q0.m41701A()     // Catch: java.lang.Throwable -> L8a
            if (r0 != 0) goto L26
            r0 = 1
            r6 = r0
            goto L28
        L26:
            r0 = 0
            r6 = r0
        L28:
            r0 = r4
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L87
            com.facebook.appevents.o0.e r0 = com.facebook.appevents.p033o0.C1067e.f2941a     // Catch: java.lang.Throwable -> L8a
            r5 = r0
            java.lang.Class<com.facebook.appevents.o0.e> r0 = com.facebook.appevents.p033o0.C1067e.class
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)     // Catch: java.lang.Throwable -> L8a
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L40
            goto L66
        L40:
            java.lang.Boolean r0 = com.facebook.appevents.p033o0.C1067e.f2943c     // Catch: java.lang.Throwable -> L73
            if (r0 != 0) goto L5e
            r0 = r5
            android.content.Context r1 = p193e.p1538j.C23228f0.m7354a()     // Catch: java.lang.Throwable -> L73
            android.content.Intent r0 = r0.m41820a(r1)     // Catch: java.lang.Throwable -> L73
            if (r0 == 0) goto L55
            r0 = 1
            r3 = r0
            goto L57
        L55:
            r0 = 0
            r3 = r0
        L57:
            r0 = r3
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> L73
            com.facebook.appevents.p033o0.C1067e.f2943c = r0     // Catch: java.lang.Throwable -> L73
        L5e:
            java.lang.Boolean r0 = com.facebook.appevents.p033o0.C1067e.f2943c     // Catch: java.lang.Throwable -> L73 java.lang.Throwable -> L73
            r5 = r0
            r0 = r5
            if (r0 != 0) goto L6b
        L66:
            r0 = 0
            r3 = r0
            goto L7d
        L6b:
            r0 = r5
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L73
            r3 = r0
            goto L7d
        L73:
            r5 = move-exception
            r0 = r5
            java.lang.Class<com.facebook.appevents.o0.e> r1 = com.facebook.appevents.p033o0.C1067e.class
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)     // Catch: java.lang.Throwable -> L8a
            goto L66
        L7d:
            r0 = r4
            r7 = r0
            r0 = r3
            if (r0 == 0) goto L87
            r0 = 1
            r7 = r0
        L87:
            r0 = r7
            return r0
        L8a:
            r5 = move-exception
            r0 = r5
            java.lang.Class<com.facebook.appevents.o0.c> r1 = com.facebook.appevents.p033o0.C1065c.class
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p033o0.C1065c.m41823a():boolean");
    }
}
