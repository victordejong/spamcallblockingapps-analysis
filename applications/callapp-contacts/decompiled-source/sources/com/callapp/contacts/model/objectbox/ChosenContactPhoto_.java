package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.ChosenContactPhotoCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ChosenContactPhoto_.class */
public final class ChosenContactPhoto_ implements c<ChosenContactPhoto> {
    public static final g<ChosenContactPhoto>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "ChosenContactPhoto";
    public static final int __ENTITY_ID = 11;
    public static final String __ENTITY_NAME = "ChosenContactPhoto";
    public static final g<ChosenContactPhoto> __ID_PROPERTY;
    public static final ChosenContactPhoto_ __INSTANCE;
    public static final g<ChosenContactPhoto> dataSource;
    public static final g<ChosenContactPhoto> id;
    public static final g<ChosenContactPhoto> phoneOrIdKey;
    public static final g<ChosenContactPhoto> url;
    public static final Class<ChosenContactPhoto> __ENTITY_CLASS = ChosenContactPhoto.class;
    public static final b<ChosenContactPhoto> __CURSOR_FACTORY = new ChosenContactPhotoCursor.Factory();
    static final ChosenContactPhotoIdGetter __ID_GETTER = new ChosenContactPhotoIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/ChosenContactPhoto_$ChosenContactPhotoIdGetter.class */
    static final class ChosenContactPhotoIdGetter implements io.objectbox.b.c<ChosenContactPhoto> {
        ChosenContactPhotoIdGetter() {
        }

        public final long getId(ChosenContactPhoto chosenContactPhoto) {
            Long l = chosenContactPhoto.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        ChosenContactPhoto_ chosenContactPhoto_ = new ChosenContactPhoto_();
        __INSTANCE = chosenContactPhoto_;
        g<ChosenContactPhoto> gVar = new g<>(chosenContactPhoto_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<ChosenContactPhoto> gVar2 = new g<>(chosenContactPhoto_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<ChosenContactPhoto> gVar3 = new g<>(chosenContactPhoto_, 2, 3, String.class, "dataSource", false, "dataSource", DataSourceConverter.class, DataSource.class);
        dataSource = gVar3;
        g<ChosenContactPhoto> gVar4 = new g<>(chosenContactPhoto_, 3, 4, String.class, "url");
        url = gVar4;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<ChosenContactPhoto>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<ChosenContactPhoto> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "ChosenContactPhoto";
    }

    @Override // io.objectbox.c
    public final Class<ChosenContactPhoto> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 11;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "ChosenContactPhoto";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<ChosenContactPhoto> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<ChosenContactPhoto> getIdProperty() {
        return __ID_PROPERTY;
    }
}
