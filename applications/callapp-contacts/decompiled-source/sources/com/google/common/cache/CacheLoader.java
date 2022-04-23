package com.google.common.cache;
/* loaded from: classes4-dex2jar.jar:com/google/common/cache/CacheLoader.class */
public abstract class CacheLoader<K, V> {

    /* loaded from: classes4-dex2jar.jar:com/google/common/cache/CacheLoader$InvalidCacheLoadException.class */
    public static final class InvalidCacheLoadException extends RuntimeException {
        public InvalidCacheLoadException(String str) {
            super(str);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/cache/CacheLoader$UnsupportedLoadingOperationException.class */
    public static final class UnsupportedLoadingOperationException extends UnsupportedOperationException {
        UnsupportedLoadingOperationException() {
        }
    }

    protected CacheLoader() {
    }
}
