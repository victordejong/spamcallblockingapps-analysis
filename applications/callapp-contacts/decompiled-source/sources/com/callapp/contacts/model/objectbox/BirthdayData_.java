package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.BirthdayDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BirthdayData_.class */
public final class BirthdayData_ implements c<BirthdayData> {
    public static final g<BirthdayData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "BirthdayData";
    public static final int __ENTITY_ID = 22;
    public static final String __ENTITY_NAME = "BirthdayData";
    public static final g<BirthdayData> __ID_PROPERTY;
    public static final BirthdayData_ __INSTANCE;
    public static final g<BirthdayData> dayOfMonth;
    public static final g<BirthdayData> displayName;
    public static final g<BirthdayData> id;
    public static final g<BirthdayData> month;
    public static final g<BirthdayData> phoneOrIdKey;
    public static final g<BirthdayData> socialNetId;
    public static final g<BirthdayData> socialProfileId;
    public static final Class<BirthdayData> __ENTITY_CLASS = BirthdayData.class;
    public static final b<BirthdayData> __CURSOR_FACTORY = new BirthdayDataCursor.Factory();
    static final BirthdayDataIdGetter __ID_GETTER = new BirthdayDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter.class */
    static final class BirthdayDataIdGetter implements io.objectbox.b.c<BirthdayData> {
        BirthdayDataIdGetter() {
        }

        public final long getId(BirthdayData birthdayData) {
            Long l = birthdayData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        BirthdayData_ birthdayData_ = new BirthdayData_();
        __INSTANCE = birthdayData_;
        g<BirthdayData> gVar = new g<>(birthdayData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<BirthdayData> gVar2 = new g<>(birthdayData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<BirthdayData> gVar3 = new g<>(birthdayData_, 2, 3, Integer.TYPE, "dayOfMonth");
        dayOfMonth = gVar3;
        g<BirthdayData> gVar4 = new g<>(birthdayData_, 3, 4, Integer.TYPE, "month");
        month = gVar4;
        g<BirthdayData> gVar5 = new g<>(birthdayData_, 4, 5, Integer.TYPE, "socialNetId");
        socialNetId = gVar5;
        g<BirthdayData> gVar6 = new g<>(birthdayData_, 5, 6, String.class, "socialProfileId");
        socialProfileId = gVar6;
        g<BirthdayData> gVar7 = new g<>(birthdayData_, 6, 7, String.class, "displayName");
        displayName = gVar7;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<BirthdayData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<BirthdayData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "BirthdayData";
    }

    @Override // io.objectbox.c
    public final Class<BirthdayData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 22;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "BirthdayData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<BirthdayData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<BirthdayData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
