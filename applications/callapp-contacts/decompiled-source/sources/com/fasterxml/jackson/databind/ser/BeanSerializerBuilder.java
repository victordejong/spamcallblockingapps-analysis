package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.ser.impl.ObjectIdWriter;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/BeanSerializerBuilder.class */
public class BeanSerializerBuilder {
    private static final BeanPropertyWriter[] NO_PROPERTIES = new BeanPropertyWriter[0];
    protected AnyGetterWriter _anyGetter;
    protected final BeanDescription _beanDesc;
    protected SerializationConfig _config;
    protected Object _filterId;
    protected BeanPropertyWriter[] _filteredProperties;
    protected ObjectIdWriter _objectIdWriter;
    protected List<BeanPropertyWriter> _properties;
    protected AnnotatedMember _typeId;

    public BeanSerializerBuilder(BeanDescription beanDescription) {
        this._properties = Collections.emptyList();
        this._beanDesc = beanDescription;
    }

    protected BeanSerializerBuilder(BeanSerializerBuilder beanSerializerBuilder) {
        this._properties = Collections.emptyList();
        this._beanDesc = beanSerializerBuilder._beanDesc;
        this._properties = beanSerializerBuilder._properties;
        this._filteredProperties = beanSerializerBuilder._filteredProperties;
        this._anyGetter = beanSerializerBuilder._anyGetter;
        this._filterId = beanSerializerBuilder._filterId;
    }

    public JsonSerializer<?> build() {
        BeanPropertyWriter[] beanPropertyWriterArr;
        if (this._typeId != null && this._config.isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
            this._typeId.fixAccess(this._config.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        AnyGetterWriter anyGetterWriter = this._anyGetter;
        if (anyGetterWriter != null) {
            anyGetterWriter.fixAccess(this._config);
        }
        List<BeanPropertyWriter> list = this._properties;
        if (list != null && !list.isEmpty()) {
            List<BeanPropertyWriter> list2 = this._properties;
            BeanPropertyWriter[] beanPropertyWriterArr2 = (BeanPropertyWriter[]) list2.toArray(new BeanPropertyWriter[list2.size()]);
            beanPropertyWriterArr = beanPropertyWriterArr2;
            if (this._config.isEnabled(MapperFeature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
                int length = beanPropertyWriterArr2.length;
                int i = 0;
                while (true) {
                    beanPropertyWriterArr = beanPropertyWriterArr2;
                    if (i >= length) {
                        break;
                    }
                    beanPropertyWriterArr2[i].fixAccess(this._config);
                    i++;
                }
            }
        } else if (this._anyGetter == null && this._objectIdWriter == null) {
            return null;
        } else {
            beanPropertyWriterArr = NO_PROPERTIES;
        }
        BeanPropertyWriter[] beanPropertyWriterArr3 = this._filteredProperties;
        if (beanPropertyWriterArr3 == null || beanPropertyWriterArr3.length == this._properties.size()) {
            return new BeanSerializer(this._beanDesc.getType(), this, beanPropertyWriterArr, this._filteredProperties);
        }
        throw new IllegalStateException(String.format("Mismatch between `properties` size (%d), `filteredProperties` (%s): should have as many (or `null` for latter)", Integer.valueOf(this._properties.size()), Integer.valueOf(this._filteredProperties.length)));
    }

    public BeanSerializer createDummy() {
        return BeanSerializer.createDummy(this._beanDesc.getType(), this);
    }

    public AnyGetterWriter getAnyGetter() {
        return this._anyGetter;
    }

    public BeanDescription getBeanDescription() {
        return this._beanDesc;
    }

    public Object getFilterId() {
        return this._filterId;
    }

    public ObjectIdWriter getObjectIdWriter() {
        return this._objectIdWriter;
    }

    public List<BeanPropertyWriter> getProperties() {
        return this._properties;
    }

    public AnnotatedMember getTypeId() {
        return this._typeId;
    }

    public void setAnyGetter(AnyGetterWriter anyGetterWriter) {
        this._anyGetter = anyGetterWriter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setConfig(SerializationConfig serializationConfig) {
        this._config = serializationConfig;
    }

    public void setFilterId(Object obj) {
        this._filterId = obj;
    }

    public void setFilteredProperties(BeanPropertyWriter[] beanPropertyWriterArr) {
        if (beanPropertyWriterArr == null || beanPropertyWriterArr.length == this._properties.size()) {
            this._filteredProperties = beanPropertyWriterArr;
            return;
        }
        throw new IllegalArgumentException(String.format("Trying to set %d filtered properties; must match length of non-filtered `properties` (%d)", Integer.valueOf(beanPropertyWriterArr.length), Integer.valueOf(this._properties.size())));
    }

    public void setObjectIdWriter(ObjectIdWriter objectIdWriter) {
        this._objectIdWriter = objectIdWriter;
    }

    public void setProperties(List<BeanPropertyWriter> list) {
        this._properties = list;
    }

    public void setTypeId(AnnotatedMember annotatedMember) {
        if (this._typeId == null) {
            this._typeId = annotatedMember;
            return;
        }
        throw new IllegalArgumentException("Multiple type ids specified with " + this._typeId + " and " + annotatedMember);
    }
}
