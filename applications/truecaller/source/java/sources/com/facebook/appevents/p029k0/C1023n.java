package com.facebook.appevents.p029k0;

import com.facebook.internal.p037u0.p040m.C1220a;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\b\u0002\b\u0007\u0018�� \u00122\u00020\u0001:\u0001\u0012B=\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0002\u0010\nJ$\u0010\r\u001a\u0004\u0018\u00010\u00012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0010\u0010\u0010\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u000f\u0018\u00010\u0011R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0015\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;", "", "skuDetailsParamsClazz", "Ljava/lang/Class;", "builderClazz", "newBuilderMethod", "Ljava/lang/reflect/Method;", "setTypeMethod", "setSkusListMethod", "buildMethod", "(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V", "getSkuDetailsParamsClazz", "()Ljava/lang/Class;", "getSkuDetailsParams", "skuType", "", "skuIDs", "", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.k0.n */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/n.class */
public final class C1023n {

    /* renamed from: g */
    public static final C1023n f2823g = null;

    /* renamed from: h */
    public static C1023n f2824h;

    /* renamed from: i */
    public static final AtomicBoolean f2825i = new AtomicBoolean(false);

    /* renamed from: a */
    public final Class<?> f2826a;

    /* renamed from: b */
    public final Class<?> f2827b;

    /* renamed from: c */
    public final Method f2828c;

    /* renamed from: d */
    public final Method f2829d;

    /* renamed from: e */
    public final Method f2830e;

    /* renamed from: f */
    public final Method f2831f;

    public C1023n(Class<?> cls, Class<?> cls2, Method method, Method method2, Method method3, Method method4) {
        l.e(cls, "skuDetailsParamsClazz");
        l.e(cls2, "builderClazz");
        l.e(method, "newBuilderMethod");
        l.e(method2, "setTypeMethod");
        l.e(method3, "setSkusListMethod");
        l.e(method4, "buildMethod");
        this.f2826a = cls;
        this.f2827b = cls2;
        this.f2828c = method;
        this.f2829d = method2;
        this.f2830e = method3;
        this.f2831f = method4;
    }

    /* renamed from: a */
    public static final /* synthetic */ AtomicBoolean m41878a() {
        if (C1220a.m41623b(C1023n.class)) {
            return null;
        }
        try {
            return f2825i;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1023n.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ C1023n m41877b() {
        if (C1220a.m41623b(C1023n.class)) {
            return null;
        }
        try {
            return f2824h;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1023n.class);
            return null;
        }
    }

    /* renamed from: c */
    public final Object m41876c(String str, List<String> list) {
        Object m41873c;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            Object m41873c2 = C1024o.m41873c(this.f2826a, this.f2828c, null, new Object[0]);
            if (m41873c2 == null || (m41873c = C1024o.m41873c(this.f2827b, this.f2829d, m41873c2, str)) == null) {
                return null;
            }
            Object m41873c3 = C1024o.m41873c(this.f2827b, this.f2830e, m41873c, list);
            return m41873c3 == null ? null : C1024o.m41873c(this.f2827b, this.f2831f, m41873c3, new Object[0]);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }
}
