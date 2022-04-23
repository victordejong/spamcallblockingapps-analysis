package com.google.api.client.a;

import com.google.common.base.j;
import com.google.common.base.m;
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
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/h.class */
public final class h {

    /* renamed from: d  reason: collision with root package name */
    private static final ConcurrentMap<Class<?>, h> f31620d = new ConcurrentHashMap();
    private static final ConcurrentMap<Class<?>, h> e = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    final boolean f31621a;

    /* renamed from: b  reason: collision with root package name */
    public final IdentityHashMap<String, m> f31622b = new IdentityHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    final List<String> f31623c;
    private final Class<?> f;

    private h(Class<?> cls, boolean z) {
        Field[] declaredFields;
        this.f = cls;
        this.f31621a = z;
        m.a(!z || !cls.isEnum(), "cannot ignore case on an enum: ".concat(String.valueOf(cls)));
        TreeSet treeSet = new TreeSet(new Comparator<String>() { // from class: com.google.api.client.a.h.1
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(String str, String str2) {
                String str3 = str;
                String str4 = str2;
                if (j.a(str3, str4)) {
                    return 0;
                }
                if (str3 == null) {
                    return -1;
                }
                if (str4 == null) {
                    return 1;
                }
                return str3.compareTo(str4);
            }
        });
        for (Field field : cls.getDeclaredFields()) {
            m a2 = m.a(field);
            if (a2 != null) {
                String str = a2.f31651c;
                String intern = z ? str.toLowerCase(Locale.US).intern() : str;
                m mVar = this.f31622b.get(intern);
                m.a(mVar == null, "two fields have the same %sname <%s>: %s and %s", z ? "case-insensitive " : "", intern, field, mVar == null ? null : mVar.f31650b);
                this.f31622b.put(intern, a2);
                treeSet.add(intern);
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            h a3 = a(superclass, z);
            treeSet.addAll(a3.f31623c);
            for (Map.Entry<String, m> entry : a3.f31622b.entrySet()) {
                String key = entry.getKey();
                if (!this.f31622b.containsKey(key)) {
                    this.f31622b.put(key, entry.getValue());
                }
            }
        }
        this.f31623c = treeSet.isEmpty() ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(treeSet));
    }

    public static h a(Class<?> cls) {
        return a(cls, false);
    }

    public static h a(Class<?> cls, boolean z) {
        if (cls == null) {
            return null;
        }
        ConcurrentMap<Class<?>, h> concurrentMap = z ? e : f31620d;
        h hVar = concurrentMap.get(cls);
        h hVar2 = hVar;
        if (hVar == null) {
            h hVar3 = new h(cls, z);
            hVar2 = concurrentMap.putIfAbsent(cls, hVar3);
            if (hVar2 == null) {
                return hVar3;
            }
        }
        return hVar2;
    }

    public final m a(String str) {
        String str2 = str;
        if (str != null) {
            String str3 = str;
            if (this.f31621a) {
                str3 = str.toLowerCase(Locale.US);
            }
            str2 = str3.intern();
        }
        return this.f31622b.get(str2);
    }
}
