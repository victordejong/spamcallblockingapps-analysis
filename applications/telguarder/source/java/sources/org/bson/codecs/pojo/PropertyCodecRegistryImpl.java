package org.bson.codecs.pojo;

import java.util.ArrayList;
import java.util.List;
import org.bson.codecs.Codec;
import org.bson.codecs.configuration.CodecRegistry;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/PropertyCodecRegistryImpl.class */
class PropertyCodecRegistryImpl implements PropertyCodecRegistry {
    private final List<PropertyCodecProvider> propertyCodecProviders;

    public PropertyCodecRegistryImpl(PojoCodec<?> pojoCodec, CodecRegistry codecRegistry, List<PropertyCodecProvider> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new CollectionPropertyCodecProvider());
        arrayList.add(new MapPropertyCodecProvider());
        arrayList.add(new EnumPropertyCodecProvider(codecRegistry));
        arrayList.add(new FallbackPropertyCodecProvider(pojoCodec, codecRegistry));
        this.propertyCodecProviders = arrayList;
    }

    @Override // org.bson.codecs.pojo.PropertyCodecRegistry
    public <S> Codec<S> get(TypeWithTypeParameters<S> typeWithTypeParameters) {
        for (PropertyCodecProvider propertyCodecProvider : this.propertyCodecProviders) {
            Codec<S> codec = propertyCodecProvider.get(typeWithTypeParameters, this);
            if (codec != null) {
                return codec;
            }
        }
        return null;
    }
}
