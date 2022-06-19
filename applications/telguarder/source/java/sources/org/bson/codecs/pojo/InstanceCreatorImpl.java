package org.bson.codecs.pojo;

import com.j256.ormlite.field.FieldType;
import java.util.HashMap;
import java.util.Map;
import org.bson.codecs.configuration.CodecConfigurationException;
/* loaded from: classes-dex2jar.jar:org/bson/codecs/pojo/InstanceCreatorImpl.class */
final class InstanceCreatorImpl<T> implements InstanceCreator<T> {
    private final Map<PropertyModel<?>, Object> cachedValues;
    private final CreatorExecutable<T> creatorExecutable;
    private T newInstance;
    private final Object[] params;
    private final Map<String, Integer> properties;

    public InstanceCreatorImpl(CreatorExecutable<T> creatorExecutable) {
        this.creatorExecutable = creatorExecutable;
        if (creatorExecutable.getProperties().isEmpty()) {
            this.cachedValues = null;
            this.properties = null;
            this.params = null;
            this.newInstance = creatorExecutable.getInstance();
            return;
        }
        this.cachedValues = new HashMap();
        this.properties = new HashMap();
        for (int i = 0; i < creatorExecutable.getProperties().size(); i++) {
            if (creatorExecutable.getIdPropertyIndex() == null || creatorExecutable.getIdPropertyIndex().intValue() != i) {
                this.properties.put(creatorExecutable.getProperties().get(i).value(), Integer.valueOf(i));
            } else {
                this.properties.put(FieldType.FOREIGN_ID_FIELD_SUFFIX, creatorExecutable.getIdPropertyIndex());
            }
        }
        this.params = new Object[this.properties.size()];
    }

    private void constructInstanceAndProcessCachedValues() {
        try {
            this.newInstance = this.creatorExecutable.getInstance(this.params);
            for (Map.Entry<PropertyModel<?>, Object> entry : this.cachedValues.entrySet()) {
                setPropertyValue(entry.getKey(), entry.getValue());
            }
        } catch (Exception e) {
            throw new CodecConfigurationException(e.getMessage(), e);
        }
    }

    private <S> void setPropertyValue(PropertyModel<S> propertyModel, Object obj) {
        set(obj, propertyModel);
    }

    @Override // org.bson.codecs.pojo.InstanceCreator
    public T getInstance() {
        if (this.newInstance == null) {
            try {
                for (Map.Entry<String, Integer> entry : this.properties.entrySet()) {
                    this.params[entry.getValue().intValue()] = null;
                }
                constructInstanceAndProcessCachedValues();
            } catch (CodecConfigurationException e) {
                throw new CodecConfigurationException(String.format("Could not construct new instance of: %s. Missing the following properties: %s", this.creatorExecutable.getType().getSimpleName(), this.properties.keySet()), e);
            }
        }
        return this.newInstance;
    }

    @Override // org.bson.codecs.pojo.InstanceCreator
    public <S> void set(S s, PropertyModel<S> propertyModel) {
        if (this.newInstance != null) {
            propertyModel.getPropertyAccessor().set(this.newInstance, s);
            return;
        }
        if (!this.properties.isEmpty()) {
            String writeName = propertyModel.getWriteName();
            String str = writeName;
            if (!this.properties.containsKey(writeName)) {
                str = propertyModel.getName();
            }
            Integer num = this.properties.get(str);
            if (num != null) {
                this.params[num.intValue()] = s;
            }
            this.properties.remove(str);
        }
        if (this.properties.isEmpty()) {
            constructInstanceAndProcessCachedValues();
        } else {
            this.cachedValues.put(propertyModel, s);
        }
    }
}
