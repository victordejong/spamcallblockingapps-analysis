package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/ReadableObjectId.class */
public class ReadableObjectId {
    public final ObjectIdGenerator.IdKey _key;
    public LinkedList<Referring> _referringProperties;
    public ObjectIdResolver _resolver;
    @Deprecated

    /* renamed from: id */
    public final Object f3805id;

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring.class */
    public static abstract class Referring {
        public final Class<?> _beanType;
        public final UnresolvedForwardReference _reference;

        public Referring(UnresolvedForwardReference unresolvedForwardReference, Class<?> cls) {
            this._reference = unresolvedForwardReference;
            this._beanType = cls;
        }

        public Class<?> getBeanType() {
            return this._beanType;
        }

        public JsonLocation getLocation() {
            return this._reference.getLocation();
        }

        public abstract void handleResolvedForwardReference(Object obj, Object obj2) throws IOException;

        public boolean hasId(Object obj) {
            return obj.equals(this._reference.getUnresolvedId());
        }
    }

    public ReadableObjectId(ObjectIdGenerator.IdKey idKey) {
        this._key = idKey;
        this.f3805id = idKey.key;
    }

    public void appendReferring(Referring referring) {
        if (this._referringProperties == null) {
            this._referringProperties = new LinkedList<>();
        }
        this._referringProperties.add(referring);
    }

    public void bindItem(Object obj) throws IOException {
        this._resolver.bindItem(this._key, obj);
        LinkedList<Referring> linkedList = this._referringProperties;
        if (linkedList != null) {
            Iterator<Referring> it = linkedList.iterator();
            this._referringProperties = null;
            while (it.hasNext()) {
                it.next().handleResolvedForwardReference(this.f3805id, obj);
            }
        }
    }

    public ObjectIdGenerator.IdKey getKey() {
        return this._key;
    }

    public boolean hasReferringProperties() {
        LinkedList<Referring> linkedList = this._referringProperties;
        return linkedList != null && !linkedList.isEmpty();
    }

    public Iterator<Referring> referringProperties() {
        LinkedList<Referring> linkedList = this._referringProperties;
        return linkedList == null ? Collections.emptyList().iterator() : linkedList.iterator();
    }

    public Object resolve() {
        return this._resolver.resolveId(this._key);
    }

    public void setResolver(ObjectIdResolver objectIdResolver) {
        this._resolver = objectIdResolver;
    }

    public String toString() {
        return String.valueOf(this._key);
    }

    public boolean tryToResolveUnresolved(DeserializationContext deserializationContext) {
        return false;
    }
}
