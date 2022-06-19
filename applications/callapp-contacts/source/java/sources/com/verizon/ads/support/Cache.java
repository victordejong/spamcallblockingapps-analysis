package com.verizon.ads.support;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/Cache.class */
public interface Cache<T> {

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/support/Cache$TrimStrategy.class */
    public interface TrimStrategy {
    }

    void add(T t);

    T remove();

    int size();

    void trim(TrimStrategy trimStrategy, int i);
}
