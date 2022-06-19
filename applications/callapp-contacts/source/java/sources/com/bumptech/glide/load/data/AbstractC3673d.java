package com.bumptech.glide.load.data;

import com.bumptech.glide.EnumC3646h;
import com.bumptech.glide.load.EnumC3658a;
/* renamed from: com.bumptech.glide.load.data.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/d.class */
public interface AbstractC3673d<T> {

    /* renamed from: com.bumptech.glide.load.data.d$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/d$a.class */
    public interface AbstractC3674a<T> {
        void onDataReady(T t);

        void onLoadFailed(Exception exc);
    }

    void cancel();

    void cleanup();

    Class<T> getDataClass();

    EnumC3658a getDataSource();

    void loadData(EnumC3646h enumC3646h, AbstractC3674a<? super T> abstractC3674a);
}
