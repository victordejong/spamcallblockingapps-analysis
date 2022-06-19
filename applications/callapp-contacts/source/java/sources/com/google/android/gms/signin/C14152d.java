package com.google.android.gms.signin;

import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.internal.C14155a;
/* renamed from: com.google.android.gms.signin.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/d.class */
public final class C14152d {

    /* renamed from: a */
    public static final C11808a.C11818g<C14155a> f52094a;

    /* renamed from: b */
    public static final C11808a.C11818g<C14155a> f52095b;

    /* renamed from: c */
    public static final C11808a.AbstractC11809a<C14155a, C14149a> f52096c;

    /* renamed from: d */
    static final C11808a.AbstractC11809a<C14155a, Object> f52097d;

    /* renamed from: e */
    public static final Scope f52098e = new Scope("profile");

    /* renamed from: f */
    public static final Scope f52099f = new Scope("email");

    /* renamed from: g */
    public static final C11808a<C14149a> f52100g;

    /* renamed from: h */
    public static final C11808a<Object> f52101h;

    static {
        C11808a.C11818g<C14155a> c11818g = new C11808a.C11818g<>();
        f52094a = c11818g;
        C11808a.C11818g<C14155a> c11818g2 = new C11808a.C11818g<>();
        f52095b = c11818g2;
        C14150b c14150b = new C14150b();
        f52096c = c14150b;
        C14151c c14151c = new C14151c();
        f52097d = c14151c;
        f52100g = new C11808a<>("SignIn.API", c14150b, c11818g);
        f52101h = new C11808a<>("SignIn.INTERNAL_API", c14151c, c11818g2);
    }
}
