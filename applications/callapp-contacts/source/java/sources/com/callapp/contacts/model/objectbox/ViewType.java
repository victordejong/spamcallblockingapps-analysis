package com.callapp.contacts.model.objectbox;

import io.objectbox.converter.PropertyConverter;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018��2\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0002\u0010\u0007J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, m4298d2 = {"Lcom/callapp/contacts/model/objectbox/ViewType;", "Lio/objectbox/converter/PropertyConverter;", "Lcom/callapp/contacts/model/objectbox/TYPE;", "", "()V", "convertToDatabaseValue", "entityProperty", "(Lcom/callapp/contacts/model/objectbox/TYPE;)Ljava/lang/Integer;", "convertToEntityProperty", "viewValue", "(Ljava/lang/Integer;)Lcom/callapp/contacts/model/objectbox/TYPE;", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ViewType.class */
public final class ViewType implements PropertyConverter<TYPE, Integer> {
    public final Integer convertToDatabaseValue(TYPE type) {
        if (type != null) {
            return Integer.valueOf(type.getValue());
        }
        return null;
    }

    public final TYPE convertToEntityProperty(Integer num) {
        TYPE[] values;
        if (num == null) {
            return null;
        }
        for (TYPE type : TYPE.values()) {
            int value = type.getValue();
            if (num != null && value == num.intValue()) {
                return type;
            }
        }
        return TYPE.MYVIEW;
    }
}
