package com.google.android.gms.wearable;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractC11821d;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.wearable.internal.C14240ai;
import com.google.android.gms.wearable.internal.C14241aj;
import com.google.android.gms.wearable.internal.C14258b;
import com.google.android.gms.wearable.internal.C14276br;
import com.google.android.gms.wearable.internal.C14279bu;
import com.google.android.gms.wearable.internal.C14286ca;
import com.google.android.gms.wearable.internal.C14300co;
import com.google.android.gms.wearable.internal.C14309cx;
import com.google.android.gms.wearable.internal.C14314db;
import com.google.android.gms.wearable.internal.C14323dk;
import com.google.android.gms.wearable.internal.C14325dm;
import com.google.android.gms.wearable.internal.C14328dp;
import com.google.android.gms.wearable.internal.C14336i;
/* renamed from: com.google.android.gms.wearable.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/p.class */
public final class C14363p {
    @Deprecated

    /* renamed from: f */
    public static final C11808a<C14364a> f52336f;

    /* renamed from: l */
    private static final C11808a.C11818g<C14314db> f52342l;

    /* renamed from: m */
    private static final C11808a.AbstractC11809a<C14314db, C14364a> f52343m;
    @Deprecated

    /* renamed from: a */
    public static final AbstractC14228g f52331a = new C14241aj();
    @Deprecated

    /* renamed from: b */
    public static final AbstractC14209a f52332b = new C14328dp();
    @Deprecated

    /* renamed from: c */
    public static final AbstractC14355k f52333c = new C14276br();
    @Deprecated

    /* renamed from: d */
    public static final AbstractC14362o f52334d = new C14286ca();
    @Deprecated

    /* renamed from: e */
    public static final AbstractC14226f f52335e = new C14336i();
    @Deprecated

    /* renamed from: g */
    private static final AbstractC14367r f52337g = new C14325dm();
    @Deprecated

    /* renamed from: h */
    private static final AbstractC14366q f52338h = new C14309cx();
    @Deprecated

    /* renamed from: i */
    private static final AbstractC14369t f52339i = new C14240ai();
    @Deprecated

    /* renamed from: j */
    private static final AbstractC14372w f52340j = new C14300co();
    @Deprecated

    /* renamed from: k */
    private static final AbstractC14220ai f52341k = new C14323dk();

    /* renamed from: com.google.android.gms.wearable.p$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/p$a.class */
    public static final class C14364a implements AbstractC11821d {

        /* renamed from: a */
        private final Looper f52344a;

        /* renamed from: com.google.android.gms.wearable.p$a$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/p$a$a.class */
        public static final class C14365a {

            /* renamed from: a */
            Looper f52345a;
        }

        private C14364a(C14365a c14365a) {
            this.f52344a = c14365a.f52345a;
        }

        public /* synthetic */ C14364a(C14365a c14365a, C14373x c14373x) {
            this(c14365a);
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.wearable.internal.dm, com.google.android.gms.wearable.r] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.wearable.internal.cx, com.google.android.gms.wearable.q] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.wearable.internal.ai, com.google.android.gms.wearable.t] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.wearable.w, com.google.android.gms.wearable.internal.co] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.gms.wearable.internal.dk, com.google.android.gms.wearable.ai] */
    static {
        C11808a.C11818g<C14314db> c11818g = new C11808a.C11818g<>();
        f52342l = c11818g;
        C14373x c14373x = new C14373x();
        f52343m = c14373x;
        f52336f = new C11808a<>("Wearable.API", c14373x, c11818g);
    }

    private C14363p() {
    }

    /* renamed from: a */
    public static AbstractC14358l m11343a(Context context) {
        return new C14279bu(context, AbstractC11823f.C11824a.f39189a);
    }

    /* renamed from: b */
    public static AbstractC14221b m11342b(Context context) {
        return new C14258b(context, AbstractC11823f.C11824a.f39189a);
    }
}
