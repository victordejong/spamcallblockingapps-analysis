package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.framework.util.StringUtils;
import io.objectbox.converter.PropertyConverter;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/DataSourceConverter.class */
public class DataSourceConverter implements PropertyConverter<DataSource, String> {
    public String convertToDatabaseValue(DataSource dataSource) {
        if (dataSource == null) {
            return null;
        }
        return dataSource.name();
    }

    public DataSource convertToEntityProperty(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return null;
        }
        try {
            return DataSource.valueOf(str);
        } catch (IllegalArgumentException e) {
            return null;
        }
    }
}
