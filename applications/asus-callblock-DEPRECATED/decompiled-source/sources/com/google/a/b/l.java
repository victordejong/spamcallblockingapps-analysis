package com.google.a.b;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/a/b/l.class */
public class l<K, V> extends c<K, V> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final K f3702a;

    /* renamed from: b  reason: collision with root package name */
    private final V f3703b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(K k, V v) {
        this.f3702a = k;
        this.f3703b = v;
    }

    @Override // com.google.a.b.c, java.util.Map.Entry
    public K getKey() {
        return this.f3702a;
    }

    @Override // com.google.a.b.c, java.util.Map.Entry
    public V getValue() {
        return this.f3703b;
    }

    @Override // com.google.a.b.c, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
