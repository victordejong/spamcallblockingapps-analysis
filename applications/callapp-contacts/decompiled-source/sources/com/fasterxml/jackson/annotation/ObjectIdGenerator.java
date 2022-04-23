package com.fasterxml.jackson.annotation;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/ObjectIdGenerator.class */
public abstract class ObjectIdGenerator<T> implements Serializable {

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey.class */
    public static final class IdKey implements Serializable {
        private final int hashCode;
        public final Object key;
        public final Class<?> scope;
        public final Class<?> type;

        public IdKey(Class<?> cls, Class<?> cls2, Object obj) {
            if (obj != null) {
                this.type = cls;
                this.scope = cls2;
                this.key = obj;
                int hashCode = obj.hashCode() + cls.getName().hashCode();
                this.hashCode = cls2 != null ? hashCode ^ cls2.getName().hashCode() : hashCode;
                return;
            }
            throw new IllegalArgumentException("Can not construct IdKey for null key");
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != getClass()) {
                return false;
            }
            IdKey idKey = (IdKey) obj;
            return idKey.key.equals(this.key) && idKey.type == this.type && idKey.scope == this.scope;
        }

        public final int hashCode() {
            return this.hashCode;
        }

        public final String toString() {
            Object obj = this.key;
            Class<?> cls = this.type;
            String str = "NONE";
            String name = cls == null ? "NONE" : cls.getName();
            Class<?> cls2 = this.scope;
            if (cls2 != null) {
                str = cls2.getName();
            }
            return String.format("[ObjectId: key=%s, type=%s, scope=%s]", obj, name, str);
        }
    }

    public abstract boolean canUseFor(ObjectIdGenerator<?> objectIdGenerator);

    public abstract ObjectIdGenerator<T> forScope(Class<?> cls);

    public abstract T generateId(Object obj);

    public abstract Class<?> getScope();

    public boolean isValidReferencePropertyName(String str, Object obj) {
        return false;
    }

    public abstract IdKey key(Object obj);

    public boolean maySerializeAsObject() {
        return false;
    }

    public abstract ObjectIdGenerator<T> newForSerialization(Object obj);
}
