package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
/* renamed from: com.google.android.gms.internal.measurement.cf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cf.class */
public final class C3844cf {

    /* renamed from: a */
    private static final AbstractC3843ce f17924a;

    /* renamed from: b */
    private static final int f17925b;

    /* renamed from: com.google.android.gms.internal.measurement.cf$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/cf$a.class */
    static final class C3845a extends AbstractC3843ce {
        C3845a() {
        }

        @Override // com.google.android.gms.internal.measurement.AbstractC3843ce
        /* renamed from: a */
        public final void mo5841a(Throwable th, Throwable th2) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [com.google.android.gms.internal.measurement.ci] */
    /* JADX WARN: Type inference failed for: r0v33, types: [com.google.android.gms.internal.measurement.cj] */
    static {
        Integer num;
        Integer num2 = null;
        try {
            num = m5844a();
            if (num == null || num.intValue() < 19) {
                num2 = !Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ? new C3848ci() : new C3845a();
            } else {
                num2 = new C3849cj();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = C3845a.class.getName();
            printStream.println(new StringBuilder(String.valueOf(name).length() + 133).append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ").append(name).append("will be used. The error is: ").toString());
            th.printStackTrace(System.err);
            num = num2;
            num2 = new C3845a();
        }
        f17924a = num2;
        f17925b = num == null ? 1 : num.intValue();
    }

    /* renamed from: a */
    private static Integer m5844a() {
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
    public static void m5843a(Throwable th, Throwable th2) {
        f17924a.mo5841a(th, th2);
    }
}
