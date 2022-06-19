package com.bumptech.glide.p028m;

import com.bumptech.glide.load.AbstractC0794f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.m.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/e.class */
public class C0831e {

    /* renamed from: a */
    private final List<String> f3780a = new ArrayList();

    /* renamed from: b */
    private final Map<String, List<C0832a<?, ?>>> f3781b = new HashMap();

    /* renamed from: com.bumptech.glide.m.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/m/e$a.class */
    public static class C0832a<T, R> {

        /* renamed from: a */
        private final Class<T> f3782a;

        /* renamed from: b */
        final Class<R> f3783b;

        /* renamed from: c */
        final AbstractC0794f<T, R> f3784c;

        public C0832a(Class<T> cls, Class<R> cls2, AbstractC0794f<T, R> abstractC0794f) {
            this.f3782a = cls;
            this.f3783b = cls2;
            this.f3784c = abstractC0794f;
        }

        /* renamed from: a */
        public boolean m10835a(Class<?> cls, Class<?> cls2) {
            return this.f3782a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f3783b);
        }
    }

    /* renamed from: c */
    private List<C0832a<?, ?>> m10838c(String str) {
        List<C0832a<?, ?>> list;
        synchronized (this) {
            if (!this.f3780a.contains(str)) {
                this.f3780a.add(str);
            }
            List<C0832a<?, ?>> list2 = this.f3781b.get(str);
            list = list2;
            if (list2 == null) {
                list = new ArrayList<>();
                this.f3781b.put(str, list);
            }
        }
        return list;
    }

    /* renamed from: a */
    public <T, R> void m10840a(String str, AbstractC0794f<T, R> abstractC0794f, Class<T> cls, Class<R> cls2) {
        synchronized (this) {
            m10838c(str).add(new C0832a<>(cls, cls2, abstractC0794f));
        }
    }

    /* renamed from: b */
    public <T, R> List<AbstractC0794f<T, R>> m10839b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f3780a) {
                List<C0832a<?, ?>> list = this.f3781b.get(str);
                if (list != null) {
                    for (C0832a<?, ?> c0832a : list) {
                        if (c0832a.m10835a(cls, cls2)) {
                            arrayList.add(c0832a.f3784c);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public <T, R> List<Class<R>> m10837d(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f3780a) {
                List<C0832a<?, ?>> list = this.f3781b.get(str);
                if (list != null) {
                    for (C0832a<?, ?> c0832a : list) {
                        if (c0832a.m10835a(cls, cls2) && !arrayList.contains(c0832a.f3783b)) {
                            arrayList.add(c0832a.f3783b);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public void m10836e(List<String> list) {
        synchronized (this) {
            ArrayList<String> arrayList = new ArrayList(this.f3780a);
            this.f3780a.clear();
            for (String str : list) {
                this.f3780a.add(str);
            }
            for (String str2 : arrayList) {
                if (!list.contains(str2)) {
                    this.f3780a.add(str2);
                }
            }
        }
    }
}
