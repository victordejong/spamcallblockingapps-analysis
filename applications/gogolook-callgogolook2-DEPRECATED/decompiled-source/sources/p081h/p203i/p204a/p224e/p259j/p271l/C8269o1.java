package p081h.p203i.p204a.p224e.p259j.p271l;

import com.aotter.net.trek.model.Device;
/* renamed from: h.i.a.e.j.l.o1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/o1.class */
public final class C8269o1 {

    /* renamed from: a */
    public static final AbstractC8254n1 f19103a;

    /* renamed from: h.i.a.e.j.l.o1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/o1$a.class */
    public static final class C8270a extends AbstractC8254n1 {
        @Override // p081h.p203i.p204a.p224e.p259j.p271l.AbstractC8254n1
        /* renamed from: a */
        public final void mo18177a(Throwable th, Throwable th2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    static {
        /*
            java.lang.Integer r0 = m18250a()     // Catch: all -> 0x0040
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x001c
            r0 = r5
            int r0 = r0.intValue()     // Catch: all -> 0x003c
            r1 = 19
            if (r0 < r1) goto L_0x001c
            h.i.a.e.j.l.s1 r0 = new h.i.a.e.j.l.s1     // Catch: all -> 0x003c
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: all -> 0x003c
            goto L_0x0090
        L_0x001c:
            java.lang.String r0 = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"
            boolean r0 = java.lang.Boolean.getBoolean(r0)     // Catch: all -> 0x003c
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0031
            h.i.a.e.j.l.r1 r0 = new h.i.a.e.j.l.r1     // Catch: all -> 0x003c
            r1 = r0
            r1.<init>()     // Catch: all -> 0x003c
            r6 = r0
            goto L_0x0090
        L_0x0031:
            h.i.a.e.j.l.o1$a r0 = new h.i.a.e.j.l.o1$a     // Catch: all -> 0x003c
            r1 = r0
            r1.<init>()     // Catch: all -> 0x003c
            r6 = r0
            goto L_0x0090
        L_0x003c:
            r6 = move-exception
            goto L_0x0043
        L_0x0040:
            r6 = move-exception
            r0 = 0
            r5 = r0
        L_0x0043:
            java.io.PrintStream r0 = java.lang.System.err
            r7 = r0
            java.lang.Class<h.i.a.e.j.l.o1$a> r0 = p081h.p203i.p204a.p224e.p259j.p271l.C8269o1.C8270a.class
            java.lang.String r0 = r0.getName()
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r8
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 133(0x85, float:1.86E-43)
            int r2 = r2 + r3
            r1.<init>(r2)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = "will be used. The error is: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r9
            java.lang.String r1 = r1.toString()
            r0.println(r1)
            r0 = r6
            java.io.PrintStream r1 = java.lang.System.err
            r0.printStackTrace(r1)
            h.i.a.e.j.l.o1$a r0 = new h.i.a.e.j.l.o1$a
            r1 = r0
            r1.<init>()
            r6 = r0
        L_0x0090:
            r0 = r6
            p081h.p203i.p204a.p224e.p259j.p271l.C8269o1.f19103a = r0
            r0 = r5
            if (r0 != 0) goto L_0x009b
            goto L_0x00a0
        L_0x009b:
            r0 = r5
            int r0 = r0.intValue()
        L_0x00a0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p259j.p271l.C8269o1.m40264clinit():void");
    }

    /* renamed from: a */
    public static Integer m18250a() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField(Device.DEVICE_ANDROID_KEY).get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }

    /* renamed from: a */
    public static void m18249a(Throwable th, Throwable th2) {
        f19103a.mo18177a(th, th2);
    }
}
