package com.bumptech.glide.d;

import com.bumptech.glide.load.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f7253a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, List<a<?, ?>>> f7254b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/d/e$a.class */
    public static final class a<T, R> {

        /* renamed from: a  reason: collision with root package name */
        final Class<R> f7255a;

        /* renamed from: b  reason: collision with root package name */
        final j<T, R> f7256b;

        /* renamed from: c  reason: collision with root package name */
        private final Class<T> f7257c;

        public a(Class<T> cls, Class<R> cls2, j<T, R> jVar) {
            this.f7257c = cls;
            this.f7255a = cls2;
            this.f7256b = jVar;
        }

        public final boolean a(Class<?> cls, Class<?> cls2) {
            return this.f7257c.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f7255a);
        }
    }

    private List<a<?, ?>> a(String str) {
        List<a<?, ?>> list;
        synchronized (this) {
            if (!this.f7253a.contains(str)) {
                this.f7253a.add(str);
            }
            List<a<?, ?>> list2 = this.f7254b.get(str);
            list = list2;
            if (list2 == null) {
                list = new ArrayList<>();
                this.f7254b.put(str, list);
            }
        }
        return list;
    }

    public final <T, R> List<j<T, R>> a(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f7253a) {
                List<a<?, ?>> list = this.f7254b.get(str);
                if (list != null) {
                    for (a<?, ?> aVar : list) {
                        if (aVar.a(cls, cls2)) {
                            arrayList.add(aVar.f7256b);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public final <T, R> void a(String str, j<T, R> jVar, Class<T> cls, Class<R> cls2) {
        synchronized (this) {
            a(str).add(new a<>(cls, cls2, jVar));
        }
    }

    public final void a(List<String> list) {
        synchronized (this) {
            ArrayList<String> arrayList = new ArrayList(this.f7253a);
            this.f7253a.clear();
            for (String str : list) {
                this.f7253a.add(str);
            }
            for (String str2 : arrayList) {
                if (!list.contains(str2)) {
                    this.f7253a.add(str2);
                }
            }
        }
    }

    public final <T, R> List<Class<R>> b(Class<T> cls, Class<R> cls2) {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            for (String str : this.f7253a) {
                List<a<?, ?>> list = this.f7254b.get(str);
                if (list != null) {
                    for (a<?, ?> aVar : list) {
                        if (aVar.a(cls, cls2) && !arrayList.contains(aVar.f7255a)) {
                            arrayList.add(aVar.f7255a);
                        }
                    }
                }
            }
        }
        return arrayList;
    }
}
