package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.SingleSmsDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleSmsData_.class */
public final class SingleSmsData_ implements AbstractC17957c<SingleSmsData> {
    public static final C17978g<SingleSmsData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SingleSmsData";
    public static final int __ENTITY_ID = 30;
    public static final String __ENTITY_NAME = "SingleSmsData";
    public static final C17978g<SingleSmsData> __ID_PROPERTY;
    public static final SingleSmsData_ __INSTANCE;
    public static final C17978g<SingleSmsData> contactId;
    public static final C17978g<SingleSmsData> fullName;

    /* renamed from: id */
    public static final C17978g<SingleSmsData> f26798id;
    public static final C17978g<SingleSmsData> phone;
    public static final C17978g<SingleSmsData> smsText;
    public static final Class<SingleSmsData> __ENTITY_CLASS = SingleSmsData.class;
    public static final AbstractC17949b<SingleSmsData> __CURSOR_FACTORY = new SingleSmsDataCursor.Factory();
    static final SingleSmsDataIdGetter __ID_GETTER = new SingleSmsDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/SingleSmsData_$SingleSmsDataIdGetter.class */
    public static final class SingleSmsDataIdGetter implements AbstractC17950c<SingleSmsData> {
        SingleSmsDataIdGetter() {
        }

        public final long getId(SingleSmsData singleSmsData) {
            return singleSmsData.f26797id;
        }
    }

    static {
        SingleSmsData_ singleSmsData_ = new SingleSmsData_();
        __INSTANCE = singleSmsData_;
        C17978g<SingleSmsData> c17978g = new C17978g<>(singleSmsData_, 0, 9, Long.TYPE, "id", true, "id");
        f26798id = c17978g;
        C17978g<SingleSmsData> c17978g2 = new C17978g<>(singleSmsData_, 1, 1, Long.TYPE, Constants.EXTRA_CONTACT_ID);
        contactId = c17978g2;
        C17978g<SingleSmsData> c17978g3 = new C17978g<>(singleSmsData_, 2, 2, String.class, SingleSmsData.EXTRA_SMS_TEXT);
        smsText = c17978g3;
        C17978g<SingleSmsData> c17978g4 = new C17978g<>(singleSmsData_, 3, 3, String.class, Constants.EXTRA_PHONE_NUMBER);
        phone = c17978g4;
        C17978g<SingleSmsData> c17978g5 = new C17978g<>(singleSmsData_, 4, 6, String.class, ContactDetailsActivity.EXTRA_FULL_NAME);
        fullName = c17978g5;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<SingleSmsData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<SingleSmsData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "SingleSmsData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<SingleSmsData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 30;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "SingleSmsData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<SingleSmsData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<SingleSmsData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
