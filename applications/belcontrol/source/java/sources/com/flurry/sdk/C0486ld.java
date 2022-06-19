package com.flurry.sdk;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* renamed from: com.flurry.sdk.ld */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/ld.class */
public final class C0486ld<T> extends WeakReference<T> {
    public C0486ld(T t) {
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
