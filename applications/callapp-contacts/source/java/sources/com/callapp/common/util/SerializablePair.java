package com.callapp.common.util;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/SerializablePair.class */
public class SerializablePair<F extends Serializable, S extends Serializable> implements Serializable {

    /* renamed from: a */
    public final F f19154a;

    /* renamed from: b */
    public final S f19155b;

    public SerializablePair(F f, S s) {
        this.f19154a = f;
        this.f19155b = s;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SerializablePair)) {
            return false;
        }
        SerializablePair serializablePair = (SerializablePair) obj;
        F f = this.f19154a;
        if (f == null) {
            if (serializablePair.f19154a != null) {
                return false;
            }
        } else if (!f.equals(serializablePair.f19154a)) {
            return false;
        }
        S s = this.f19155b;
        return s == null ? serializablePair.f19155b == null : s.equals(serializablePair.f19155b);
    }

    public int hashCode() {
        F f = this.f19154a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f19155b;
        if (s != null) {
            i = s.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public String toString() {
        return "Pair [first=" + this.f19154a + ", second=" + this.f19155b + "]";
    }
}
