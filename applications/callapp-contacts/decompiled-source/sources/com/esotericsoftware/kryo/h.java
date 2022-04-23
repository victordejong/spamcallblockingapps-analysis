package com.esotericsoftware.kryo;

import com.esotericsoftware.kryo.a.a;
import com.esotericsoftware.kryo.a.c;
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/kryo/h.class */
public abstract class h<T> {
    private boolean acceptsNull;
    private boolean immutable;

    public h() {
    }

    public h(boolean z) {
        this.acceptsNull = z;
    }

    public h(boolean z, boolean z2) {
        this.acceptsNull = z;
        this.immutable = z2;
    }

    public T copy(c cVar, T t) {
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

    public abstract T read(c cVar, a aVar, Class<? extends T> cls);

    public void setAcceptsNull(boolean z) {
        this.acceptsNull = z;
    }

    public void setImmutable(boolean z) {
        this.immutable = z;
    }

    public abstract void write(c cVar, c cVar2, T t);
}
