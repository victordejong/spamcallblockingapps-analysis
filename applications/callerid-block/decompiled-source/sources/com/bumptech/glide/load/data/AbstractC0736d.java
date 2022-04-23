package com.bumptech.glide.load.data;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
/* renamed from: com.bumptech.glide.load.data.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/d.class */
public interface AbstractC0736d<T> {

    /* renamed from: com.bumptech.glide.load.data.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/d$a.class */
    public interface AbstractC0737a<T> {
        /* renamed from: c */
        void m11185c(Exception exc);

        /* renamed from: d */
        void m11184d(T t);
    }

    /* renamed from: a */
    Class<T> m11189a();

    /* renamed from: b */
    void m11188b();

    void cancel();

    /* renamed from: e */
    DataSource m11187e();

    /* renamed from: f */
    void m11186f(Priority priority, AbstractC0737a<? super T> aVar);
}
