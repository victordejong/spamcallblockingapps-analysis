package com.callapp.contacts.util.model;

import com.callapp.common.util.Objects;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ReflectionUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/model/UpdateFieldBuilder.class */
public class UpdateFieldBuilder<T> {
    protected final ContactData contact;
    protected DataSource dataSource;
    protected final ContactField field;
    protected final String fieldName;
    protected boolean sure;
    protected T value;
    protected long priority = Long.MIN_VALUE;
    protected boolean valueIsForced = false;

    public UpdateFieldBuilder(ContactData contactData, ContactField contactField) {
        this.contact = contactData;
        this.field = contactField;
        this.fieldName = contactField.name();
    }

    public UpdateFieldBuilder<T> defaultValue(T t) {
        if (this.value == null) {
            this.value = t;
        }
        return this;
    }

    public boolean execute() {
        return execute(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean execute(boolean z) {
        boolean isValueChangedAndCanBeUse = isValueChangedAndCanBeUse(this.value, ReflectionUtils.m27423a(this.contact, this.fieldName));
        if (isValueChangedAndCanBeUse || z) {
            CLog.m27597b(UpdateFieldBuilder.class, String.format("Updating %s.%s from data source: %s (old data source: %s)", this.contact.getId(), this.fieldName, this.dataSource, this.contact.getDataSource(this.field)), new Object[0]);
            setValue(this.value, this.dataSource);
            ReflectionUtils.m27422a(this.contact, this.fieldName, this.value);
            this.contact.setDataSource(this.field, this.dataSource);
            this.contact.fireChange(this.field);
        }
        return z || isValueChangedAndCanBeUse;
    }

    public long getDataSourcePriority(T t, Object obj, DataSource dataSource) {
        return PriorityManager.getPriority(dataSource, obj);
    }

    public T getValue() {
        return this.value;
    }

    protected boolean isFieldValueEquals(Object obj, Object obj2) {
        return Objects.m31915a(obj, obj2);
    }

    public boolean isValueChangedAndCanBeUse(T t, T t2) {
        return !isFieldValueEquals(t, t2);
    }

    public boolean isValueSure() {
        return this.sure;
    }

    public void setValue(T t, DataSource dataSource) {
        this.value = t;
        this.dataSource = dataSource;
        this.sure = this.contact.isSure(dataSource);
    }

    public UpdateFieldBuilder<T> useField(Object obj, ContactField contactField, DataSource dataSource) {
        return useField(obj, contactField.name(), dataSource);
    }

    public UpdateFieldBuilder<T> useField(Object obj, DataSource dataSource) {
        return useField(obj, this.fieldName, dataSource);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UpdateFieldBuilder<T> useField(Object obj, String str, DataSource dataSource) {
        return obj != null ? useValue(ReflectionUtils.m27423a(obj, str), obj, dataSource) : this;
    }

    public UpdateFieldBuilder<T> useFieldForced(Object obj, DataSource dataSource) {
        return useFieldForced(obj, dataSource, false);
    }

    public UpdateFieldBuilder<T> useFieldForced(Object obj, DataSource dataSource, boolean z) {
        T t;
        if (obj != null && !this.valueIsForced && (t = (T) ReflectionUtils.m27423a(obj, this.fieldName)) != null) {
            this.value = t;
            this.dataSource = dataSource;
            this.sure = this.contact.isSure(dataSource);
            this.priority = getDataSourcePriority(t, obj, dataSource);
            if (this.sure || !z) {
                this.valueIsForced = true;
            }
        }
        return this;
    }

    public UpdateFieldBuilder<T> useValue(T t, Object obj, DataSource dataSource) {
        if (!this.contact.isOnlySure() || this.contact.isSure(dataSource)) {
            if (t != null && !this.valueIsForced) {
                boolean isSure = this.contact.isSure(dataSource);
                boolean z = false;
                if (isSure && !this.sure) {
                    z = true;
                } else if (isSure == this.sure) {
                    z = getDataSourcePriority(t, obj, dataSource) > this.priority;
                }
                if (z) {
                    this.value = t;
                    this.dataSource = dataSource;
                    this.sure = this.contact.isSure(dataSource);
                    this.priority = getDataSourcePriority(t, obj, dataSource);
                }
            }
            return this;
        }
        return this;
    }
}
