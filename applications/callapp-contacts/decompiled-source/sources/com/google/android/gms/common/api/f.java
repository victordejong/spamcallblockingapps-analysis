package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.internal.af;
import com.google.android.gms.common.api.internal.aj;
import com.google.android.gms.common.api.internal.ar;
import com.google.android.gms.common.api.internal.b;
import com.google.android.gms.common.api.internal.bp;
import com.google.android.gms.common.api.internal.d;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.internal.k;
import com.google.android.gms.common.api.internal.q;
import com.google.android.gms.common.api.internal.s;
import com.google.android.gms.common.api.internal.u;
import com.google.android.gms.common.api.internal.w;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.util.n;
import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.i;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/f.class */
public abstract class f<O extends a.d> implements h<O> {

    /* renamed from: a  reason: collision with root package name */
    public final Context f22613a;

    /* renamed from: b  reason: collision with root package name */
    public final O f22614b;

    /* renamed from: c  reason: collision with root package name */
    public final b<O> f22615c;

    /* renamed from: d  reason: collision with root package name */
    public final Looper f22616d;
    public final int e;
    @NotOnlyInitialized
    public final g f;
    protected final com.google.android.gms.common.api.internal.f g;
    private final String h;
    private final com.google.android.gms.common.api.a<O> i;
    private final q j;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/f$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f22617a = new C0455a().a();

        /* renamed from: b  reason: collision with root package name */
        public final q f22618b;

        /* renamed from: c  reason: collision with root package name */
        public final Looper f22619c;

        /* renamed from: com.google.android.gms.common.api.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/f$a$a.class */
        public static final class C0455a {

            /* renamed from: a  reason: collision with root package name */
            private q f22620a;

            /* renamed from: b  reason: collision with root package name */
            private Looper f22621b;

            public final C0455a a(Looper looper) {
                o.a(looper, "Looper must not be null.");
                this.f22621b = looper;
                return this;
            }

            public final C0455a a(q qVar) {
                o.a(qVar, "StatusExceptionMapper must not be null.");
                this.f22620a = qVar;
                return this;
            }

            public final a a() {
                if (this.f22620a == null) {
                    this.f22620a = new com.google.android.gms.common.api.internal.a();
                }
                if (this.f22621b == null) {
                    this.f22621b = Looper.getMainLooper();
                }
                return new a(this.f22620a, this.f22621b);
            }
        }

        private a(q qVar, Account account, Looper looper) {
            this.f22618b = qVar;
            this.f22619c = looper;
        }
    }

    public f(Activity activity, com.google.android.gms.common.api.a<O> aVar, O o, a aVar2) {
        o.a(activity, "Null activity is not permitted.");
        o.a(aVar, "Api must not be null.");
        o.a(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = activity.getApplicationContext();
        this.f22613a = applicationContext;
        String a2 = a(activity);
        this.h = a2;
        this.i = aVar;
        this.f22614b = o;
        this.f22616d = aVar2.f22619c;
        b<O> a3 = b.a(aVar, o, a2);
        this.f22615c = a3;
        this.f = new aj(this);
        com.google.android.gms.common.api.internal.f a4 = com.google.android.gms.common.api.internal.f.a(applicationContext);
        this.g = a4;
        this.e = a4.f22736c.getAndIncrement();
        this.j = aVar2.f22618b;
        if (!(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            w.a(activity, a4, (b<?>) a3);
        }
        a4.a((f<?>) this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(android.app.Activity r7, com.google.android.gms.common.api.a<O> r8, O r9, com.google.android.gms.common.api.internal.q r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.f$a$a r0 = new com.google.android.gms.common.api.f$a$a
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.f$a$a r0 = r0.a(r1)
            r0 = r11
            r1 = r7
            android.os.Looper r1 = r1.getMainLooper()
            com.google.android.gms.common.api.f$a$a r0 = r0.a(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.f$a r4 = r4.a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.f.<init>(android.app.Activity, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.q):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(android.content.Context r7, com.google.android.gms.common.api.a<O> r8, O r9, android.os.Looper r10, com.google.android.gms.common.api.internal.q r11) {
        /*
            r6 = this;
            com.google.android.gms.common.api.f$a$a r0 = new com.google.android.gms.common.api.f$a$a
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            r1 = r10
            com.google.android.gms.common.api.f$a$a r0 = r0.a(r1)
            r0 = r12
            r1 = r11
            com.google.android.gms.common.api.f$a$a r0 = r0.a(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r12
            com.google.android.gms.common.api.f$a r4 = r4.a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.f.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, android.os.Looper, com.google.android.gms.common.api.internal.q):void");
    }

    public f(Context context, com.google.android.gms.common.api.a<O> aVar, O o, a aVar2) {
        o.a(context, "Null context is not permitted.");
        o.a(aVar, "Api must not be null.");
        o.a(aVar2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        this.f22613a = applicationContext;
        String a2 = a(context);
        this.h = a2;
        this.i = aVar;
        this.f22614b = o;
        this.f22616d = aVar2.f22619c;
        this.f22615c = b.a(aVar, o, a2);
        this.f = new aj(this);
        com.google.android.gms.common.api.internal.f a3 = com.google.android.gms.common.api.internal.f.a(applicationContext);
        this.g = a3;
        this.e = a3.f22736c.getAndIncrement();
        this.j = aVar2.f22618b;
        a3.a((f<?>) this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public f(android.content.Context r7, com.google.android.gms.common.api.a<O> r8, O r9, com.google.android.gms.common.api.internal.q r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.f$a$a r0 = new com.google.android.gms.common.api.f$a$a
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.f$a$a r0 = r0.a(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.f$a r4 = r4.a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.f.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.q):void");
    }

    private final <A extends a.b, T extends d.a<? extends m, A>> T a(int i, T t) {
        t.a();
        this.g.a(this, i, (d.a<? extends m, a.b>) t);
        return t;
    }

    private final <TResult, A extends a.b> h<TResult> a(int i, s<A, TResult> sVar) {
        i iVar = new i();
        this.g.a(this, i, sVar, iVar, this.j);
        return iVar.f30014a;
    }

    private static String a(Object obj) {
        if (!n.l()) {
            return null;
        }
        try {
            return (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(obj, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return null;
        }
    }

    public final a.f a(Looper looper, af<O> afVar) {
        a.f a2 = ((a.AbstractC0453a) o.a(this.i.f22610a)).a(this.f22613a, looper, g().a(), (e) this.f22614b, (g.a) afVar, (g.b) afVar);
        String str = this.h;
        if (str != null && (a2 instanceof com.google.android.gms.common.internal.d)) {
            ((com.google.android.gms.common.internal.d) a2).setAttributionTag(str);
        }
        if (str != null && (a2 instanceof k)) {
            ((k) a2).f22748d = str;
        }
        return a2;
    }

    public final <A extends a.b, T extends d.a<? extends m, A>> T a(T t) {
        a(0, (int) t);
        return t;
    }

    public final h<Boolean> a(i.a<?> aVar) {
        o.a(aVar, "Listener key cannot be null.");
        com.google.android.gms.common.api.internal.f fVar = this.g;
        com.google.android.gms.tasks.i iVar = new com.google.android.gms.tasks.i();
        fVar.a(iVar, 0, this);
        bp bpVar = new bp(aVar, iVar);
        Handler handler = fVar.g;
        handler.sendMessage(handler.obtainMessage(13, new ar(bpVar, fVar.f22737d.get(), this)));
        return iVar.f30014a;
    }

    @Deprecated
    public final <A extends a.b, T extends com.google.android.gms.common.api.internal.n<A, ?>, U extends u<A, ?>> h<Void> a(T t, U u) {
        o.a(t);
        o.a(u);
        o.a(t.f22750a.f22740b, "Listener has already been released.");
        o.a(u.f22768a, "Listener has already been released.");
        o.b(m.a(t.f22750a.f22740b, u.f22768a), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.g.a(this, t, u, s.f22782a);
    }

    public final <A extends a.b> h<Void> a(com.google.android.gms.common.api.internal.o<A, ?> oVar) {
        o.a(oVar);
        o.a(oVar.f22754a.f22750a.f22740b, "Listener has already been released.");
        o.a(oVar.f22755b.f22768a, "Listener has already been released.");
        return this.g.a(this, oVar.f22754a, oVar.f22755b, oVar.f22756c);
    }

    public final <TResult, A extends a.b> h<TResult> a(s<A, TResult> sVar) {
        return a(0, sVar);
    }

    public final <A extends a.b, T extends d.a<? extends m, A>> T b(T t) {
        a(1, (int) t);
        return t;
    }

    public final <TResult, A extends a.b> h<TResult> b(s<A, TResult> sVar) {
        return a(2, sVar);
    }

    @Override // com.google.android.gms.common.api.h
    public final b<O> e() {
        return this.f22615c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String f() {
        return this.h;
    }

    public e.a g() {
        Account account;
        Set<Scope> set;
        GoogleSignInAccount a2;
        e.a aVar = new e.a();
        O o = this.f22614b;
        if (!(o instanceof a.d.b) || (a2 = ((a.d.b) o).a()) == null) {
            O o2 = this.f22614b;
            account = o2 instanceof a.d.AbstractC0454a ? ((a.d.AbstractC0454a) o2).a() : null;
        } else {
            account = a2.getAccount();
        }
        aVar.f22885a = account;
        O o3 = this.f22614b;
        if (o3 instanceof a.d.b) {
            GoogleSignInAccount a3 = ((a.d.b) o3).a();
            set = a3 == null ? Collections.emptySet() : a3.getRequestedScopes();
        } else {
            set = Collections.emptySet();
        }
        if (aVar.f22886b == null) {
            aVar.f22886b = new androidx.b.b<>();
        }
        aVar.f22886b.addAll(set);
        aVar.f22888d = this.f22613a.getClass().getName();
        aVar.f22887c = this.f22613a.getPackageName();
        return aVar;
    }
}
