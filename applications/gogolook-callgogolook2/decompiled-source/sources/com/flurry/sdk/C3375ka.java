package com.flurry.sdk;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* renamed from: com.flurry.sdk.ka */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ka.class */
public final class C3375ka<T> extends WeakReference<T> {
    public C3375ka(T t) {
        super(t);
    }

    public final boolean equals(Object obj) {
        T t = get();
        return obj instanceof Reference ? t.equals(((Reference) obj).get()) : t.equals(obj);
    }

    public final int hashCode() {
        T t = get();
        return t == null ? super.hashCode() : t.hashCode();
    }
}
