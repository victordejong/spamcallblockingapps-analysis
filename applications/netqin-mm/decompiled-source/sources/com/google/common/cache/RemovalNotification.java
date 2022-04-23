package com.google.common.cache;

import java.util.AbstractMap;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/cache/RemovalNotification.class */
public final class RemovalNotification<K, V> extends AbstractMap.SimpleImmutableEntry<K, V> {
    public static final long serialVersionUID = 0;
    public final RemovalCause cause;

    public RemovalNotification(K k, V v, RemovalCause removalCause) {
        super(k, v);
        C4933n.m24795a(removalCause);
        this.cause = removalCause;
    }

    public static <K, V> RemovalNotification<K, V> create(K k, V v, RemovalCause removalCause) {
        return new RemovalNotification<>(k, v, removalCause);
    }

    public RemovalCause getCause() {
        return this.cause;
    }

    public boolean wasEvicted() {
        return this.cause.wasEvicted();
    }
}
