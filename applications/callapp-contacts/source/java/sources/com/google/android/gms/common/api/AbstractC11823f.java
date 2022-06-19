package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.p023b.C0430b;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.C11808a.AbstractC11812d;
import com.google.android.gms.common.api.internal.AbstractC11906n;
import com.google.android.gms.common.api.internal.AbstractC11910q;
import com.google.android.gms.common.api.internal.AbstractC11912s;
import com.google.android.gms.common.api.internal.AbstractC11915u;
import com.google.android.gms.common.api.internal.C11832a;
import com.google.android.gms.common.api.internal.C11838af;
import com.google.android.gms.common.api.internal.C11842aj;
import com.google.android.gms.common.api.internal.C11850ar;
import com.google.android.gms.common.api.internal.C11859b;
import com.google.android.gms.common.api.internal.C11875bp;
import com.google.android.gms.common.api.internal.C11892d;
import com.google.android.gms.common.api.internal.C11896f;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.api.internal.C11907o;
import com.google.android.gms.common.api.internal.C11917w;
import com.google.android.gms.common.api.internal.ServiceConnectionC11903k;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.common.internal.C12041m;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.util.C12110n;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14186i;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
/* renamed from: com.google.android.gms.common.api.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/f.class */
public abstract class AbstractC11823f<O extends C11808a.AbstractC11812d> implements AbstractC11829h<O> {

    /* renamed from: a */
    public final Context f39179a;

    /* renamed from: b */
    public final O f39180b;

    /* renamed from: c */
    public final C11859b<O> f39181c;

    /* renamed from: d */
    public final Looper f39182d;

    /* renamed from: e */
    public final int f39183e;
    @NotOnlyInitialized

    /* renamed from: f */
    public final AbstractC11826g f39184f;

    /* renamed from: g */
    protected final C11896f f39185g;

    /* renamed from: h */
    private final String f39186h;

    /* renamed from: i */
    private final C11808a<O> f39187i;

    /* renamed from: j */
    private final AbstractC11910q f39188j;

    /* renamed from: com.google.android.gms.common.api.f$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/f$a.class */
    public static final class C11824a {

        /* renamed from: a */
        public static final C11824a f39189a = new C11825a().m19448a();

        /* renamed from: b */
        public final AbstractC11910q f39190b;

        /* renamed from: c */
        public final Looper f39191c;

        /* renamed from: com.google.android.gms.common.api.f$a$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/f$a$a.class */
        public static final class C11825a {

            /* renamed from: a */
            private AbstractC11910q f39192a;

            /* renamed from: b */
            private Looper f39193b;

            /* renamed from: a */
            public final C11825a m19447a(Looper looper) {
                C12045o.m19161a(looper, "Looper must not be null.");
                this.f39193b = looper;
                return this;
            }

            /* renamed from: a */
            public final C11825a m19446a(AbstractC11910q abstractC11910q) {
                C12045o.m19161a(abstractC11910q, "StatusExceptionMapper must not be null.");
                this.f39192a = abstractC11910q;
                return this;
            }

            /* renamed from: a */
            public final C11824a m19448a() {
                if (this.f39192a == null) {
                    this.f39192a = new C11832a();
                }
                if (this.f39193b == null) {
                    this.f39193b = Looper.getMainLooper();
                }
                return new C11824a(this.f39192a, this.f39193b);
            }
        }

        private C11824a(AbstractC11910q abstractC11910q, Account account, Looper looper) {
            this.f39190b = abstractC11910q;
            this.f39191c = looper;
        }
    }

    public AbstractC11823f(Activity activity, C11808a<O> c11808a, O o, C11824a c11824a) {
        C12045o.m19161a(activity, "Null activity is not permitted.");
        C12045o.m19161a(c11808a, "Api must not be null.");
        C12045o.m19161a(c11824a, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = activity.getApplicationContext();
        this.f39179a = applicationContext;
        String m19453a = m19453a(activity);
        this.f39186h = m19453a;
        this.f39187i = c11808a;
        this.f39180b = o;
        this.f39182d = c11824a.f39191c;
        C11859b<O> m19397a = C11859b.m19397a(c11808a, o, m19453a);
        this.f39181c = m19397a;
        this.f39184f = new C11842aj(this);
        C11896f m19355a = C11896f.m19355a(applicationContext);
        this.f39185g = m19355a;
        this.f39183e = m19355a.f39347c.getAndIncrement();
        this.f39188j = c11824a.f39190b;
        if (!(activity instanceof GoogleApiActivity) && Looper.myLooper() == Looper.getMainLooper()) {
            C11917w.m19308a(activity, m19355a, (C11859b<?>) m19397a);
        }
        m19355a.m19353a((AbstractC11823f<?>) this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC11823f(android.app.Activity r7, com.google.android.gms.common.api.C11808a<O> r8, O r9, com.google.android.gms.common.api.internal.AbstractC11910q r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.f$a$a r0 = new com.google.android.gms.common.api.f$a$a
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.f$a$a r0 = r0.m19446a(r1)
            r0 = r11
            r1 = r7
            android.os.Looper r1 = r1.getMainLooper()
            com.google.android.gms.common.api.f$a$a r0 = r0.m19447a(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.f$a r4 = r4.m19448a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.AbstractC11823f.<init>(android.app.Activity, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.q):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC11823f(android.content.Context r7, com.google.android.gms.common.api.C11808a<O> r8, O r9, android.os.Looper r10, com.google.android.gms.common.api.internal.AbstractC11910q r11) {
        /*
            r6 = this;
            com.google.android.gms.common.api.f$a$a r0 = new com.google.android.gms.common.api.f$a$a
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r12
            r1 = r10
            com.google.android.gms.common.api.f$a$a r0 = r0.m19447a(r1)
            r0 = r12
            r1 = r11
            com.google.android.gms.common.api.f$a$a r0 = r0.m19446a(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r12
            com.google.android.gms.common.api.f$a r4 = r4.m19448a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.AbstractC11823f.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, android.os.Looper, com.google.android.gms.common.api.internal.q):void");
    }

    public AbstractC11823f(Context context, C11808a<O> c11808a, O o, C11824a c11824a) {
        C12045o.m19161a(context, "Null context is not permitted.");
        C12045o.m19161a(c11808a, "Api must not be null.");
        C12045o.m19161a(c11824a, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        Context applicationContext = context.getApplicationContext();
        this.f39179a = applicationContext;
        String m19453a = m19453a(context);
        this.f39186h = m19453a;
        this.f39187i = c11808a;
        this.f39180b = o;
        this.f39182d = c11824a.f39191c;
        this.f39181c = C11859b.m19397a(c11808a, o, m19453a);
        this.f39184f = new C11842aj(this);
        C11896f m19355a = C11896f.m19355a(applicationContext);
        this.f39185g = m19355a;
        this.f39183e = m19355a.f39347c.getAndIncrement();
        this.f39188j = c11824a.f39190b;
        m19355a.m19353a((AbstractC11823f<?>) this);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC11823f(android.content.Context r7, com.google.android.gms.common.api.C11808a<O> r8, O r9, com.google.android.gms.common.api.internal.AbstractC11910q r10) {
        /*
            r6 = this;
            com.google.android.gms.common.api.f$a$a r0 = new com.google.android.gms.common.api.f$a$a
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r11
            r1 = r10
            com.google.android.gms.common.api.f$a$a r0 = r0.m19446a(r1)
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            r4 = r11
            com.google.android.gms.common.api.f$a r4 = r4.m19448a()
            r0.<init>(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.AbstractC11823f.<init>(android.content.Context, com.google.android.gms.common.api.a, com.google.android.gms.common.api.a$d, com.google.android.gms.common.api.internal.q):void");
    }

    /* renamed from: a */
    private final <A extends C11808a.AbstractC11810b, T extends C11892d.AbstractC11893a<? extends AbstractC11925m, A>> T m19461a(int i, T t) {
        t.m19440a();
        this.f39185g.m19352a(this, i, (C11892d.AbstractC11893a<? extends AbstractC11925m, C11808a.AbstractC11810b>) t);
        return t;
    }

    /* renamed from: a */
    private final <TResult, A extends C11808a.AbstractC11810b> AbstractC14185h<TResult> m19460a(int i, AbstractC11912s<A, TResult> abstractC11912s) {
        C14186i c14186i = new C14186i();
        this.f39185g.m19351a(this, i, abstractC11912s, c14186i, this.f39188j);
        return c14186i.f52142a;
    }

    /* renamed from: a */
    private static String m19453a(Object obj) {
        if (C12110n.m19010l()) {
            try {
                return (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(obj, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public final C11808a.AbstractC11817f m19459a(Looper looper, C11838af<O> c11838af) {
        C11808a.AbstractC11817f mo11341a = ((C11808a.AbstractC11809a) C12045o.m19162a(this.f39187i.f39175a)).mo11341a(this.f39179a, looper, m19449g().m19186a(), (C12031e) this.f39180b, (AbstractC11826g.AbstractC11827a) c11838af, (AbstractC11826g.AbstractC11828b) c11838af);
        String str = this.f39186h;
        if (str != null && (mo11341a instanceof AbstractC12025d)) {
            ((AbstractC12025d) mo11341a).setAttributionTag(str);
        }
        if (str != null && (mo11341a instanceof ServiceConnectionC11903k)) {
            ((ServiceConnectionC11903k) mo11341a).f39375d = str;
        }
        return mo11341a;
    }

    /* renamed from: a */
    public final <A extends C11808a.AbstractC11810b, T extends C11892d.AbstractC11893a<? extends AbstractC11925m, A>> T m19458a(T t) {
        m19461a(0, (int) t);
        return t;
    }

    /* renamed from: a */
    public final AbstractC14185h<Boolean> m19457a(C11899i.C11900a<?> c11900a) {
        C12045o.m19161a(c11900a, "Listener key cannot be null.");
        C11896f c11896f = this.f39185g;
        C14186i c14186i = new C14186i();
        c11896f.m19345a(c14186i, 0, this);
        C11875bp c11875bp = new C11875bp(c11900a, c14186i);
        Handler handler = c11896f.f39351g;
        handler.sendMessage(handler.obtainMessage(13, new C11850ar(c11875bp, c11896f.f39348d.get(), this)));
        return c14186i.f52142a;
    }

    @Deprecated
    /* renamed from: a */
    public final <A extends C11808a.AbstractC11810b, T extends AbstractC11906n<A, ?>, U extends AbstractC11915u<A, ?>> AbstractC14185h<Void> m19456a(T t, U u) {
        C12045o.m19162a(t);
        C12045o.m19162a(u);
        C12045o.m19161a(t.f39384a.f39366b, "Listener has already been released.");
        C12045o.m19161a(u.f39405a, "Listener has already been released.");
        C12045o.m19153b(C12041m.m19168a(t.f39384a.f39366b, u.f39405a), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.f39185g.m19350a(this, t, u, RunnableC11931s.f39420a);
    }

    /* renamed from: a */
    public final <A extends C11808a.AbstractC11810b> AbstractC14185h<Void> m19455a(C11907o<A, ?> c11907o) {
        C12045o.m19162a(c11907o);
        C12045o.m19161a(c11907o.f39388a.f39384a.f39366b, "Listener has already been released.");
        C12045o.m19161a(c11907o.f39389b.f39405a, "Listener has already been released.");
        return this.f39185g.m19350a(this, c11907o.f39388a, c11907o.f39389b, c11907o.f39390c);
    }

    /* renamed from: a */
    public final <TResult, A extends C11808a.AbstractC11810b> AbstractC14185h<TResult> m19454a(AbstractC11912s<A, TResult> abstractC11912s) {
        return m19460a(0, abstractC11912s);
    }

    /* renamed from: b */
    public final <A extends C11808a.AbstractC11810b, T extends C11892d.AbstractC11893a<? extends AbstractC11925m, A>> T m19452b(T t) {
        m19461a(1, (int) t);
        return t;
    }

    /* renamed from: b */
    public final <TResult, A extends C11808a.AbstractC11810b> AbstractC14185h<TResult> m19451b(AbstractC11912s<A, TResult> abstractC11912s) {
        return m19460a(2, abstractC11912s);
    }

    @Override // com.google.android.gms.common.api.AbstractC11829h
    /* renamed from: e */
    public final C11859b<O> mo19441e() {
        return this.f39181c;
    }

    /* renamed from: f */
    public final String m19450f() {
        return this.f39186h;
    }

    /* renamed from: g */
    public C12031e.C12032a m19449g() {
        Account account;
        Set set;
        GoogleSignInAccount m19463a;
        C12031e.C12032a c12032a = new C12031e.C12032a();
        O o = this.f39180b;
        if (!(o instanceof C11808a.AbstractC11812d.AbstractC11814b) || (m19463a = ((C11808a.AbstractC11812d.AbstractC11814b) o).m19463a()) == null) {
            O o2 = this.f39180b;
            account = o2 instanceof C11808a.AbstractC11812d.AbstractC11813a ? ((C11808a.AbstractC11812d.AbstractC11813a) o2).m19464a() : null;
        } else {
            account = m19463a.getAccount();
        }
        c12032a.f39550a = account;
        O o3 = this.f39180b;
        if (o3 instanceof C11808a.AbstractC11812d.AbstractC11814b) {
            GoogleSignInAccount m19463a2 = ((C11808a.AbstractC11812d.AbstractC11814b) o3).m19463a();
            set = m19463a2 == null ? Collections.emptySet() : m19463a2.getRequestedScopes();
        } else {
            set = Collections.emptySet();
        }
        if (c12032a.f39551b == null) {
            c12032a.f39551b = new C0430b<>();
        }
        c12032a.f39551b.addAll(set);
        c12032a.f39553d = this.f39179a.getClass().getName();
        c12032a.f39552c = this.f39179a.getPackageName();
        return c12032a;
    }
}
