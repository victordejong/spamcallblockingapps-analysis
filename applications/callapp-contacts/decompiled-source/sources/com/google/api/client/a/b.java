package com.google.api.client.a;

import com.google.common.base.m;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f31608a = com.google.api.client.a.a.a();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Field, a> f31609b = com.google.api.client.a.a.a();

    /* renamed from: c  reason: collision with root package name */
    private final Object f31610c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Class<?> f31611a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayList<Object> f31612b = new ArrayList<>();

        a(Class<?> cls) {
            this.f31611a = cls;
        }

        final Object a() {
            return ag.a((Collection<?>) this.f31612b, this.f31611a);
        }

        final void a(Class<?> cls, Object obj) {
            m.a(cls == this.f31611a);
            this.f31612b.add(obj);
        }
    }

    public b(Object obj) {
        this.f31610c = obj;
    }

    public final void a() {
        for (Map.Entry<String, a> entry : this.f31608a.entrySet()) {
            ((Map) this.f31610c).put(entry.getKey(), entry.getValue().a());
        }
        for (Map.Entry<Field, a> entry2 : this.f31609b.entrySet()) {
            m.a(entry2.getKey(), this.f31610c, entry2.getValue().a());
        }
    }

    public final void a(Field field, Class<?> cls, Object obj) {
        a aVar = this.f31609b.get(field);
        a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new a(cls);
            this.f31609b.put(field, aVar2);
        }
        aVar2.a(cls, obj);
    }
}
