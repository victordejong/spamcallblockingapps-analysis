package com.flurry.sdk;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.ls */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ls.class */
public class C0496ls {

    /* renamed from: a */
    private static final List<Class<?>> f3565a = new ArrayList();

    /* renamed from: b */
    private final String f3566b = C0496ls.class.getSimpleName();

    /* renamed from: c */
    private final Map<Class<?>, Object> f3567c = new LinkedHashMap();

    public C0496ls() {
        ArrayList<Class<?>> arrayList;
        List<Class<?>> list = f3565a;
        synchronized (list) {
            arrayList = new ArrayList(list);
        }
        for (Class<?> cls : arrayList) {
            try {
                Object newInstance = cls.newInstance();
                synchronized (this.f3567c) {
                    this.f3567c.put(cls, newInstance);
                }
            } catch (Exception e) {
                String str = this.f3566b;
                C0478ku.m4595a(5, str, "Module data " + cls + " is not available:", e);
            }
        }
    }

    /* renamed from: a */
    public static void m4520a(Class<?> cls) {
        List<Class<?>> list = f3565a;
        synchronized (list) {
            list.add(cls);
        }
    }

    /* renamed from: b */
    public final Object m4519b(Class<?> cls) {
        Object obj;
        synchronized (this.f3567c) {
            obj = this.f3567c.get(cls);
        }
        return obj;
    }
}
