package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.BirthdayDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BirthdayData_.class */
public final class BirthdayData_ implements AbstractC17957c<BirthdayData> {
    public static final C17978g<BirthdayData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "BirthdayData";
    public static final int __ENTITY_ID = 22;
    public static final String __ENTITY_NAME = "BirthdayData";
    public static final C17978g<BirthdayData> __ID_PROPERTY;
    public static final BirthdayData_ __INSTANCE;
    public static final C17978g<BirthdayData> dayOfMonth;
    public static final C17978g<BirthdayData> displayName;

    /* renamed from: id */
    public static final C17978g<BirthdayData> f26752id;
    public static final C17978g<BirthdayData> month;
    public static final C17978g<BirthdayData> phoneOrIdKey;
    public static final C17978g<BirthdayData> socialNetId;
    public static final C17978g<BirthdayData> socialProfileId;
    public static final Class<BirthdayData> __ENTITY_CLASS = BirthdayData.class;
    public static final AbstractC17949b<BirthdayData> __CURSOR_FACTORY = new BirthdayDataCursor.Factory();
    static final BirthdayDataIdGetter __ID_GETTER = new BirthdayDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/BirthdayData_$BirthdayDataIdGetter.class */
    public static final class BirthdayDataIdGetter implements AbstractC17950c<BirthdayData> {
        BirthdayDataIdGetter() {
        }

        public final long getId(BirthdayData birthdayData) {
            Long l = birthdayData.f26751id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        BirthdayData_ birthdayData_ = new BirthdayData_();
        __INSTANCE = birthdayData_;
        C17978g<BirthdayData> c17978g = new C17978g<>(birthdayData_, 0, 1, Long.class, "id", true, "id");
        f26752id = c17978g;
        C17978g<BirthdayData> c17978g2 = new C17978g<>(birthdayData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<BirthdayData> c17978g3 = new C17978g<>(birthdayData_, 2, 3, Integer.TYPE, "dayOfMonth");
        dayOfMonth = c17978g3;
        C17978g<BirthdayData> c17978g4 = new C17978g<>(birthdayData_, 3, 4, Integer.TYPE, "month");
        month = c17978g4;
        C17978g<BirthdayData> c17978g5 = new C17978g<>(birthdayData_, 4, 5, Integer.TYPE, "socialNetId");
        socialNetId = c17978g5;
        C17978g<BirthdayData> c17978g6 = new C17978g<>(birthdayData_, 5, 6, String.class, "socialProfileId");
        socialProfileId = c17978g6;
        C17978g<BirthdayData> c17978g7 = new C17978g<>(birthdayData_, 6, 7, String.class, "displayName");
        displayName = c17978g7;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<BirthdayData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<BirthdayData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "BirthdayData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<BirthdayData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 22;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "BirthdayData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<BirthdayData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<BirthdayData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
