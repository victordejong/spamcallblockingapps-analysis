package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.databind.ser.BeanSerializerModifier;
import com.fasterxml.jackson.databind.ser.Serializers;
import com.fasterxml.jackson.databind.util.ArrayIterator;
import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/SerializerFactoryConfig.class */
public final class SerializerFactoryConfig implements Serializable {
    protected final Serializers[] _additionalKeySerializers;
    protected final Serializers[] _additionalSerializers;
    protected final BeanSerializerModifier[] _modifiers;
    protected static final Serializers[] NO_SERIALIZERS = new Serializers[0];
    protected static final BeanSerializerModifier[] NO_MODIFIERS = new BeanSerializerModifier[0];

    public SerializerFactoryConfig() {
        this(null, null, null);
    }

    protected SerializerFactoryConfig(Serializers[] serializersArr, Serializers[] serializersArr2, BeanSerializerModifier[] beanSerializerModifierArr) {
        this._additionalSerializers = serializersArr == null ? NO_SERIALIZERS : serializersArr;
        this._additionalKeySerializers = serializersArr2 == null ? NO_SERIALIZERS : serializersArr2;
        this._modifiers = beanSerializerModifierArr == null ? NO_MODIFIERS : beanSerializerModifierArr;
    }

    public final boolean hasKeySerializers() {
        return this._additionalKeySerializers.length > 0;
    }

    public final boolean hasSerializerModifiers() {
        return this._modifiers.length > 0;
    }

    public final Iterable<Serializers> keySerializers() {
        return new ArrayIterator(this._additionalKeySerializers);
    }

    public final Iterable<BeanSerializerModifier> serializerModifiers() {
        return new ArrayIterator(this._modifiers);
    }

    public final Iterable<Serializers> serializers() {
        return new ArrayIterator(this._additionalSerializers);
    }
}
