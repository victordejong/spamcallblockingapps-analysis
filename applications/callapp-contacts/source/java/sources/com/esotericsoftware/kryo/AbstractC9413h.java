package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
/* renamed from: com.esotericsoftware.kryo.h */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/h.class */
public abstract class AbstractC9413h<T> {
    private boolean acceptsNull;
    private boolean immutable;

    public AbstractC9413h() {
    }

    public AbstractC9413h(boolean z) {
        this.acceptsNull = z;
    }

    public AbstractC9413h(boolean z, boolean z2) {
        this.acceptsNull = z;
        this.immutable = z2;
    }

    public T copy(C9380c c9380c, T t) {
        if (isImmutable()) {
            return t;
        }
        throw new KryoException("Serializer does not support copy: " + getClass().getName());
    }

    public boolean getAcceptsNull() {
        return this.acceptsNull;
    }

    public boolean isImmutable() {
        return this.immutable;
    }

    public abstract T read(C9380c c9380c, C9374a c9374a, Class<? extends T> cls);

    public void setAcceptsNull(boolean z) {
        this.acceptsNull = z;
    }

    public void setImmutable(boolean z) {
        this.immutable = z;
    }

    public abstract void write(C9380c c9380c, C9376c c9376c, T t);
}
