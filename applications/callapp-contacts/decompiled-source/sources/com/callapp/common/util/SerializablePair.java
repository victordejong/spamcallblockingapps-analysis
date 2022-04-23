package com.callapp.common.util;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/callapp/common/util/SerializablePair.class */
public class SerializablePair<F extends Serializable, S extends Serializable> implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final F f10397a;

    /* renamed from: b  reason: collision with root package name */
    public final S f10398b;

    public SerializablePair(F f, S s) {
        this.f10397a = f;
        this.f10398b = s;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SerializablePair)) {
            return false;
        }
        SerializablePair serializablePair = (SerializablePair) obj;
        F f = this.f10397a;
        if (f == null) {
            if (serializablePair.f10397a != null) {
                return false;
            }
        } else if (!f.equals(serializablePair.f10397a)) {
            return false;
        }
        S s = this.f10398b;
        return s == null ? serializablePair.f10398b == null : s.equals(serializablePair.f10398b);
    }

    public int hashCode() {
        F f = this.f10397a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f10398b;
        if (s != null) {
            i = s.hashCode();
        }
        return ((hashCode + 31) * 31) + i;
    }

    public String toString() {
        return "Pair [first=" + this.f10397a + ", second=" + this.f10398b + "]";
    }
}
