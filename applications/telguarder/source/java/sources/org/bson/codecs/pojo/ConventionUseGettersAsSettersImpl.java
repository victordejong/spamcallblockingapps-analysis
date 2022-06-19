package org.bson.codecs.pojo;

import java.util.Collection;
import java.util.Map;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/ConventionUseGettersAsSettersImpl.class */
final class ConventionUseGettersAsSettersImpl implements Convention {

    /* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/ConventionUseGettersAsSettersImpl$PrivatePropertyAccessor.class */
    public static final class PrivatePropertyAccessor<T> implements PropertyAccessor<T> {
        private final PropertyAccessorImpl<T> wrapped;

        private PrivatePropertyAccessor(PropertyAccessorImpl<T> propertyAccessorImpl) {
            this.wrapped = propertyAccessorImpl;
        }

        private <S> void mutateCollection(S s, Collection collection) {
            Collection collection2 = (Collection) get(s);
            if (collection2 == null) {
                throwCodecConfigurationException("The getter returned null.", null);
            } else if (!collection2.isEmpty()) {
                throwCodecConfigurationException("The getter returned a non empty collection.", null);
            } else {
                try {
                    collection2.addAll(collection);
                } catch (Exception e) {
                    throwCodecConfigurationException("collection#addAll failed.", e);
                }
            }
        }

        private <S> void mutateMap(S s, Map map) {
            Map map2 = (Map) get(s);
            if (map2 == null) {
                throwCodecConfigurationException("The getter returned null.", null);
            } else if (!map2.isEmpty()) {
                throwCodecConfigurationException("The getter returned a non empty map.", null);
            } else {
                try {
                    map2.putAll(map);
                } catch (Exception e) {
                    throwCodecConfigurationException("map#putAll failed.", e);
                }
            }
        }

        private void throwCodecConfigurationException(String str, Exception exc) {
            throw new CodecConfigurationException(String.format("Cannot use getter in '%s' to set '%s'. %s", this.wrapped.getPropertyMetadata().getDeclaringClassName(), this.wrapped.getPropertyMetadata().getName(), str), exc);
        }

        @Override // org.bson.codecs.pojo.PropertyAccessor
        public <S> T get(S s) {
            return this.wrapped.get(s);
        }

        @Override // org.bson.codecs.pojo.PropertyAccessor
        public <S> void set(S s, T t) {
            if (t instanceof Collection) {
                mutateCollection(s, (Collection) t);
            } else if (t instanceof Map) {
                mutateMap(s, (Map) t);
            } else {
                throwCodecConfigurationException(String.format("Unexpected type: '%s'", t.getClass()), null);
            }
        }
    }

    private <T> boolean isMapOrCollection(Class<T> cls) {
        return Collection.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls);
    }

    private <T> void setPropertyAccessor(PropertyModelBuilder<T> propertyModelBuilder) {
        propertyModelBuilder.propertyAccessor(new PrivatePropertyAccessor((PropertyAccessorImpl) propertyModelBuilder.getPropertyAccessor()));
    }

    @Override // org.bson.codecs.pojo.Convention
    public void apply(ClassModelBuilder<?> classModelBuilder) {
        for (PropertyModelBuilder<?> propertyModelBuilder : classModelBuilder.getPropertyModelBuilders()) {
            if (!(propertyModelBuilder.getPropertyAccessor() instanceof PropertyAccessorImpl)) {
                throw new CodecConfigurationException(String.format("The USE_GETTER_AS_SETTER_CONVENTION is not compatible with propertyModelBuilder instance that have custom implementations of org.bson.codecs.pojo.PropertyAccessor: %s", propertyModelBuilder.getPropertyAccessor().getClass().getName()));
            }
            PropertyMetadata propertyMetadata = ((PropertyAccessorImpl) propertyModelBuilder.getPropertyAccessor()).getPropertyMetadata();
            if (!propertyMetadata.isDeserializable() && propertyMetadata.isSerializable() && isMapOrCollection(propertyMetadata.getTypeData().getType())) {
                setPropertyAccessor(propertyModelBuilder);
            }
        }
    }
}
