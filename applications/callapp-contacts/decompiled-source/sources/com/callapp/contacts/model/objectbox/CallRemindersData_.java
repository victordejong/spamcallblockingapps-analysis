package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.CallRemindersDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRemindersData_.class */
public final class CallRemindersData_ implements c<CallRemindersData> {
    public static final g<CallRemindersData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "CallRemindersData";
    public static final int __ENTITY_ID = 7;
    public static final String __ENTITY_NAME = "CallRemindersData";
    public static final g<CallRemindersData> __ID_PROPERTY;
    public static final CallRemindersData_ __INSTANCE;
    public static final g<CallRemindersData> date;
    public static final g<CallRemindersData> displayName;
    public static final g<CallRemindersData> id;
    public static final g<CallRemindersData> jobStringId;
    public static final g<CallRemindersData> notificationId;
    public static final g<CallRemindersData> notificationTime;
    public static final g<CallRemindersData> phoneAsRaw;
    public static final Class<CallRemindersData> __ENTITY_CLASS = CallRemindersData.class;
    public static final b<CallRemindersData> __CURSOR_FACTORY = new CallRemindersDataCursor.Factory();
    static final CallRemindersDataIdGetter __ID_GETTER = new CallRemindersDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/CallRemindersData_$CallRemindersDataIdGetter.class */
    static final class CallRemindersDataIdGetter implements io.objectbox.b.c<CallRemindersData> {
        CallRemindersDataIdGetter() {
        }

        public final long getId(CallRemindersData callRemindersData) {
            Long id = callRemindersData.getId();
            if (id != null) {
                return id.longValue();
            }
            return 0L;
        }
    }

    static {
        CallRemindersData_ callRemindersData_ = new CallRemindersData_();
        __INSTANCE = callRemindersData_;
        g<CallRemindersData> gVar = new g<>(callRemindersData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<CallRemindersData> gVar2 = new g<>(callRemindersData_, 1, 2, Date.class, "date");
        date = gVar2;
        g<CallRemindersData> gVar3 = new g<>(callRemindersData_, 2, 3, String.class, "displayName");
        displayName = gVar3;
        g<CallRemindersData> gVar4 = new g<>(callRemindersData_, 3, 8, String.class, "phoneAsRaw");
        phoneAsRaw = gVar4;
        g<CallRemindersData> gVar5 = new g<>(callRemindersData_, 4, 10, String.class, "jobStringId");
        jobStringId = gVar5;
        g<CallRemindersData> gVar6 = new g<>(callRemindersData_, 5, 5, Long.class, "notificationTime");
        notificationTime = gVar6;
        g<CallRemindersData> gVar7 = new g<>(callRemindersData_, 6, 6, Long.class, "notificationId");
        notificationId = gVar7;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<CallRemindersData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<CallRemindersData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "CallRemindersData";
    }

    @Override // io.objectbox.c
    public final Class<CallRemindersData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 7;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "CallRemindersData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<CallRemindersData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<CallRemindersData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
