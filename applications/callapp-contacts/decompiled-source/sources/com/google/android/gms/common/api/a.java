package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.internal.l;
import com.google.android.gms.common.internal.d;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.common.internal.o;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a.class */
public final class a<O extends d> {

    /* renamed from: a  reason: collision with root package name */
    final AbstractC0453a<?, O> f22610a;

    /* renamed from: b  reason: collision with root package name */
    public final g<?> f22611b;

    /* renamed from: c  reason: collision with root package name */
    public final String f22612c;

    /* renamed from: com.google.android.gms.common.api.a$a  reason: collision with other inner class name */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$a.class */
    public static abstract class AbstractC0453a<T extends f, O> extends e<T, O> {
        @Deprecated
        public T a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, O o, g.a aVar, g.b bVar) {
            return a(context, looper, eVar, (com.google.android.gms.common.internal.e) o, (com.google.android.gms.common.api.internal.e) aVar, (l) bVar);
        }

        public T a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, O o, com.google.android.gms.common.api.internal.e eVar2, l lVar) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$b.class */
    public interface b {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$c.class */
    public static class c<C extends b> {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$d.class */
    public interface d {
        public static final c f = new c(null);

        /* renamed from: com.google.android.gms.common.api.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$d$a.class */
        public interface AbstractC0454a extends com.google.android.gms.common.api.b, com.google.android.gms.common.api.c {
            Account a();
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$d$b.class */
        public interface b extends com.google.android.gms.common.api.b {
            GoogleSignInAccount a();
        }

        /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$d$c.class */
        public static final class c implements com.google.android.gms.common.api.c {
            private c() {
            }

            /* synthetic */ c(r rVar) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$e.class */
    public static abstract class e<T extends b, O> {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$f.class */
    public interface f extends b {
        Set<Scope> a();

        void connect(d.c cVar);

        void disconnect();

        void disconnect(String str);

        Feature[] getAvailableFeatures();

        String getEndpointPackageName();

        String getLastDisconnectMessage();

        int getMinApkVersion();

        void getRemoteService(i iVar, Set<Scope> set);

        boolean isConnected();

        boolean isConnecting();

        void onUserSignOut(d.e eVar);

        boolean requiresGooglePlayServices();

        boolean requiresSignIn();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/a$g.class */
    public static final class g<C extends f> extends c<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends f> a(String str, AbstractC0453a<C, O> aVar, g<C> gVar) {
        o.a(aVar, "Cannot construct an Api with a null ClientBuilder");
        o.a(gVar, "Cannot construct an Api with a null ClientKey");
        this.f22612c = str;
        this.f22610a = aVar;
        this.f22611b = gVar;
    }
}
