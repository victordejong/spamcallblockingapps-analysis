package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.signin.internal.f;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bm.class */
public final class bm {

    /* renamed from: a  reason: collision with root package name */
    public static final a.g<f> f4165a = new a.g<>();

    /* renamed from: b  reason: collision with root package name */
    public static final a.g<f> f4166b = new a.g<>();
    public static final a.b<f, bo> c = new a.b<f, bo>() { // from class: com.google.android.gms.internal.bm.1
        @Override // com.google.android.gms.common.api.a.b
        public final /* synthetic */ f a(Context context, Looper looper, n nVar, bo boVar, b.AbstractC0112b bVar, b.c cVar) {
            if (boVar == null) {
                bo boVar2 = bo.f4167a;
            }
            return new f(context, looper, nVar, bVar, cVar);
        }
    };
    static final a.b<f, Object> d = new a.b<f, Object>() { // from class: com.google.android.gms.internal.bm.2
        @Override // com.google.android.gms.common.api.a.b
        public final /* synthetic */ f a(Context context, Looper looper, n nVar, Object obj, b.AbstractC0112b bVar, b.c cVar) {
            return new f(context, looper, false, nVar, null, bVar, cVar);
        }
    };
    public static final Scope e = new Scope("profile");
    public static final Scope f = new Scope("email");
    public static final a<bo> g = new a<>("SignIn.API", c, f4165a);
    public static final a<Object> h = new a<>("SignIn.INTERNAL_API", d, f4166b);
}
