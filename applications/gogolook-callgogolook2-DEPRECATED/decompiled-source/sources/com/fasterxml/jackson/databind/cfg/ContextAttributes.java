package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/cfg/ContextAttributes.class */
public abstract class ContextAttributes {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/cfg/ContextAttributes$Impl.class */
    public static class Impl extends ContextAttributes implements Serializable {
        public static final Impl EMPTY = new Impl(Collections.emptyMap());
        public static final Object NULL_SURROGATE = new Object();
        public transient Map<Object, Object> _nonShared;
        public final Map<?, ?> _shared;

        public Impl(Map<?, ?> map) {
            this._shared = map;
            this._nonShared = null;
        }

        public Impl(Map<?, ?> map, Map<Object, Object> map2) {
            this._shared = map;
            this._nonShared = map2;
        }

        public static ContextAttributes getEmpty() {
            return EMPTY;
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public Object getAttribute(Object obj) {
            Object obj2;
            Map<Object, Object> map = this._nonShared;
            if (map == null || (obj2 = map.get(obj)) == null) {
                return this._shared.get(obj);
            }
            if (obj2 == NULL_SURROGATE) {
                return null;
            }
            return obj2;
        }

        public ContextAttributes nonSharedInstance(Object obj, Object obj2) {
            HashMap hashMap = new HashMap();
            Object obj3 = obj2;
            if (obj2 == null) {
                obj3 = NULL_SURROGATE;
            }
            hashMap.put(obj, obj3);
            return new Impl(this._shared, hashMap);
        }

        @Override // com.fasterxml.jackson.databind.cfg.ContextAttributes
        public ContextAttributes withPerCallAttribute(Object obj, Object obj2) {
            Object obj3 = obj2;
            if (obj2 == null) {
                if (!this._shared.containsKey(obj)) {
                    return this;
                }
                obj3 = NULL_SURROGATE;
            }
            Map<Object, Object> map = this._nonShared;
            if (map == null) {
                return nonSharedInstance(obj, obj3);
            }
            map.put(obj, obj3);
            return this;
        }
    }

    public static ContextAttributes getEmpty() {
        return Impl.getEmpty();
    }

    public abstract Object getAttribute(Object obj);

    public abstract ContextAttributes withPerCallAttribute(Object obj, Object obj2);
}
