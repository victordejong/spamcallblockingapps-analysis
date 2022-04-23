package p131c.p161d.p282e.p289l.p290d.p293h;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p289l.p290d.AbstractC5191a;
import p131c.p161d.p282e.p289l.p290d.C5192b;
import p131c.p161d.p282e.p289l.p290d.p291f.AbstractC5201a;
import p131c.p161d.p282e.p289l.p290d.p292g.AbstractC5208b;
import p131c.p161d.p282e.p289l.p290d.p297k.C5395b;
import p131c.p161d.p282e.p289l.p290d.p298l.C5405i;
import p131c.p161d.p282e.p289l.p290d.p304p.AbstractC5431d;
import p131c.p161d.p282e.p289l.p290d.p304p.p305h.AbstractC5439e;
import p131c.p161d.p282e.p289l.p290d.p308r.C5452a;
/* renamed from: c.d.e.l.d.h.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/l.class */
public class C5269l {

    /* renamed from: a */
    public final Context f18018a;

    /* renamed from: b */
    public final C5128c f18019b;

    /* renamed from: c */
    public final C5280r f18020c;

    /* renamed from: d */
    public final long f18021d = System.currentTimeMillis();

    /* renamed from: e */
    public C5274m f18022e;

    /* renamed from: f */
    public C5274m f18023f;

    /* renamed from: g */
    public C5235j f18024g;

    /* renamed from: h */
    public final C5286u f18025h;

    /* renamed from: i */
    public final AbstractC5208b f18026i;

    /* renamed from: j */
    public final AbstractC5201a f18027j;

    /* renamed from: k */
    public ExecutorService f18028k;

    /* renamed from: l */
    public C5224h f18029l;

    /* renamed from: m */
    public AbstractC5191a f18030m;

    /* renamed from: c.d.e.l.d.h.l$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/l$a.class */
    public class CallableC5270a implements Callable<Task<Void>> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5431d f18031a;

        public CallableC5270a(AbstractC5431d dVar) {
            this.f18031a = dVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Task<Void> call() throws Exception {
            return C5269l.this.m24117a(this.f18031a);
        }
    }

    /* renamed from: c.d.e.l.d.h.l$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/l$b.class */
    public class RunnableC5271b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5431d f18033a;

        public RunnableC5271b(AbstractC5431d dVar) {
            this.f18033a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C5269l.this.m24117a(this.f18033a);
        }
    }

    /* renamed from: c.d.e.l.d.h.l$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/l$c.class */
    public class CallableC5272c implements Callable<Boolean> {
        public CallableC5272c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            try {
                boolean d = C5269l.this.f18022e.m24103d();
                C5192b a = C5192b.m24319a();
                a.m24317a("Initialization marker file removed: " + d);
                return Boolean.valueOf(d);
            } catch (Exception e) {
                C5192b.m24319a().m24314b("Problem encountered deleting Crashlytics initialization marker.", e);
                return false;
            }
        }
    }

    /* renamed from: c.d.e.l.d.h.l$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/l$d.class */
    public class CallableC5273d implements Callable<Boolean> {
        public CallableC5273d() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            return Boolean.valueOf(C5269l.this.f18024g.m24172c());
        }
    }

    public C5269l(C5128c cVar, C5286u uVar, AbstractC5191a aVar, C5280r rVar, AbstractC5208b bVar, AbstractC5201a aVar2, ExecutorService executorService) {
        this.f18019b = cVar;
        this.f18020c = rVar;
        this.f18018a = cVar.m24468b();
        this.f18025h = uVar;
        this.f18030m = aVar;
        this.f18026i = bVar;
        this.f18027j = aVar2;
        this.f18028k = executorService;
        this.f18029l = new C5224h(executorService);
    }

    /* renamed from: a */
    public static boolean m24115a(String str, boolean z) {
        if (!z) {
            C5192b.m24319a().m24317a("Configured not to require a build ID.");
            return true;
        } else if (!CommonUtils.m7651b(str)) {
            return true;
        } else {
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".     |  | ");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".   \\ |  | /");
            Log.e("FirebaseCrashlytics", ".    \\    /");
            Log.e("FirebaseCrashlytics", ".     \\  /");
            Log.e("FirebaseCrashlytics", ".      \\/");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", "The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
            Log.e("FirebaseCrashlytics", ".");
            Log.e("FirebaseCrashlytics", ".      /\\");
            Log.e("FirebaseCrashlytics", ".     /  \\");
            Log.e("FirebaseCrashlytics", ".    /    \\");
            Log.e("FirebaseCrashlytics", ".   / |  | \\");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".     |  |");
            Log.e("FirebaseCrashlytics", ".");
            return false;
        }
    }

    /* renamed from: e */
    public static String m24107e() {
        return "17.3.0";
    }

    /* renamed from: a */
    public final Task<Void> m24117a(AbstractC5431d dVar) {
        m24109d();
        this.f18024g.m24221a();
        try {
            this.f18026i.mo24278a(C5268k.m24122a(this));
            AbstractC5439e b = dVar.mo23783b();
            if (!b.mo23775a().f18405a) {
                C5192b.m24319a().m24317a("Collection of crash reports disabled in Crashlytics settings.");
                return Tasks.m8592a((Exception) new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
            }
            if (!this.f18024g.m24179b(b.mo23773b().f18406a)) {
                C5192b.m24319a().m24317a("Could not finalize previous sessions.");
            }
            return this.f18024g.m24220a(1.0f, dVar.mo23784a());
        } catch (Exception e) {
            C5192b.m24319a().m24314b("Crashlytics encountered a problem during asynchronous initialization.", e);
            return Tasks.m8592a(e);
        } finally {
            m24111c();
        }
    }

    /* renamed from: a */
    public final void m24120a() {
        try {
            Boolean.TRUE.equals((Boolean) C5229h0.m24231a(this.f18029l.m24234b(new CallableC5273d())));
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void m24116a(String str) {
        this.f18024g.m24216a(System.currentTimeMillis() - this.f18021d, str);
    }

    /* renamed from: b */
    public Task<Void> m24112b(AbstractC5431d dVar) {
        return C5229h0.m24223a(this.f18028k, new CallableC5270a(dVar));
    }

    /* renamed from: b */
    public boolean m24114b() {
        return this.f18022e.m24104c();
    }

    /* renamed from: c */
    public void m24111c() {
        this.f18029l.m24234b(new CallableC5272c());
    }

    /* renamed from: c */
    public final void m24110c(AbstractC5431d dVar) {
        Future<?> submit = this.f18028k.submit(new RunnableC5271b(dVar));
        C5192b.m24319a().m24317a("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            C5192b.m24319a().m24314b("Crashlytics was interrupted during initialization.", e);
        } catch (ExecutionException e2) {
            C5192b.m24319a().m24314b("Problem encountered during Crashlytics initialization.", e2);
        } catch (TimeoutException e3) {
            C5192b.m24319a().m24314b("Crashlytics timed out during initialization.", e3);
        }
    }

    /* renamed from: d */
    public void m24109d() {
        this.f18029l.m24240a();
        this.f18022e.m24106a();
        C5192b.m24319a().m24317a("Initialization marker file created.");
    }

    /* renamed from: d */
    public boolean m24108d(AbstractC5431d dVar) {
        String e = CommonUtils.m7646e(this.f18018a);
        C5192b a = C5192b.m24319a();
        a.m24317a("Mapping file ID is: " + e);
        if (m24115a(e, CommonUtils.m7667a(this.f18018a, "com.crashlytics.RequireBuildId", true))) {
            String b = this.f18019b.m24464d().m24445b();
            try {
                C5192b a2 = C5192b.m24319a();
                a2.m24313c("Initializing Crashlytics " + m24107e());
                C5405i iVar = new C5405i(this.f18018a);
                this.f18023f = new C5274m("crash_marker", iVar);
                this.f18022e = new C5274m("initialization_marker", iVar);
                C5395b bVar = new C5395b();
                C5212b a3 = C5212b.m24272a(this.f18018a, this.f18025h, b, e, new C5452a(this.f18018a));
                C5192b a4 = C5192b.m24319a();
                a4.m24317a("Installer package name is: " + a3.f17890c);
                this.f18024g = new C5235j(this.f18018a, this.f18029l, bVar, this.f18025h, this.f18020c, iVar, this.f18023f, a3, null, null, this.f18030m, this.f18027j, dVar);
                boolean b2 = m24114b();
                m24120a();
                this.f18024g.m24186a(Thread.getDefaultUncaughtExceptionHandler(), dVar);
                if (!b2 || !CommonUtils.m7653b(this.f18018a)) {
                    C5192b.m24319a().m24317a("Exception handling initialization successful");
                    return true;
                }
                C5192b.m24319a().m24317a("Crashlytics did not finish previous background initialization. Initializing synchronously.");
                m24110c(dVar);
                return false;
            } catch (Exception e2) {
                C5192b.m24319a().m24314b("Crashlytics was not started due to an exception during initialization", e2);
                this.f18024g = null;
                return false;
            }
        } else {
            throw new IllegalStateException("The Crashlytics build ID is missing. This occurs when Crashlytics tooling is absent from your app's build configuration. Please review Crashlytics onboarding instructions and ensure you have a valid Crashlytics account.");
        }
    }
}
