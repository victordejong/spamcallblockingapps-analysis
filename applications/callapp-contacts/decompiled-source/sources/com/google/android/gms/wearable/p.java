package com.google.android.gms.wearable;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.f;
import com.google.android.gms.wearable.internal.ai;
import com.google.android.gms.wearable.internal.aj;
import com.google.android.gms.wearable.internal.b;
import com.google.android.gms.wearable.internal.br;
import com.google.android.gms.wearable.internal.bu;
import com.google.android.gms.wearable.internal.ca;
import com.google.android.gms.wearable.internal.co;
import com.google.android.gms.wearable.internal.cx;
import com.google.android.gms.wearable.internal.db;
import com.google.android.gms.wearable.internal.dk;
import com.google.android.gms.wearable.internal.dm;
import com.google.android.gms.wearable.internal.dp;
import com.google.android.gms.wearable.internal.i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/p.class */
public final class p {
    @Deprecated
    public static final com.google.android.gms.common.api.a<a> f;
    private static final a.g<db> l;
    private static final a.AbstractC0453a<db, a> m;
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final g f30165a = new aj();
    @Deprecated

    /* renamed from: b  reason: collision with root package name */
    public static final com.google.android.gms.wearable.a f30166b = new dp();
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public static final k f30167c = new br();
    @Deprecated

    /* renamed from: d  reason: collision with root package name */
    public static final o f30168d = new ca();
    @Deprecated
    public static final f e = new i();
    @Deprecated
    private static final r g = new dm();
    @Deprecated
    private static final q h = new cx();
    @Deprecated
    private static final t i = new ai();
    @Deprecated
    private static final w j = new co();
    @Deprecated
    private static final ai k = new dk();

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/p$a.class */
    public static final class a implements d {

        /* renamed from: a  reason: collision with root package name */
        private final Looper f30169a;

        /* renamed from: com.google.android.gms.wearable.p$a$a  reason: collision with other inner class name */
        /* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/p$a$a.class */
        public static final class C0484a {

            /* renamed from: a  reason: collision with root package name */
            Looper f30170a;
        }

        private a(C0484a aVar) {
            this.f30169a = aVar.f30170a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(C0484a aVar, x xVar) {
            this(aVar);
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.wearable.internal.dm, com.google.android.gms.wearable.r] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.wearable.internal.cx, com.google.android.gms.wearable.q] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.wearable.internal.ai, com.google.android.gms.wearable.t] */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.wearable.w, com.google.android.gms.wearable.internal.co] */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.google.android.gms.wearable.internal.dk, com.google.android.gms.wearable.ai] */
    static {
        a.g<db> gVar = new a.g<>();
        l = gVar;
        x xVar = new x();
        m = xVar;
        f = new com.google.android.gms.common.api.a<>("Wearable.API", xVar, gVar);
    }

    private p() {
    }

    public static l a(Context context) {
        return new bu(context, f.a.f22617a);
    }

    public static b b(Context context) {
        return new b(context, f.a.f22617a);
    }
}
