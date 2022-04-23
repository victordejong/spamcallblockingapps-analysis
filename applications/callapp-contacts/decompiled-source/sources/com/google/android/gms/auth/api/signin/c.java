package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.signin.internal.j;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.q;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.h;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/c.class */
public final class c extends f<GoogleSignInOptions> {
    private static final b h = new b(null);
    private static int i = a.f22494a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f22494a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f22495b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f22496c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f22497d = 4;
        private static final /* synthetic */ int[] e = {1, 2, 3, 4};

        public static int[] a() {
            return (int[]) e.clone();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/c$b.class */
    static final class b implements n.a<e, GoogleSignInAccount> {
        private b() {
        }

        /* synthetic */ b(j jVar) {
            this();
        }

        @Override // com.google.android.gms.common.internal.n.a
        public final /* synthetic */ GoogleSignInAccount a(e eVar) {
            return eVar.f22498a;
        }
    }

    c(Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, com.google.android.gms.auth.api.a.e, googleSignInOptions, (q) new com.google.android.gms.common.api.internal.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, com.google.android.gms.auth.api.a.e, googleSignInOptions, new com.google.android.gms.common.api.internal.a());
    }

    public final int a() {
        int i2;
        synchronized (this) {
            if (i == a.f22494a) {
                Context context = this.f22613a;
                com.google.android.gms.common.b a2 = com.google.android.gms.common.b.a();
                int b2 = a2.b(context, d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                if (b2 == 0) {
                    i = a.f22497d;
                } else if (a2.a(context, b2, (String) null) != null || DynamiteModule.a(context, "com.google.android.gms.auth.api.fallback") == 0) {
                    i = a.f22495b;
                } else {
                    i = a.f22496c;
                }
            }
            i2 = i;
        }
        return i2;
    }

    public final Intent b() {
        Context context = this.f22613a;
        int i2 = j.f22529a[a() - 1];
        return i2 != 1 ? i2 != 2 ? j.c(context, (GoogleSignInOptions) this.f22614b) : j.a(context, (GoogleSignInOptions) this.f22614b) : j.b(context, (GoogleSignInOptions) this.f22614b);
    }

    public final h<GoogleSignInAccount> c() {
        return n.a(j.a(this.f, this.f22613a, (GoogleSignInOptions) this.f22614b, a() == a.f22496c), h);
    }

    public final h<Void> d() {
        return n.a(j.a(this.f, this.f22613a, a() == a.f22496c));
    }
}
