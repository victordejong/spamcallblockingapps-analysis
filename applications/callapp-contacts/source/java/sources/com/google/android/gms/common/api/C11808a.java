package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.C11808a.AbstractC11812d;
import com.google.android.gms.common.api.internal.AbstractC11895e;
import com.google.android.gms.common.api.internal.AbstractC11904l;
import com.google.android.gms.common.internal.AbstractC12025d;
import com.google.android.gms.common.internal.AbstractC12036i;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.common.internal.C12045o;
import java.util.Set;
/* renamed from: com.google.android.gms.common.api.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a.class */
public final class C11808a<O extends AbstractC11812d> {

    /* renamed from: a */
    final AbstractC11809a<?, O> f39175a;

    /* renamed from: b */
    public final C11818g<?> f39176b;

    /* renamed from: c */
    public final String f39177c;

    /* renamed from: com.google.android.gms.common.api.a$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$a.class */
    public static abstract class AbstractC11809a<T extends AbstractC11817f, O> extends AbstractC11816e<T, O> {
        @Deprecated
        /* renamed from: a */
        public T mo11341a(Context context, Looper looper, C12031e c12031e, O o, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b) {
            return mo19228a(context, looper, c12031e, (C12031e) o, (AbstractC11895e) abstractC11827a, (AbstractC11904l) abstractC11828b);
        }

        /* renamed from: a */
        public T mo19228a(Context context, Looper looper, C12031e c12031e, O o, AbstractC11895e abstractC11895e, AbstractC11904l abstractC11904l) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* renamed from: com.google.android.gms.common.api.a$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$b.class */
    public interface AbstractC11810b {
    }

    /* renamed from: com.google.android.gms.common.api.a$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$c.class */
    public static class C11811c<C extends AbstractC11810b> {
    }

    /* renamed from: com.google.android.gms.common.api.a$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$d.class */
    public interface AbstractC11812d {

        /* renamed from: f */
        public static final C11815c f39178f = new C11815c(null);

        /* renamed from: com.google.android.gms.common.api.a$d$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$d$a.class */
        public interface AbstractC11813a extends AbstractC11819b, AbstractC11820c {
            /* renamed from: a */
            Account m19464a();
        }

        /* renamed from: com.google.android.gms.common.api.a$d$b */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$d$b.class */
        public interface AbstractC11814b extends AbstractC11819b {
            /* renamed from: a */
            GoogleSignInAccount m19463a();
        }

        /* renamed from: com.google.android.gms.common.api.a$d$c */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$d$c.class */
        public static final class C11815c implements AbstractC11820c {
            private C11815c() {
            }

            /* synthetic */ C11815c(C11930r c11930r) {
            }
        }
    }

    /* renamed from: com.google.android.gms.common.api.a$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$e.class */
    public static abstract class AbstractC11816e<T extends AbstractC11810b, O> {
    }

    /* renamed from: com.google.android.gms.common.api.a$f */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$f.class */
    public interface AbstractC11817f extends AbstractC11810b {
        /* renamed from: a */
        Set<Scope> mo19185a();

        void connect(AbstractC12025d.AbstractC12028c abstractC12028c);

        void disconnect();

        void disconnect(String str);

        Feature[] getAvailableFeatures();

        String getEndpointPackageName();

        String getLastDisconnectMessage();

        int getMinApkVersion();

        void getRemoteService(AbstractC12036i abstractC12036i, Set<Scope> set);

        boolean isConnected();

        boolean isConnecting();

        void onUserSignOut(AbstractC12025d.AbstractC12030e abstractC12030e);

        boolean requiresGooglePlayServices();

        boolean requiresSignIn();
    }

    /* renamed from: com.google.android.gms.common.api.a$g */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$g.class */
    public static final class C11818g<C extends AbstractC11817f> extends C11811c<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends AbstractC11817f> C11808a(String str, AbstractC11809a<C, O> abstractC11809a, C11818g<C> c11818g) {
        C12045o.m19161a(abstractC11809a, "Cannot construct an Api with a null ClientBuilder");
        C12045o.m19161a(c11818g, "Cannot construct an Api with a null ClientKey");
        this.f39177c = str;
        this.f39175a = abstractC11809a;
        this.f39176b = c11818g;
    }
}
