package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import com.flurry.sdk.C3334je;
import com.flurry.sdk.C3423kp;
import com.flurry.sdk.C3425kq;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.flurry.sdk.kr */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kr.class */
public class C3427kr {

    /* renamed from: b */
    public static final String f5870b = "kr";

    /* renamed from: c */
    public static C3427kr f5871c;

    /* renamed from: g */
    public C3423kp f5876g;

    /* renamed from: h */
    public boolean f5877h;

    /* renamed from: d */
    public final Map<Context, C3423kp> f5873d = new WeakHashMap();

    /* renamed from: e */
    public final C3434ks f5874e = new C3434ks();

    /* renamed from: f */
    public final Object f5875f = new Object();

    /* renamed from: i */
    public AtomicBoolean f5878i = new AtomicBoolean(false);

    /* renamed from: j */
    public AbstractC3344jl<C3436kt> f5879j = new AbstractC3344jl<C3436kt>() { // from class: com.flurry.sdk.kr.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3436kt ktVar) {
            C3427kr.this.m32501g();
        }
    };

    /* renamed from: k */
    public AbstractC3344jl<C3334je> f5880k = new AbstractC3344jl<C3334je>() { // from class: com.flurry.sdk.kr.2
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* synthetic */ void mo32302a(C3334je jeVar) {
            C3334je jeVar2 = jeVar;
            Activity activity = jeVar2.f5689a.get();
            if (activity == null) {
                C3356jq.m32613a(C3427kr.f5870b, "Activity has been destroyed, can't pass ActivityLifecycleEvent to adobject.");
                return;
            }
            int i = C34336.f5888a[jeVar2.f5690b.ordinal()];
            if (i == 1) {
                String str = C3427kr.f5870b;
                C3356jq.m32615a(3, str, "Automatic onStartSession for context:" + jeVar2.f5689a);
                C3427kr.this.m32502f(activity);
            } else if (i == 2) {
                String str2 = C3427kr.f5870b;
                C3356jq.m32615a(3, str2, "Automatic onEndSession for context:" + jeVar2.f5689a);
                C3427kr.this.m32506d(activity);
            } else if (i == 3) {
                String str3 = C3427kr.f5870b;
                C3356jq.m32615a(3, str3, "Automatic onEndSession (destroyed) for context:" + jeVar2.f5689a);
                C3427kr.this.m32506d(activity);
            }
        }
    };

    /* renamed from: a */
    public long f5872a = 0;

    /* renamed from: com.flurry.sdk.kr$6 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kr$6.class */
    public static final /* synthetic */ class C34336 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5888a = new int[C3334je.EnumC3335a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f5888a[C3334je.EnumC3335a.kStarted.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5888a[C3334je.EnumC3335a.kStopped.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5888a[C3334je.EnumC3335a.kDestroyed.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    public C3427kr() {
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.ActivityLifecycleEvent", this.f5880k);
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.FlurrySessionTimerEvent", this.f5879j);
    }

    /* renamed from: a */
    public static C3427kr m32517a() {
        C3427kr krVar;
        synchronized (C3427kr.class) {
            try {
                if (f5871c == null) {
                    f5871c = new C3427kr();
                }
                krVar = f5871c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return krVar;
    }

    /* renamed from: a */
    public static /* synthetic */ void m32513a(C3427kr krVar, C3423kp kpVar) {
        synchronized (krVar.f5875f) {
            if (krVar.f5876g == kpVar) {
                C3423kp kpVar2 = krVar.f5876g;
                C3437ku.m32494a().m32490b("ContinueSessionMillis", kpVar2);
                kpVar2.m32523a(C3423kp.EnumC3424a.f5855a);
                krVar.f5876g = null;
            }
        }
    }

    /* renamed from: a */
    public final void m32516a(Context context) {
        synchronized (this) {
            if (context instanceof Activity) {
                if (C3336jf.m32668a().m32667b()) {
                    String str = f5870b;
                    C3356jq.m32615a(3, str, "bootstrap for context:" + context);
                    m32502f(context);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m32512b() {
        synchronized (this) {
            for (Map.Entry<Context, C3423kp> entry : this.f5873d.entrySet()) {
                C3425kq kqVar = new C3425kq();
                kqVar.f5859a = new WeakReference<>(entry.getKey());
                kqVar.f5860b = entry.getValue();
                kqVar.f5861c = C3425kq.EnumC3426a.f5866d;
                C3294ij.m32755a();
                kqVar.f5862d = C3294ij.m32752d();
                kqVar.m32637b();
            }
            this.f5873d.clear();
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kr.5
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C3427kr.this.m32501g();
                }
            });
        }
    }

    /* renamed from: b */
    public final void m32511b(Context context) {
        synchronized (this) {
            m32504e(context);
        }
    }

    /* renamed from: c */
    public final void m32508c(Context context) {
        synchronized (this) {
            m32498h(context);
        }
    }

    /* renamed from: c */
    public final boolean m32509c() {
        synchronized (this) {
            if (m32505e() != null) {
                return true;
            }
            C3356jq.m32615a(2, f5870b, "Session not found. No active session");
            return false;
        }
    }

    /* renamed from: d */
    public final int m32507d() {
        synchronized (this) {
            if (this.f5878i.get()) {
                return C3423kp.EnumC3424a.f5856b;
            }
            C3423kp e = m32505e();
            if (e == null) {
                C3356jq.m32615a(2, f5870b, "Session not found. No active session");
                return C3423kp.EnumC3424a.f5855a;
            }
            return e.m32521b();
        }
    }

    /* renamed from: d */
    public final void m32506d(Context context) {
        synchronized (this) {
            m32497i(context);
        }
    }

    /* renamed from: e */
    public final C3423kp m32505e() {
        C3423kp kpVar;
        synchronized (this.f5875f) {
            kpVar = this.f5876g;
        }
        return kpVar;
    }

    /* renamed from: e */
    public final void m32504e(Context context) {
        synchronized (this) {
            if (!C3336jf.m32668a().m32667b() || !(context instanceof Activity)) {
                String str = f5870b;
                C3356jq.m32615a(3, str, "Manual onStartSession for context:" + context);
                m32500g(context);
            }
        }
    }

    /* renamed from: f */
    public final void m32502f(Context context) {
        synchronized (this) {
            m32500g(context);
        }
    }

    /* renamed from: g */
    public final void m32501g() {
        synchronized (this) {
            int h = m32499h();
            if (h > 0) {
                String str = f5870b;
                C3356jq.m32615a(5, str, "Session cannot be finalized, sessionContextCount:" + h);
                return;
            }
            final C3423kp e = m32505e();
            if (e == null) {
                C3356jq.m32615a(5, f5870b, "Session cannot be finalized, current session not found");
                return;
            }
            String str2 = f5870b;
            StringBuilder sb = new StringBuilder("Flurry ");
            C3423kp.m32524a();
            sb.append(" session ended");
            C3356jq.m32602e(str2, sb.toString());
            C3425kq kqVar = new C3425kq();
            kqVar.f5860b = e;
            kqVar.f5861c = C3425kq.EnumC3426a.f5867e;
            C3294ij.m32755a();
            kqVar.f5862d = C3294ij.m32752d();
            kqVar.m32637b();
            C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.kr.4
                @Override // com.flurry.sdk.AbstractRunnableC3447lc
                /* renamed from: a */
                public final void mo32300a() {
                    C3427kr.m32513a(C3427kr.this, e);
                    C3427kr.this.f5877h = false;
                }
            });
        }
    }

    /* renamed from: g */
    public final void m32500g(final Context context) {
        boolean z;
        synchronized (this) {
            if (m32505e() != null) {
                m32505e();
                C3423kp.m32524a();
            }
            if (m32505e() != null) {
                m32505e();
                C3423kp.m32524a();
            }
            if (m32505e() != null) {
                m32505e();
                C3423kp.m32524a();
            }
            if (this.f5873d.get(context) == null) {
                this.f5874e.m32496a();
                final C3423kp e = m32505e();
                if (e == null) {
                    e = new C3423kp();
                    e.m32523a(C3423kp.EnumC3424a.f5856b);
                    String str = f5870b;
                    C3356jq.m32602e(str, "Flurry session started for context:" + context);
                    C3425kq kqVar = new C3425kq();
                    kqVar.f5859a = new WeakReference<>(context);
                    kqVar.f5860b = e;
                    kqVar.f5861c = C3425kq.EnumC3426a.f5863a;
                    kqVar.m32637b();
                    z = true;
                } else {
                    z = false;
                }
                this.f5873d.put(context, e);
                synchronized (this.f5875f) {
                    this.f5876g = e;
                }
                this.f5878i.set(false);
                String str2 = f5870b;
                C3356jq.m32602e(str2, "Flurry session resumed for context:" + context);
                C3425kq kqVar2 = new C3425kq();
                kqVar2.f5859a = new WeakReference<>(context);
                kqVar2.f5860b = e;
                kqVar2.f5861c = C3425kq.EnumC3426a.f5865c;
                kqVar2.m32637b();
                if (z) {
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc(this) { // from class: com.flurry.sdk.kr.3
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            e.m32523a(C3423kp.EnumC3424a.f5857c);
                            C3425kq kqVar3 = new C3425kq();
                            kqVar3.f5859a = new WeakReference<>(context);
                            kqVar3.f5860b = e;
                            kqVar3.f5861c = C3425kq.EnumC3426a.f5868f;
                            kqVar3.m32637b();
                        }
                    });
                }
                this.f5872a = 0L;
            } else if (C3336jf.m32668a().m32667b()) {
                String str3 = f5870b;
                C3356jq.m32615a(3, str3, "Session already started with context:" + context);
            } else {
                String str4 = f5870b;
                C3356jq.m32602e(str4, "Session already started with context:" + context);
            }
        }
    }

    /* renamed from: h */
    public final int m32499h() {
        int size;
        synchronized (this) {
            size = this.f5873d.size();
        }
        return size;
    }

    /* renamed from: h */
    public final void m32498h(Context context) {
        synchronized (this) {
            if (!C3336jf.m32668a().m32667b() || !(context instanceof Activity)) {
                if (m32505e() != null) {
                    m32505e();
                    C3423kp.m32524a();
                }
                String str = f5870b;
                C3356jq.m32615a(3, str, "Manual onEndSession for context:" + context);
                m32506d(context);
            }
        }
    }

    /* renamed from: i */
    public final void m32497i(Context context) {
        synchronized (this) {
            C3423kp remove = this.f5873d.remove(context);
            if (remove != null) {
                String str = f5870b;
                C3356jq.m32602e(str, "Flurry session paused for context:" + context);
                C3425kq kqVar = new C3425kq();
                kqVar.f5859a = new WeakReference<>(context);
                kqVar.f5860b = remove;
                C3294ij.m32755a();
                kqVar.f5862d = C3294ij.m32752d();
                kqVar.f5861c = C3425kq.EnumC3426a.f5866d;
                kqVar.m32637b();
                if (m32499h() == 0) {
                    this.f5874e.m32495a(remove.f5850a);
                    this.f5872a = System.currentTimeMillis();
                    return;
                }
                this.f5872a = 0L;
            } else if (C3336jf.m32668a().m32667b()) {
                String str2 = f5870b;
                C3356jq.m32615a(3, str2, "Session cannot be ended, session not found for context:" + context);
            } else {
                String str3 = f5870b;
                C3356jq.m32602e(str3, "Session cannot be ended, session not found for context:" + context);
            }
        }
    }
}
