package com.yanzhenjie.nohttp.tools;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/CacheStore.class */
public interface CacheStore<T> {
    boolean clear();

    T get(String str);

    boolean remove(String str);

    T replace(String str, T t);
}
