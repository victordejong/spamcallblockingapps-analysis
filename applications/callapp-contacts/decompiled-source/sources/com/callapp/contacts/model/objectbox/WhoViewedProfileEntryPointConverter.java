package com.callapp.contacts.model.objectbox;

import io.objectbox.converter.PropertyConverter;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018��2\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0002\u0010\u0007J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/callapp/contacts/model/objectbox/WhoViewedProfileEntryPointConverter;", "Lio/objectbox/converter/PropertyConverter;", "Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;", "", "()V", "convertToDatabaseValue", "entityProperty", "(Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Ljava/lang/Integer;", "convertToEntityProperty", "viewValue", "(Ljava/lang/Integer;)Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/WhoViewedProfileEntryPointConverter.class */
public final class WhoViewedProfileEntryPointConverter implements PropertyConverter<ENTRYPOINT, Integer> {
    public final Integer convertToDatabaseValue(ENTRYPOINT entrypoint) {
        if (entrypoint != null) {
            return Integer.valueOf(entrypoint.getValue());
        }
        return null;
    }

    public final ENTRYPOINT convertToEntityProperty(Integer num) {
        ENTRYPOINT[] values;
        if (num == null) {
            return null;
        }
        for (ENTRYPOINT entrypoint : ENTRYPOINT.values()) {
            int value = entrypoint.getValue();
            if (num != null && value == num.intValue()) {
                return entrypoint;
            }
        }
        return ENTRYPOINT.CALL_LOG_CONTACT_LIST;
    }
}
