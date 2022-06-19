package com.google.android.gms.auth.api.signin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.C11682a;
import com.google.android.gms.auth.api.signin.internal.C11750j;
import com.google.android.gms.common.C11937b;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.internal.AbstractC11910q;
import com.google.android.gms.common.api.internal.C11832a;
import com.google.android.gms.common.internal.C12043n;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.tasks.AbstractC14185h;
/* renamed from: com.google.android.gms.auth.api.signin.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/c.class */
public final class C11731c extends AbstractC11823f<GoogleSignInOptions> {

    /* renamed from: h */
    private static final C11733b f39043h = new C11733b(null);

    /* renamed from: i */
    private static int f39044i = C11732a.f39045a;

    /* renamed from: com.google.android.gms.auth.api.signin.c$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/c$a.class */
    public static final class C11732a {

        /* renamed from: a */
        public static final int f39045a = 1;

        /* renamed from: b */
        public static final int f39046b = 2;

        /* renamed from: c */
        public static final int f39047c = 3;

        /* renamed from: d */
        public static final int f39048d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f39049e = {1, 2, 3, 4};

        /* renamed from: a */
        public static int[] m19560a() {
            return (int[]) f39049e.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.auth.api.signin.c$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/c$b.class */
    public static final class C11733b implements C12043n.AbstractC12044a<C11735e, GoogleSignInAccount> {
        private C11733b() {
        }

        /* synthetic */ C11733b(C11767j c11767j) {
            this();
        }

        @Override // com.google.android.gms.common.internal.C12043n.AbstractC12044a
        /* renamed from: a */
        public final /* synthetic */ GoogleSignInAccount mo11403a(C11735e c11735e) {
            return c11735e.f39050a;
        }
    }

    C11731c(Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, C11682a.f38982e, googleSignInOptions, (AbstractC11910q) new C11832a());
    }

    public C11731c(Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, C11682a.f38982e, googleSignInOptions, new C11832a());
    }

    /* renamed from: a */
    public final int m19564a() {
        int i;
        synchronized (this) {
            if (f39044i == C11732a.f39045a) {
                Context context = this.f39179a;
                C11937b m19287a = C11937b.m19287a();
                int mo19269b = m19287a.mo19269b(context, C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                if (mo19269b == 0) {
                    f39044i = C11732a.f39048d;
                } else if (m19287a.mo19272a(context, mo19269b, (String) null) != null || DynamiteModule.m18973a(context, "com.google.android.gms.auth.api.fallback") == 0) {
                    f39044i = C11732a.f39046b;
                } else {
                    f39044i = C11732a.f39047c;
                }
            }
            i = f39044i;
        }
        return i;
    }

    /* renamed from: b */
    public final Intent m19563b() {
        Context context = this.f39179a;
        int i = C11767j.f39083a[m19564a() - 1];
        return i != 1 ? i != 2 ? C11750j.m19532c(context, (GoogleSignInOptions) this.f39180b) : C11750j.m19538a(context, (GoogleSignInOptions) this.f39180b) : C11750j.m19534b(context, (GoogleSignInOptions) this.f39180b);
    }

    /* renamed from: c */
    public final AbstractC14185h<GoogleSignInAccount> m19562c() {
        return C12043n.m19164a(C11750j.m19536a(this.f39184f, this.f39179a, (GoogleSignInOptions) this.f39180b, m19564a() == C11732a.f39047c), f39043h);
    }

    /* renamed from: d */
    public final AbstractC14185h<Void> m19561d() {
        return C12043n.m19165a(C11750j.m19535a(this.f39184f, this.f39179a, m19564a() == C11732a.f39047c));
    }
}
