package com.google.api.client.p379a;

import com.google.common.base.C15386j;
import com.google.common.base.C15391m;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.api.client.a.h */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/h.class */
public final class C15228h {

    /* renamed from: d */
    private static final ConcurrentMap<Class<?>, C15228h> f55070d = new ConcurrentHashMap();

    /* renamed from: e */
    private static final ConcurrentMap<Class<?>, C15228h> f55071e = new ConcurrentHashMap();

    /* renamed from: a */
    final boolean f55072a;

    /* renamed from: b */
    public final IdentityHashMap<String, C15240m> f55073b = new IdentityHashMap<>();

    /* renamed from: c */
    final List<String> f55074c;

    /* renamed from: f */
    private final Class<?> f55075f;

    private C15228h(Class<?> cls, boolean z) {
        Field[] declaredFields;
        this.f55075f = cls;
        this.f55072a = z;
        C15391m.m8942a(!z || !cls.isEnum(), "cannot ignore case on an enum: ".concat(String.valueOf(cls)));
        TreeSet treeSet = new TreeSet(new Comparator<String>() { // from class: com.google.api.client.a.h.1
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(String str, String str2) {
                String str3 = str;
                String str4 = str2;
                if (C15386j.m8951a(str3, str4)) {
                    return 0;
                }
                if (str3 == null) {
                    return -1;
                }
                if (str4 != null) {
                    return str3.compareTo(str4);
                }
                return 1;
            }
        });
        for (Field field : cls.getDeclaredFields()) {
            C15240m m9219a = C15240m.m9219a(field);
            if (m9219a != null) {
                String str = m9219a.f55116c;
                String intern = z ? str.toLowerCase(Locale.US).intern() : str;
                C15240m c15240m = this.f55073b.get(intern);
                C15391m.m8936a(c15240m == null, "two fields have the same %sname <%s>: %s and %s", z ? "case-insensitive " : "", intern, field, c15240m == null ? null : c15240m.f55115b);
                this.f55073b.put(intern, m9219a);
                treeSet.add(intern);
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            C15228h m9245a = m9245a(superclass, z);
            treeSet.addAll(m9245a.f55074c);
            for (Map.Entry<String, C15240m> entry : m9245a.f55073b.entrySet()) {
                String key = entry.getKey();
                if (!this.f55073b.containsKey(key)) {
                    this.f55073b.put(key, entry.getValue());
                }
            }
        }
        this.f55074c = treeSet.isEmpty() ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(treeSet));
    }

    /* renamed from: a */
    public static C15228h m9246a(Class<?> cls) {
        return m9245a(cls, false);
    }

    /* renamed from: a */
    public static C15228h m9245a(Class<?> cls, boolean z) {
        if (cls == null) {
            return null;
        }
        ConcurrentMap<Class<?>, C15228h> concurrentMap = z ? f55071e : f55070d;
        C15228h c15228h = concurrentMap.get(cls);
        C15228h c15228h2 = c15228h;
        if (c15228h == null) {
            C15228h c15228h3 = new C15228h(cls, z);
            c15228h2 = concurrentMap.putIfAbsent(cls, c15228h3);
            if (c15228h2 == null) {
                return c15228h3;
            }
        }
        return c15228h2;
    }

    /* renamed from: a */
    public final C15240m m9244a(String str) {
        String str2 = str;
        if (str != null) {
            String str3 = str;
            if (this.f55072a) {
                str3 = str.toLowerCase(Locale.US);
            }
            str2 = str3.intern();
        }
        return this.f55073b.get(str2);
    }
}
