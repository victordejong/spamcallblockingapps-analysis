package com.google.api.client.p379a;

import com.google.common.base.C15391m;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* renamed from: com.google.api.client.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/b.class */
public final class C15218b {

    /* renamed from: a */
    private final Map<String, C15219a> f55058a = C15197a.m9306a();

    /* renamed from: b */
    private final Map<Field, C15219a> f55059b = C15197a.m9306a();

    /* renamed from: c */
    private final Object f55060c;

    /* renamed from: com.google.api.client.a.b$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/b$a.class */
    public static final class C15219a {

        /* renamed from: a */
        final Class<?> f55061a;

        /* renamed from: b */
        final ArrayList<Object> f55062b = new ArrayList<>();

        C15219a(Class<?> cls) {
            this.f55061a = cls;
        }

        /* renamed from: a */
        final Object m9254a() {
            return C15214ag.m9261a((Collection<?>) this.f55062b, this.f55061a);
        }

        /* renamed from: a */
        final void m9253a(Class<?> cls, Object obj) {
            C15391m.m8943a(cls == this.f55061a);
            this.f55062b.add(obj);
        }
    }

    public C15218b(Object obj) {
        this.f55060c = obj;
    }

    /* renamed from: a */
    public final void m9256a() {
        for (Map.Entry<String, C15219a> entry : this.f55058a.entrySet()) {
            ((Map) this.f55060c).put(entry.getKey(), entry.getValue().m9254a());
        }
        for (Map.Entry<Field, C15219a> entry2 : this.f55059b.entrySet()) {
            C15240m.m9217a(entry2.getKey(), this.f55060c, entry2.getValue().m9254a());
        }
    }

    /* renamed from: a */
    public final void m9255a(Field field, Class<?> cls, Object obj) {
        C15219a c15219a = this.f55059b.get(field);
        C15219a c15219a2 = c15219a;
        if (c15219a == null) {
            c15219a2 = new C15219a(cls);
            this.f55059b.put(field, c15219a2);
        }
        c15219a2.m9253a(cls, obj);
    }
}
