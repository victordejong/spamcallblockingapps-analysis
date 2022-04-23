package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.SingleSmsDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleSmsData_.class */
public final class SingleSmsData_ implements c<SingleSmsData> {
    public static final g<SingleSmsData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SingleSmsData";
    public static final int __ENTITY_ID = 30;
    public static final String __ENTITY_NAME = "SingleSmsData";
    public static final g<SingleSmsData> __ID_PROPERTY;
    public static final SingleSmsData_ __INSTANCE;
    public static final g<SingleSmsData> contactId;
    public static final g<SingleSmsData> fullName;
    public static final g<SingleSmsData> id;
    public static final g<SingleSmsData> phone;
    public static final g<SingleSmsData> smsText;
    public static final Class<SingleSmsData> __ENTITY_CLASS = SingleSmsData.class;
    public static final b<SingleSmsData> __CURSOR_FACTORY = new SingleSmsDataCursor.Factory();
    static final SingleSmsDataIdGetter __ID_GETTER = new SingleSmsDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleSmsData_$SingleSmsDataIdGetter.class */
    static final class SingleSmsDataIdGetter implements io.objectbox.b.c<SingleSmsData> {
        SingleSmsDataIdGetter() {
        }

        public final long getId(SingleSmsData singleSmsData) {
            return singleSmsData.id;
        }
    }

    static {
        SingleSmsData_ singleSmsData_ = new SingleSmsData_();
        __INSTANCE = singleSmsData_;
        g<SingleSmsData> gVar = new g<>(singleSmsData_, 0, 9, Long.TYPE, "id", true, "id");
        id = gVar;
        g<SingleSmsData> gVar2 = new g<>(singleSmsData_, 1, 1, Long.TYPE, Constants.EXTRA_CONTACT_ID);
        contactId = gVar2;
        g<SingleSmsData> gVar3 = new g<>(singleSmsData_, 2, 2, String.class, SingleSmsData.EXTRA_SMS_TEXT);
        smsText = gVar3;
        g<SingleSmsData> gVar4 = new g<>(singleSmsData_, 3, 3, String.class, Constants.EXTRA_PHONE_NUMBER);
        phone = gVar4;
        g<SingleSmsData> gVar5 = new g<>(singleSmsData_, 4, 6, String.class, ContactDetailsActivity.EXTRA_FULL_NAME);
        fullName = gVar5;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<SingleSmsData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<SingleSmsData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "SingleSmsData";
    }

    @Override // io.objectbox.c
    public final Class<SingleSmsData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 30;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "SingleSmsData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<SingleSmsData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<SingleSmsData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
