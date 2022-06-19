package com.bumptech.glide.p111d;

import com.bumptech.glide.load.AbstractC3824j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.d.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/e.class */
public final class C3567e {

    /* renamed from: a */
    private final List<String> f13572a = new ArrayList();

    /* renamed from: b */
    private final Map<String, List<C3568a<?, ?>>> f13573b = new HashMap();

    /* renamed from: com.bumptech.glide.d.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/e$a.class */
    public static final class C3568a<T, R> {

        /* renamed from: a */
        final Class<R> f13574a;

        /* renamed from: b */
        final AbstractC3824j<T, R> f13575b;

        /* renamed from: c */
        private final Class<T> f13576c;

        public C3568a(Class<T> cls, Class<R> cls2, AbstractC3824j<T, R> abstractC3824j) {
            this.f13576c = cls;
            this.f13574a = cls2;
            this.f13575b = abstractC3824j;
        }

        /* renamed from: a */
        public final boolean m37700a(Class<?> cls, Class<?> cls2) {
            return this.f13576c.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f13574a);
        }
    }

    /* renamed from: a */
    private List<C3568a<?, ?>> m37704a(String str) {
        List<C3568a<?, ?>> list;
        synchronized (this) {
            if (!this.f13572a.contains(str)) {
                this.f13572a.add(str);
            }
            List<C3568a<?, ?>> list2 = this.f13573b.get(str);
            list = list2;
            if (list2 == null) {
                list = new ArrayList<>();
                this.f13573b.put(str, list);
            }
        }
        return list;
    }

    /* renamed from: a */
    public final <T, R> List<AbstractC3824j<T, R>> m37705a(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f13572a) {
                List<C3568a<?, ?>> list = this.f13573b.get(str);
                if (list != null) {
                    for (C3568a<?, ?> c3568a : list) {
                        if (c3568a.m37700a(cls, cls2)) {
                            arrayList.add(c3568a.f13575b);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final <T, R> void m37703a(String str, AbstractC3824j<T, R> abstractC3824j, Class<T> cls, Class<R> cls2) {
        synchronized (this) {
            m37704a(str).add(new C3568a<>(cls, cls2, abstractC3824j));
        }
    }

    /* renamed from: a */
    public final void m37702a(List<String> list) {
        synchronized (this) {
            ArrayList<String> arrayList = new ArrayList(this.f13572a);
            this.f13572a.clear();
            for (String str : list) {
                this.f13572a.add(str);
            }
            for (String str2 : arrayList) {
                if (!list.contains(str2)) {
                    this.f13572a.add(str2);
                }
            }
        }
    }

    /* renamed from: b */
    public final <T, R> List<Class<R>> m37701b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f13572a) {
                List<C3568a<?, ?>> list = this.f13573b.get(str);
                if (list != null) {
                    for (C3568a<?, ?> c3568a : list) {
                        if (c3568a.m37700a(cls, cls2) && !arrayList.contains(c3568a.f13574a)) {
                            arrayList.add(c3568a.f13574a);
                        }
                    }
                }
            }
        }
        return arrayList;
    }
}
