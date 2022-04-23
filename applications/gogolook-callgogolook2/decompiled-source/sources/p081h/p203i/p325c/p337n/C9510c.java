package p081h.p203i.p325c.p337n;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.C9518e;
import p081h.p203i.p325c.p337n.p338d.p341h.C9601m;
import p081h.p203i.p325c.p337n.p338d.p352p.C9807d;
/* renamed from: h.i.c.n.c */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/c.class */
public class C9510c {

    /* renamed from: a */
    public final C9601m f21664a;

    /* renamed from: h.i.c.n.c$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/c$a.class */
    public class CallableC9511a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ C9518e f21665a;

        /* renamed from: b */
        public final /* synthetic */ ExecutorService f21666b;

        /* renamed from: c */
        public final /* synthetic */ C9807d f21667c;

        /* renamed from: d */
        public final /* synthetic */ boolean f21668d;

        /* renamed from: e */
        public final /* synthetic */ C9601m f21669e;

        public CallableC9511a(C9518e eVar, ExecutorService executorService, C9807d dVar, boolean z, C9601m mVar) {
            this.f21665a = eVar;
            this.f21666b = executorService;
            this.f21667c = dVar;
            this.f21668d = z;
            this.f21669e = mVar;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            this.f21665a.m14985a(this.f21666b, this.f21667c);
            if (!this.f21668d) {
                return null;
            }
            this.f21669e.m14748b(this.f21667c);
            return null;
        }
    }

    public C9510c(@NonNull C9601m mVar) {
        this.f21664a = mVar;
    }

    /* renamed from: a */
    public static AbstractC9452a.AbstractC9453a m15021a(@NonNull AbstractC9452a aVar, @NonNull C9508a aVar2) {
        AbstractC9452a.AbstractC9453a a = aVar.mo15121a("clx", aVar2);
        AbstractC9452a.AbstractC9453a aVar3 = a;
        if (a == null) {
            C9513b.m15015a().m15013a("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            AbstractC9452a.AbstractC9453a a2 = aVar.mo15121a("crash", aVar2);
            aVar3 = a2;
            if (a2 != null) {
                C9513b.m15015a().m15007d("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
                aVar3 = a2;
            }
        }
        return aVar3;
    }

    @NonNull
    /* renamed from: a */
    public static C9510c m15023a() {
        C9510c cVar = (C9510c) C9435c.m15163j().m15176a(C9510c.class);
        if (cVar != null) {
            return cVar;
        }
        throw new NullPointerException("FirebaseCrashlytics component is not present.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [h.i.c.n.a] */
    /* JADX WARN: Type inference failed for: r12v4, types: [h.i.c.n.d.f.e] */
    /* JADX WARN: Type inference failed for: r12v5, types: [h.i.c.n.d.f.b, h.i.c.n.d.f.c] */
    /* JADX WARN: Unknown variable types count: 3 */
    @androidx.annotation.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p081h.p203i.p325c.p337n.C9510c m15022a(@androidx.annotation.NonNull p081h.p203i.p325c.C9435c r10, @androidx.annotation.NonNull p081h.p203i.p325c.p367v.AbstractC9941h r11, @androidx.annotation.Nullable p081h.p203i.p325c.p337n.p338d.AbstractC9512a r12, @androidx.annotation.Nullable p081h.p203i.p325c.p331k.p332a.AbstractC9452a r13) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p337n.C9510c.m15022a(h.i.c.c, h.i.c.v.h, h.i.c.n.d.a, h.i.c.k.a.a):h.i.c.n.c");
    }

    /* renamed from: a */
    public void m15020a(@NonNull String str) {
        this.f21664a.m14754a(str);
    }

    /* renamed from: a */
    public void m15019a(@NonNull String str, int i) {
        this.f21664a.m14753a(str, Integer.toString(i));
    }

    /* renamed from: a */
    public void m15018a(@NonNull String str, @NonNull String str2) {
        this.f21664a.m14753a(str, str2);
    }

    /* renamed from: a */
    public void m15017a(@NonNull Throwable th) {
        if (th == null) {
            C9513b.m15015a().m15007d("Crashlytics is ignoring a request to log a null exception.");
        } else {
            this.f21664a.m14751a(th);
        }
    }

    /* renamed from: b */
    public void m15016b(@NonNull String str) {
        this.f21664a.m14747b(str);
    }
}
