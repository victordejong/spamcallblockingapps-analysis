package p081h.p203i.p325c.p364t;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
import p081h.p203i.p204a.p224e.p293r.AbstractC9128a;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9148k;
/* renamed from: h.i.c.t.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/f.class */
public class C9874f implements AbstractC9864a {

    /* renamed from: c */
    public static final Object f22359c = new Object();
    @GuardedBy("lock")

    /* renamed from: d */
    public static ServiceConnectionC9924x0 f22360d;

    /* renamed from: a */
    public final Context f22361a;

    /* renamed from: b */
    public final ExecutorService f22362b;

    public C9874f(Context context, ExecutorService executorService) {
        this.f22361a = context;
        this.f22362b = executorService;
    }

    /* renamed from: a */
    public static final /* synthetic */ AbstractC9143h m14056a(Context context, Intent intent, AbstractC9143h hVar) throws Exception {
        return (!C7083o.m21122j() || ((Integer) hVar.mo16014b()).intValue() != 402) ? hVar : m14053b(context, intent).mo16020a(C9878h.m14050a(), C9872e.f22353a);
    }

    /* renamed from: a */
    public static ServiceConnectionC9924x0 m14055a(Context context, String str) {
        ServiceConnectionC9924x0 x0Var;
        synchronized (f22359c) {
            if (f22360d == null) {
                f22360d = new ServiceConnectionC9924x0(context, str);
            }
            x0Var = f22360d;
        }
        return x0Var;
    }

    /* renamed from: a */
    public static final /* synthetic */ Integer m14054a(AbstractC9143h hVar) throws Exception {
        return -1;
    }

    /* renamed from: b */
    public static AbstractC9143h<Integer> m14053b(Context context, Intent intent) {
        Log.isLoggable("FirebaseInstanceId", 3);
        return m14055a(context, "com.google.firebase.MESSAGING_EVENT").m13938a(intent).mo16020a(C9878h.m14050a(), C9870d.f22350a);
    }

    /* renamed from: b */
    public static final /* synthetic */ Integer m14052b(AbstractC9143h hVar) throws Exception {
        return 403;
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public AbstractC9143h<Integer> m14057a(final Context context, final Intent intent) {
        boolean z = true;
        boolean z2 = C7083o.m21122j() && context.getApplicationInfo().targetSdkVersion >= 26;
        if ((intent.getFlags() & 268435456) == 0) {
            z = false;
        }
        return (!z2 || z) ? C9148k.m15997a(this.f22362b, new Callable(context, intent) { // from class: h.i.c.t.b

            /* renamed from: a */
            public final Context f22344a;

            /* renamed from: b */
            public final Intent f22345b;

            {
                this.f22344a = context;
                this.f22345b = intent;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer valueOf;
                valueOf = Integer.valueOf(C9897p0.m14022b().m14019c(this.f22344a, this.f22345b));
                return valueOf;
            }
        }).mo16012b(this.f22362b, new AbstractC9128a(context, intent) { // from class: h.i.c.t.c

            /* renamed from: a */
            public final Context f22347a;

            /* renamed from: b */
            public final Intent f22348b;

            {
                this.f22347a = context;
                this.f22348b = intent;
            }

            @Override // p081h.p203i.p204a.p224e.p293r.AbstractC9128a
            /* renamed from: a */
            public final Object mo14017a(AbstractC9143h hVar) {
                return C9874f.m14056a(this.f22347a, this.f22348b, hVar);
            }
        }) : m14053b(context, intent);
    }

    @Override // p081h.p203i.p325c.p364t.AbstractC9864a
    /* renamed from: a */
    public AbstractC9143h<Integer> mo13974a(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return m14057a(this.f22361a, intent);
    }
}
