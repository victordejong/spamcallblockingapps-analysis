package com.google.api.client.util;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.api.client.util.i */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/i.class */
public final class C8710i {

    /* renamed from: a */
    private static final ConcurrentMap<Class<?>, C8710i> f38510a = new ConcurrentHashMap();

    /* renamed from: b */
    private static final ConcurrentMap<Class<?>, C8710i> f38511b = new ConcurrentHashMap();

    /* renamed from: c */
    private final Class<?> f38512c;

    /* renamed from: d */
    private final boolean f38513d;

    /* renamed from: e */
    private final IdentityHashMap<String, C8717l> f38514e = new IdentityHashMap<>();

    /* renamed from: f */
    final List<String> f38515f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.util.i$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/i$a.class */
    public class C8711a implements Comparator<String> {
        C8711a() {
            C8710i.this = r4;
        }

        /* renamed from: a */
        public int compare(String str, String str2) {
            return C8727v.m2844a(str, str2) ? 0 : str == null ? -1 : str2 == null ? 1 : str.compareTo(str2);
        }
    }

    private C8710i(Class<?> cls, boolean z) {
        Field[] declaredFields;
        this.f38512c = cls;
        this.f38513d = z;
        C8731w.m2838b(!z || !cls.isEnum(), "cannot ignore case on an enum: " + cls);
        TreeSet treeSet = new TreeSet(new C8711a());
        for (Field field : cls.getDeclaredFields()) {
            C8717l m2856k = C8717l.m2856k(field);
            if (m2856k != null) {
                String m2862e = m2856k.m2862e();
                String intern = z ? m2862e.toLowerCase(Locale.US).intern() : m2862e;
                C8717l c8717l = this.f38514e.get(intern);
                C8731w.m2837c(c8717l == null, "two fields have the same %sname <%s>: %s and %s", z ? "case-insensitive " : "", intern, field, c8717l == null ? null : c8717l.m2865b());
                this.f38514e.put(intern, m2856k);
                treeSet.add(intern);
            }
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            C8710i m2885f = m2885f(superclass, z);
            treeSet.addAll(m2885f.f38515f);
            for (Map.Entry<String, C8717l> entry : m2885f.f38514e.entrySet()) {
                String key = entry.getKey();
                if (!this.f38514e.containsKey(key)) {
                    this.f38514e.put(key, entry.getValue());
                }
            }
        }
        this.f38515f = treeSet.isEmpty() ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(treeSet));
    }

    /* renamed from: e */
    public static C8710i m2886e(Class<?> cls) {
        return m2885f(cls, false);
    }

    /* renamed from: f */
    public static C8710i m2885f(Class<?> cls, boolean z) {
        if (cls == null) {
            return null;
        }
        ConcurrentMap<Class<?>, C8710i> concurrentMap = z ? f38511b : f38510a;
        C8710i c8710i = concurrentMap.get(cls);
        C8710i c8710i2 = c8710i;
        if (c8710i == null) {
            c8710i2 = new C8710i(cls, z);
            C8710i putIfAbsent = concurrentMap.putIfAbsent(cls, c8710i2);
            if (putIfAbsent != null) {
                c8710i2 = putIfAbsent;
            }
        }
        return c8710i2;
    }

    /* renamed from: a */
    public Field m2890a(String str) {
        C8717l m2889b = m2889b(str);
        return m2889b == null ? null : m2889b.m2865b();
    }

    /* renamed from: b */
    public C8717l m2889b(String str) {
        String str2 = str;
        if (str != null) {
            String str3 = str;
            if (this.f38513d) {
                str3 = str.toLowerCase(Locale.US);
            }
            str2 = str3.intern();
        }
        return this.f38514e.get(str2);
    }

    /* renamed from: c */
    public Collection<C8717l> m2888c() {
        return Collections.unmodifiableCollection(this.f38514e.values());
    }

    /* renamed from: d */
    public final boolean m2887d() {
        return this.f38513d;
    }
}
