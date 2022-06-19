package p078c.p084c.p085a.p086a.p088b.p092d;

import java.io.PrintStream;
/* renamed from: c.c.a.a.b.d.o */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/d/o.class */
public final class C1869o {

    /* renamed from: a */
    static final AbstractC1863i f6770a;

    static {
        C1868n c1868n;
        Integer num = null;
        Integer num2 = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e.printStackTrace(System.err);
            }
            if (num != null && num.intValue() >= 19) {
                Integer num3 = num;
                Integer num4 = num;
                num2 = num;
                c1868n = new C1868n();
            } else if (!Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic")) {
                Integer num5 = num;
                num2 = num;
                c1868n = new C1866l();
            } else {
                num2 = num;
                c1868n = new C1867m();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = C1867m.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            c1868n = new C1867m();
        }
        f6770a = c1868n;
        if (num2 == null) {
            return;
        }
        num2.intValue();
    }

    /* renamed from: a */
    public static void m28781a(Throwable th, Throwable th2) {
        f6770a.mo28782a(th, th2);
    }
}
