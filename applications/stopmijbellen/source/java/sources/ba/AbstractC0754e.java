package ba;

import java.io.PrintStream;
import java.util.logging.Level;
/* renamed from: ba.e */
/* loaded from: classes2-dex2jar.jar:ba/e.class */
public interface AbstractC0754e {

    /* renamed from: ba.e$a */
    /* loaded from: classes2-dex2jar.jar:ba/e$a.class */
    public static class C0755a implements AbstractC0754e {
        @Override // ba.AbstractC0754e
        /* renamed from: a */
        public void mo7244a(Level level, String str) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
        }

        @Override // ba.AbstractC0754e
        /* renamed from: b */
        public void mo7243b(Level level, String str, Throwable th) {
            PrintStream printStream = System.out;
            printStream.println("[" + level + "] " + str);
            th.printStackTrace(System.out);
        }
    }

    /* renamed from: a */
    void mo7244a(Level level, String str);

    /* renamed from: b */
    void mo7243b(Level level, String str, Throwable th);
}
