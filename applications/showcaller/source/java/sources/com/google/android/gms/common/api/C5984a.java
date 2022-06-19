package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.AbstractC5999d;
import com.google.android.gms.common.api.C5984a.AbstractC5988d;
import com.google.android.gms.common.api.internal.AbstractC6022e;
import com.google.android.gms.common.api.internal.AbstractC6040k;
import com.google.android.gms.common.internal.AbstractC6113d;
import com.google.android.gms.common.internal.AbstractC6134i;
import com.google.android.gms.common.internal.C6121e;
import com.google.android.gms.common.internal.C6155o;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a.class */
public final class C5984a<O extends AbstractC5988d> {

    /* renamed from: a */
    private final AbstractC5985a<?, O> f19179a;

    /* renamed from: b */
    private final C5994g<?> f19180b;

    /* renamed from: c */
    private final String f19181c;

    /* renamed from: com.google.android.gms.common.api.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$a.class */
    public static abstract class AbstractC5985a<T extends AbstractC5993f, O> extends AbstractC5992e<T, O> {
        @RecentlyNonNull
        @Deprecated
        /* renamed from: a */
        public T mo17480a(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull C6121e c6121e, @RecentlyNonNull O o, @RecentlyNonNull AbstractC5999d.AbstractC6000a abstractC6000a, @RecentlyNonNull AbstractC5999d.AbstractC6001b abstractC6001b) {
            return mo7833b(context, looper, c6121e, o, abstractC6000a, abstractC6001b);
        }

        @RecentlyNonNull
        /* renamed from: b */
        public T mo7833b(@RecentlyNonNull Context context, @RecentlyNonNull Looper looper, @RecentlyNonNull C6121e c6121e, @RecentlyNonNull O o, @RecentlyNonNull AbstractC6022e abstractC6022e, @RecentlyNonNull AbstractC6040k abstractC6040k) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* renamed from: com.google.android.gms.common.api.a$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$b.class */
    public interface AbstractC5986b {
    }

    /* renamed from: com.google.android.gms.common.api.a$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$c.class */
    public static class C5987c<C extends AbstractC5986b> {
    }

    /* renamed from: com.google.android.gms.common.api.a$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d.class */
    public interface AbstractC5988d {
        @RecentlyNonNull

        /* renamed from: b */
        public static final C5991c f19182b = new C5991c(null);

        /* renamed from: com.google.android.gms.common.api.a$d$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d$a.class */
        public interface AbstractC5989a extends AbstractC5988d {
            @RecentlyNonNull
            /* renamed from: P */
            Account m17479P();
        }

        /* renamed from: com.google.android.gms.common.api.a$d$b */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d$b.class */
        public interface AbstractC5990b extends AbstractC5988d {
            @RecentlyNullable
            /* renamed from: N */
            GoogleSignInAccount m17478N();
        }

        /* renamed from: com.google.android.gms.common.api.a$d$c */
        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$d$c.class */
        public static final class C5991c implements AbstractC5988d {
            private C5991c() {
            }

            /* synthetic */ C5991c(C6079l c6079l) {
            }
        }
    }

    /* renamed from: com.google.android.gms.common.api.a$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$e.class */
    public static abstract class AbstractC5992e<T extends AbstractC5986b, O> {
    }

    /* renamed from: com.google.android.gms.common.api.a$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$f.class */
    public interface AbstractC5993f extends AbstractC5986b {
        /* renamed from: a */
        void mo17320a();

        /* renamed from: b */
        boolean mo17319b();

        /* renamed from: c */
        Set<Scope> mo17068c();

        /* renamed from: d */
        void mo17318d(AbstractC6134i abstractC6134i, Set<Scope> set);

        /* renamed from: e */
        void mo17317e(@RecentlyNonNull String str);

        /* renamed from: f */
        boolean mo17316f();

        @RecentlyNonNull
        /* renamed from: g */
        String mo17315g();

        /* renamed from: h */
        void mo17314h(@RecentlyNonNull AbstractC6113d.AbstractC6116c abstractC6116c);

        /* renamed from: i */
        void mo17313i(@RecentlyNonNull AbstractC6113d.AbstractC6118e abstractC6118e);

        /* renamed from: j */
        boolean mo17312j();

        /* renamed from: l */
        int mo5858l();

        @RecentlyNonNull
        /* renamed from: m */
        Feature[] mo17310m();

        @RecentlyNullable
        /* renamed from: n */
        String mo17309n();

        /* renamed from: p */
        boolean mo5855p();
    }

    /* renamed from: com.google.android.gms.common.api.a$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/a$g.class */
    public static final class C5994g<C extends AbstractC5993f> extends C5987c<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends AbstractC5993f> C5984a(@RecentlyNonNull String str, @RecentlyNonNull AbstractC5985a<C, O> abstractC5985a, @RecentlyNonNull C5994g<C> c5994g) {
        C6155o.m17017k(abstractC5985a, "Cannot construct an Api with a null ClientBuilder");
        C6155o.m17017k(c5994g, "Cannot construct an Api with a null ClientKey");
        this.f19181c = str;
        this.f19179a = abstractC5985a;
        this.f19180b = c5994g;
    }

    @RecentlyNonNull
    /* renamed from: a */
    public final AbstractC5985a<?, O> m17483a() {
        return this.f19179a;
    }

    @RecentlyNonNull
    /* renamed from: b */
    public final C5987c<?> m17482b() {
        return this.f19180b;
    }

    @RecentlyNonNull
    /* renamed from: c */
    public final String m17481c() {
        return this.f19181c;
    }
}
