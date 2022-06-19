package p092f5;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import java.io.File;
import java.util.Objects;
import p080e5.C2546e;
import p080e5.C2575v;
/* renamed from: f5.b */
/* loaded from: classes-dex2jar.jar:f5/b.class */
public class C2753b {

    /* renamed from: d */
    public static final C2756c f9437d = new C2756c(null);

    /* renamed from: a */
    public final Context f9438a;

    /* renamed from: b */
    public final AbstractC2755b f9439b;

    /* renamed from: c */
    public AbstractC2752a f9440c = f9437d;

    /* renamed from: f5.b$b */
    /* loaded from: classes-dex2jar.jar:f5/b$b.class */
    public interface AbstractC2755b {
    }

    /* renamed from: f5.b$c */
    /* loaded from: classes-dex2jar.jar:f5/b$c.class */
    public static final class C2756c implements AbstractC2752a {
        public C2756c(C2754a c2754a) {
        }

        @Override // p092f5.AbstractC2752a
        /* renamed from: a */
        public void mo3152a() {
        }

        @Override // p092f5.AbstractC2752a
        /* renamed from: b */
        public String mo3151b() {
            return null;
        }

        @Override // p092f5.AbstractC2752a
        /* renamed from: c */
        public void mo3150c(long j, String str) {
        }
    }

    public C2753b(Context context, AbstractC2755b abstractC2755b) {
        this.f9438a = context;
        this.f9439b = abstractC2755b;
        m3167a(null);
    }

    /* renamed from: a */
    public final void m3167a(String str) {
        this.f9440c.mo3152a();
        this.f9440c = f9437d;
        if (str == null) {
            return;
        }
        if (!C2546e.m3455c(this.f9438a, "com.crashlytics.CollectCustomLogs", true)) {
            Log.isLoggable("FirebaseCrashlytics", 3);
            return;
        }
        String m8755g = C0082b.m8755g("crashlytics-userlog-", str, ".temp");
        C2575v.C2577b c2577b = (C2575v.C2577b) this.f9439b;
        Objects.requireNonNull(c2577b);
        File file = new File(c2577b.f8994a.m355h(), "log-files");
        if (!file.exists()) {
            file.mkdirs();
        }
        this.f9440c = new C2761d(new File(file, m8755g), 65536);
    }
}
