package com.bumptech.glide.load.data;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
/* renamed from: com.bumptech.glide.load.data.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/d.class */
public interface AbstractC4007d<T> {

    /* renamed from: com.bumptech.glide.load.data.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/d$a.class */
    public interface AbstractC4008a<T> {
        /* renamed from: c */
        void mo23127c(Exception exc);

        /* renamed from: f */
        void mo23126f(T t);
    }

    /* renamed from: a */
    Class<T> mo23090a();

    /* renamed from: b */
    void mo23089b();

    void cancel();

    /* renamed from: d */
    DataSource mo23087d();

    /* renamed from: e */
    void mo23086e(Priority priority, AbstractC4008a<? super T> abstractC4008a);
}
