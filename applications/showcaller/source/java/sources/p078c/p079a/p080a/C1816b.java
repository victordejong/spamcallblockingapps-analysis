package p078c.p079a.p080a;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
/* renamed from: c.a.a.b */
/* loaded from: classes-dex2jar.jar:c/a/a/b.class */
public class C1816b {

    /* renamed from: a */
    private static final String f6741a = "b";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:c/a/a/b$a.class */
    public class RunnableC1817a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f6742d;

        /* renamed from: e */
        final /* synthetic */ Class f6743e;

        /* renamed from: f */
        final /* synthetic */ int f6744f;

        RunnableC1817a(Context context, Class cls, int i) {
            this.f6742d = context;
            this.f6743e = cls;
            this.f6744f = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1815a.m28813c(this.f6742d, "bin", "daemon");
            C1816b.m28810c(this.f6742d, this.f6743e, this.f6744f);
        }
    }

    /* renamed from: b */
    public static void m28811b(Context context, Class<?> cls, int i) {
        new Thread(new RunnableC1817a(context, cls, i)).start();
    }

    /* renamed from: c */
    public static void m28810c(Context context, Class<?> cls, int i) {
        try {
            Runtime.getRuntime().exec((context.getDir("bin", 0).getAbsolutePath() + File.separator + "daemon") + " -p " + context.getPackageName() + " -s " + cls.getName() + " -t " + i).waitFor();
        } catch (IOException | InterruptedException e) {
            Log.e(f6741a, "start daemon error: " + e.getMessage());
        }
    }
}
