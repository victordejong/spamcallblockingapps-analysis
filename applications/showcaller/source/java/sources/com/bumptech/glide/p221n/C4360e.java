package com.bumptech.glide.p221n;

import com.bumptech.glide.load.AbstractC4146f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bumptech.glide.n.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/n/e.class */
public class C4360e {

    /* renamed from: a */
    private final List<String> f13353a = new ArrayList();

    /* renamed from: b */
    private final Map<String, List<C4361a<?, ?>>> f13354b = new HashMap();

    /* renamed from: com.bumptech.glide.n.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/n/e$a.class */
    public static class C4361a<T, R> {

        /* renamed from: a */
        private final Class<T> f13355a;

        /* renamed from: b */
        final Class<R> f13356b;

        /* renamed from: c */
        final AbstractC4146f<T, R> f13357c;

        public C4361a(Class<T> cls, Class<R> cls2, AbstractC4146f<T, R> abstractC4146f) {
            this.f13355a = cls;
            this.f13356b = cls2;
            this.f13357c = abstractC4146f;
        }

        /* renamed from: a */
        public boolean m22764a(Class<?> cls, Class<?> cls2) {
            return this.f13355a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f13356b);
        }
    }

    /* renamed from: c */
    private List<C4361a<?, ?>> m22768c(String str) {
        List<C4361a<?, ?>> list;
        synchronized (this) {
            if (!this.f13353a.contains(str)) {
                this.f13353a.add(str);
            }
            List<C4361a<?, ?>> list2 = this.f13354b.get(str);
            list = list2;
            if (list2 == null) {
                list = new ArrayList<>();
                this.f13354b.put(str, list);
            }
        }
        return list;
    }

    /* renamed from: a */
    public <T, R> void m22770a(String str, AbstractC4146f<T, R> abstractC4146f, Class<T> cls, Class<R> cls2) {
        synchronized (this) {
            m22768c(str).add(new C4361a<>(cls, cls2, abstractC4146f));
        }
    }

    /* renamed from: b */
    public <T, R> List<AbstractC4146f<T, R>> m22769b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f13353a) {
                List<C4361a<?, ?>> list = this.f13354b.get(str);
                if (list != null) {
                    for (C4361a<?, ?> c4361a : list) {
                        if (c4361a.m22764a(cls, cls2)) {
                            arrayList.add(c4361a.f13357c);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public <T, R> List<Class<R>> m22767d(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f13353a) {
                List<C4361a<?, ?>> list = this.f13354b.get(str);
                if (list != null) {
                    for (C4361a<?, ?> c4361a : list) {
                        if (c4361a.m22764a(cls, cls2) && !arrayList.contains(c4361a.f13356b)) {
                            arrayList.add(c4361a.f13356b);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    public <T, R> void m22766e(String str, AbstractC4146f<T, R> abstractC4146f, Class<T> cls, Class<R> cls2) {
        synchronized (this) {
            m22768c(str).add(0, new C4361a<>(cls, cls2, abstractC4146f));
        }
    }

    /* renamed from: f */
    public void m22765f(List<String> list) {
        synchronized (this) {
            ArrayList<String> arrayList = new ArrayList(this.f13353a);
            this.f13353a.clear();
            for (String str : list) {
                this.f13353a.add(str);
            }
            for (String str2 : arrayList) {
                if (!list.contains(str2)) {
                    this.f13353a.add(str2);
                }
            }
        }
    }
}
