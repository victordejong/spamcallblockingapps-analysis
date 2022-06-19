package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.kw */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kw.class */
public final class C0480kw {

    /* renamed from: a */
    private static final String f3507a = "kw";

    /* renamed from: b */
    private static final Map<Class<? extends AbstractC0481kx>, C0479kv> f3508b = new LinkedHashMap();

    /* renamed from: c */
    private final Map<Class<? extends AbstractC0481kx>, AbstractC0481kx> f3509c = new LinkedHashMap();

    /* renamed from: a */
    public static void m4581a(Class<? extends AbstractC0481kx> cls) {
        if (cls == null) {
            return;
        }
        Map<Class<? extends AbstractC0481kx>, C0479kv> map = f3508b;
        synchronized (map) {
            map.put(cls, new C0479kv(cls));
        }
    }

    /* renamed from: a */
    public final void m4582a(Context context) {
        ArrayList<C0479kv> arrayList;
        synchronized (this) {
            if (context == null) {
                C0478ku.m4596a(5, f3507a, "Null context.");
                return;
            }
            Map<Class<? extends AbstractC0481kx>, C0479kv> map = f3508b;
            synchronized (map) {
                arrayList = new ArrayList(map.values());
            }
            for (C0479kv c0479kv : arrayList) {
                try {
                    Class<? extends AbstractC0481kx> cls = c0479kv.f3505a;
                    if (cls != null && Build.VERSION.SDK_INT >= c0479kv.f3506b) {
                        AbstractC0481kx newInstance = cls.newInstance();
                        newInstance.m4579a(context);
                        this.f3509c.put(c0479kv.f3505a, newInstance);
                    }
                } catch (Exception e) {
                    String str = f3507a;
                    C0478ku.m4595a(5, str, "Flurry Module for class " + c0479kv.f3505a + " is not available:", e);
                }
            }
            lu.a().a(context);
            C0465kk.m4640a();
        }
    }

    /* renamed from: b */
    public final AbstractC0481kx m4580b(Class<? extends AbstractC0481kx> cls) {
        AbstractC0481kx abstractC0481kx;
        if (cls == null) {
            return null;
        }
        synchronized (this.f3509c) {
            abstractC0481kx = this.f3509c.get(cls);
        }
        if (abstractC0481kx != null) {
            return abstractC0481kx;
        }
        throw new IllegalStateException("Module was not registered/initialized. " + cls);
    }
}
