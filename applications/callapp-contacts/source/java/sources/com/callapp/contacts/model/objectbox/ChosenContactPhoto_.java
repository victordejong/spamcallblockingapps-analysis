package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.ChosenContactPhotoCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ChosenContactPhoto_.class */
public final class ChosenContactPhoto_ implements AbstractC17957c<ChosenContactPhoto> {
    public static final C17978g<ChosenContactPhoto>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ChosenContactPhoto";
    public static final int __ENTITY_ID = 11;
    public static final String __ENTITY_NAME = "ChosenContactPhoto";
    public static final C17978g<ChosenContactPhoto> __ID_PROPERTY;
    public static final ChosenContactPhoto_ __INSTANCE;
    public static final C17978g<ChosenContactPhoto> dataSource;

    /* renamed from: id */
    public static final C17978g<ChosenContactPhoto> f26766id;
    public static final C17978g<ChosenContactPhoto> phoneOrIdKey;
    public static final C17978g<ChosenContactPhoto> url;
    public static final Class<ChosenContactPhoto> __ENTITY_CLASS = ChosenContactPhoto.class;
    public static final AbstractC17949b<ChosenContactPhoto> __CURSOR_FACTORY = new ChosenContactPhotoCursor.Factory();
    static final ChosenContactPhotoIdGetter __ID_GETTER = new ChosenContactPhotoIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ChosenContactPhoto_$ChosenContactPhotoIdGetter.class */
    public static final class ChosenContactPhotoIdGetter implements AbstractC17950c<ChosenContactPhoto> {
        ChosenContactPhotoIdGetter() {
        }

        public final long getId(ChosenContactPhoto chosenContactPhoto) {
            Long l = chosenContactPhoto.f26765id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        ChosenContactPhoto_ chosenContactPhoto_ = new ChosenContactPhoto_();
        __INSTANCE = chosenContactPhoto_;
        C17978g<ChosenContactPhoto> c17978g = new C17978g<>(chosenContactPhoto_, 0, 1, Long.class, "id", true, "id");
        f26766id = c17978g;
        C17978g<ChosenContactPhoto> c17978g2 = new C17978g<>(chosenContactPhoto_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<ChosenContactPhoto> c17978g3 = new C17978g<>(chosenContactPhoto_, 2, 3, String.class, "dataSource", false, "dataSource", DataSourceConverter.class, DataSource.class);
        dataSource = c17978g3;
        C17978g<ChosenContactPhoto> c17978g4 = new C17978g<>(chosenContactPhoto_, 3, 4, String.class, "url");
        url = c17978g4;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<ChosenContactPhoto>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<ChosenContactPhoto> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "ChosenContactPhoto";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<ChosenContactPhoto> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 11;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "ChosenContactPhoto";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<ChosenContactPhoto> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<ChosenContactPhoto> getIdProperty() {
        return __ID_PROPERTY;
    }
}
