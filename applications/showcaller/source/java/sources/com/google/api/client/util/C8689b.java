package com.google.api.client.util;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: com.google.api.client.util.b */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/b.class */
public final class C8689b {

    /* renamed from: a */
    private final Map<String, C8690a> f38485a = C8684a.m2951b();

    /* renamed from: b */
    private final Map<Field, C8690a> f38486b = C8684a.m2951b();

    /* renamed from: c */
    private final Object f38487c;

    /* renamed from: com.google.api.client.util.b$a */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/b$a.class */
    public static class C8690a {

        /* renamed from: a */
        final Class<?> f38488a;

        /* renamed from: b */
        final ArrayList<Object> f38489b = new ArrayList<>();

        C8690a(Class<?> cls) {
            this.f38488a = cls;
        }

        /* renamed from: a */
        void m2934a(Class<?> cls, Object obj) {
            C8731w.m2839a(cls == this.f38488a);
            this.f38489b.add(obj);
        }

        /* renamed from: b */
        Object m2933b() {
            return C8695d0.m2913o(this.f38489b, this.f38488a);
        }
    }

    public C8689b(Object obj) {
        this.f38487c = obj;
    }

    /* renamed from: a */
    public void m2936a(Field field, Class<?> cls, Object obj) {
        C8690a c8690a = this.f38486b.get(field);
        C8690a c8690a2 = c8690a;
        if (c8690a == null) {
            c8690a2 = new C8690a(cls);
            this.f38486b.put(field, c8690a2);
        }
        c8690a2.m2934a(cls, obj);
    }

    /* renamed from: b */
    public void m2935b() {
        for (Map.Entry<String, C8690a> entry : this.f38485a.entrySet()) {
            ((Map) this.f38487c).put(entry.getKey(), entry.getValue().m2933b());
        }
        for (Map.Entry<Field, C8690a> entry2 : this.f38486b.entrySet()) {
            C8717l.m2855l(entry2.getKey(), this.f38487c, entry2.getValue().m2933b());
        }
    }
}
