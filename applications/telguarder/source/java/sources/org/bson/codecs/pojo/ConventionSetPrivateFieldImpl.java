package org.bson.codecs.pojo;

import java.lang.reflect.Modifier;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/ConventionSetPrivateFieldImpl.class */
final class ConventionSetPrivateFieldImpl implements Convention {

    /* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/ConventionSetPrivateFieldImpl$PrivatePropertyAccessor.class */
    public static final class PrivatePropertyAccessor<T> implements PropertyAccessor<T> {
        private final PropertyAccessorImpl<T> wrapped;

        private PrivatePropertyAccessor(PropertyAccessorImpl<T> propertyAccessorImpl) {
            this.wrapped = propertyAccessorImpl;
            try {
                propertyAccessorImpl.getPropertyMetadata().getField().setAccessible(true);
            } catch (Exception e) {
                throw new CodecConfigurationException(String.format("Unable to make private field accessible '%s' in %s", propertyAccessorImpl.getPropertyMetadata().getName(), propertyAccessorImpl.getPropertyMetadata().getDeclaringClassName()), e);
            }
        }

        @Override // org.bson.codecs.pojo.PropertyAccessor
        public <S> T get(S s) {
            return this.wrapped.get(s);
        }

        @Override // org.bson.codecs.pojo.PropertyAccessor
        public <S> void set(S s, T t) {
            try {
                this.wrapped.getPropertyMetadata().getField().set(s, t);
            } catch (Exception e) {
                throw new CodecConfigurationException(String.format("Unable to set value for property '%s' in %s", this.wrapped.getPropertyMetadata().getName(), this.wrapped.getPropertyMetadata().getDeclaringClassName()), e);
            }
        }
    }

    private <T> void setPropertyAccessor(PropertyModelBuilder<T> propertyModelBuilder) {
        propertyModelBuilder.propertyAccessor(new PrivatePropertyAccessor((PropertyAccessorImpl) propertyModelBuilder.getPropertyAccessor()));
    }

    @Override // org.bson.codecs.pojo.Convention
    public void apply(ClassModelBuilder<?> classModelBuilder) {
        for (PropertyModelBuilder<?> propertyModelBuilder : classModelBuilder.getPropertyModelBuilders()) {
            if (!(propertyModelBuilder.getPropertyAccessor() instanceof PropertyAccessorImpl)) {
                throw new CodecConfigurationException(String.format("The SET_PRIVATE_FIELDS_CONVENTION is not compatible with propertyModelBuilder instance that have custom implementations of org.bson.codecs.pojo.PropertyAccessor: %s", propertyModelBuilder.getPropertyAccessor().getClass().getName()));
            }
            PropertyMetadata propertyMetadata = ((PropertyAccessorImpl) propertyModelBuilder.getPropertyAccessor()).getPropertyMetadata();
            if (!propertyMetadata.isDeserializable() && propertyMetadata.getField() != null && Modifier.isPrivate(propertyMetadata.getField().getModifiers())) {
                setPropertyAccessor(propertyModelBuilder);
            }
        }
    }
}
