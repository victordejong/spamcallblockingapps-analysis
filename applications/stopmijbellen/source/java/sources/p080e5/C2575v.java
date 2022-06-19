package p080e5;

import android.content.Context;
import android.util.Log;
import androidx.appcompat.widget.C0302z;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import p020b5.AbstractC0730a;
import p030c5.AbstractC0842a;
import p070d5.AbstractC2475a;
import p070d5.AbstractC2476b;
import p092f5.C2753b;
import p157l5.AbstractC3500d;
import p157l5.C3499c;
import p241t4.C4392c;
import p283x2.C4854f;
/* renamed from: e5.v */
/* loaded from: classes-dex2jar.jar:e5/v.class */
public class C2575v {

    /* renamed from: a */
    public final Context f8981a;

    /* renamed from: b */
    public final C2538a0 f8982b;

    /* renamed from: c */
    public final long f8983c = System.currentTimeMillis();

    /* renamed from: d */
    public C0302z f8984d;

    /* renamed from: e */
    public C0302z f8985e;

    /* renamed from: f */
    public C2568p f8986f;

    /* renamed from: g */
    public final C2548e0 f8987g;

    /* renamed from: h */
    public final AbstractC2476b f8988h;

    /* renamed from: i */
    public final AbstractC0842a f8989i;

    /* renamed from: j */
    public final ExecutorService f8990j;

    /* renamed from: k */
    public final C2549f f8991k;

    /* renamed from: l */
    public final AbstractC0730a f8992l;

    /* renamed from: e5.v$a */
    /* loaded from: classes-dex2jar.jar:e5/v$a.class */
    public class CallableC2576a implements Callable<Boolean> {
        public CallableC2576a() {
            C2575v.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            Boolean bool;
            try {
                boolean delete = C2575v.this.f8984d.m8402a().delete();
                if (!delete) {
                    Log.w("FirebaseCrashlytics", "Initialization marker file was not properly removed.", null);
                }
                bool = Boolean.valueOf(delete);
            } catch (Exception e) {
                bool = Boolean.FALSE;
            }
            return bool;
        }
    }

    /* renamed from: e5.v$b */
    /* loaded from: classes-dex2jar.jar:e5/v$b.class */
    public static final class C2577b implements C2753b.AbstractC2755b {

        /* renamed from: a */
        public final C4854f f8994a;

        public C2577b(C4854f c4854f) {
            this.f8994a = c4854f;
        }
    }

    public C2575v(C4392c c4392c, C2548e0 c2548e0, AbstractC0730a abstractC0730a, C2538a0 c2538a0, AbstractC2476b abstractC2476b, AbstractC0842a abstractC0842a, ExecutorService executorService) {
        this.f8982b = c2538a0;
        c4392c.m974a();
        this.f8981a = c4392c.f13688a;
        this.f8987g = c2548e0;
        this.f8992l = abstractC0730a;
        this.f8988h = abstractC2476b;
        this.f8989i = abstractC0842a;
        this.f8990j = executorService;
        this.f8991k = new C2549f(executorService);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static Task m3423a(C2575v c2575v, AbstractC3500d abstractC3500d) {
        Task<Void> task;
        c2575v.f8991k.m3440a();
        C0302z c0302z = c2575v.f8984d;
        Objects.requireNonNull(c0302z);
        try {
            c0302z.m8402a().createNewFile();
        } catch (IOException e) {
        }
        Log.isLoggable("FirebaseCrashlytics", 2);
        try {
            try {
                c2575v.f8988h.mo156d(new AbstractC2475a() { // from class: e5.s
                    @Override // p070d5.AbstractC2475a
                    /* renamed from: a */
                    public final void mo3424a(String str) {
                        C2575v c2575v2 = C2575v.this;
                        Objects.requireNonNull(c2575v2);
                        long currentTimeMillis = System.currentTimeMillis();
                        long j = c2575v2.f8983c;
                        C2568p c2568p = c2575v2.f8986f;
                        c2568p.f8957d.m3439b(new CallableC2570q(c2568p, currentTimeMillis - j, str));
                    }
                });
                C3499c c3499c = (C3499c) abstractC3500d;
                if (!c3499c.m2226b().mo1937b().f11925a) {
                    Log.isLoggable("FirebaseCrashlytics", 3);
                    task = Tasks.forException(new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
                } else {
                    if (!c2575v.f8986f.m3428e()) {
                        Log.w("FirebaseCrashlytics", "Previous sessions could not be finalized.", null);
                    }
                    task = c2575v.f8986f.m3425h(c3499c.f11619i.get().getTask());
                }
            } catch (Exception e2) {
                task = Tasks.forException(e2);
            }
            c2575v.m3422b();
            return task;
        } catch (Throwable th) {
            c2575v.m3422b();
            throw th;
        }
    }

    /* renamed from: b */
    public void m3422b() {
        this.f8991k.m3439b(new CallableC2576a());
    }
}
