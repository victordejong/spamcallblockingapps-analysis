package com.google.android.gms.signin;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final a.g<com.google.android.gms.signin.internal.a> f29983a;

    /* renamed from: b  reason: collision with root package name */
    public static final a.g<com.google.android.gms.signin.internal.a> f29984b;

    /* renamed from: c  reason: collision with root package name */
    public static final a.AbstractC0453a<com.google.android.gms.signin.internal.a, a> f29985c;

    /* renamed from: d  reason: collision with root package name */
    static final a.AbstractC0453a<com.google.android.gms.signin.internal.a, Object> f29986d;
    public static final Scope e = new Scope("profile");
    public static final Scope f = new Scope("email");
    public static final a<a> g;
    public static final a<Object> h;

    static {
        a.g<com.google.android.gms.signin.internal.a> gVar = new a.g<>();
        f29983a = gVar;
        a.g<com.google.android.gms.signin.internal.a> gVar2 = new a.g<>();
        f29984b = gVar2;
        b bVar = new b();
        f29985c = bVar;
        c cVar = new c();
        f29986d = cVar;
        g = new a<>("SignIn.API", bVar, gVar);
        h = new a<>("SignIn.INTERNAL_API", cVar, gVar2);
    }
}
