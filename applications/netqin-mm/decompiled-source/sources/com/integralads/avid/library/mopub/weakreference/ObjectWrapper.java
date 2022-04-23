package com.integralads.avid.library.mopub.weakreference;

import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/weakreference/ObjectWrapper.class */
public class ObjectWrapper<T> {

    /* renamed from: a */
    public WeakReference<T> f33119a;

    public ObjectWrapper(T t) {
        this.f33119a = new WeakReference<>(t);
    }

    public boolean contains(Object obj) {
        T t = get();
        return (t == null || obj == null || !t.equals(obj)) ? false : true;
    }

    public T get() {
        return this.f33119a.get();
    }

    public boolean isEmpty() {
        return get() == null;
    }

    public void set(T t) {
        this.f33119a = new WeakReference<>(t);
    }
}
