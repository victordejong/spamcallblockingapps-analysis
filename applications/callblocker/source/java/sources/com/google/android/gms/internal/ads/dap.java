package com.google.android.gms.internal.ads;

import java.io.PrintStream;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dap.class */
public final class dap {

    /* renamed from: a */
    private static final dau f13904a;

    /* renamed from: b */
    private static final int f13905b;

    /* renamed from: com.google.android.gms.internal.ads.dap$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dap$a.class */
    static final class C2951a extends dau {
        C2951a() {
        }

        @Override // com.google.android.gms.internal.ads.dau
        /* renamed from: a */
        public final void mo10252a(Throwable th, PrintWriter printWriter) {
            th.printStackTrace(printWriter);
        }

        @Override // com.google.android.gms.internal.ads.dau
        /* renamed from: a */
        public final void mo10251a(Throwable th, Throwable th2) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [com.google.android.gms.internal.ads.dav] */
    /* JADX WARN: Type inference failed for: r0v33, types: [com.google.android.gms.internal.ads.dax] */
    static {
        Integer num;
        Integer num2 = null;
        try {
            num = m10261a();
            if (num == null || num.intValue() < 19) {
                num2 = !Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ? new dav() : new C2951a();
            } else {
                num2 = new dax();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = C2951a.class.getName();
            printStream.println(new StringBuilder(String.valueOf(name).length() + 133).append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ").append(name).append("will be used. The error is: ").toString());
            th.printStackTrace(System.err);
            num = num2;
            num2 = new C2951a();
        }
        f13904a = num2;
        f13905b = num == null ? 1 : num.intValue();
    }

    /* renamed from: a */
    private static Integer m10261a() {
        Integer num;
        try {
            num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            num = null;
        }
        return num;
    }

    /* renamed from: a */
    public static void m10260a(Throwable th, PrintWriter printWriter) {
        f13904a.mo10252a(th, printWriter);
    }

    /* renamed from: a */
    public static void m10259a(Throwable th, Throwable th2) {
        f13904a.mo10251a(th, th2);
    }
}
