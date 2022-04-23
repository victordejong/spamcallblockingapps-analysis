package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IMExtractedPhotoData_.class */
public final class IMExtractedPhotoData_ implements c<IMExtractedPhotoData> {
    public static final g<IMExtractedPhotoData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "IMExtractedPhotoData";
    public static final int __ENTITY_ID = 33;
    public static final String __ENTITY_NAME = "IMExtractedPhotoData";
    public static final g<IMExtractedPhotoData> __ID_PROPERTY;
    public static final IMExtractedPhotoData_ __INSTANCE;
    public static final g<IMExtractedPhotoData> dataSource;
    public static final g<IMExtractedPhotoData> date;
    public static final g<IMExtractedPhotoData> id;
    public static final g<IMExtractedPhotoData> phoneOrIdKey;
    public static final g<IMExtractedPhotoData> url;
    public static final Class<IMExtractedPhotoData> __ENTITY_CLASS = IMExtractedPhotoData.class;
    public static final b<IMExtractedPhotoData> __CURSOR_FACTORY = new IMExtractedPhotoDataCursor.Factory();
    static final IMExtractedPhotoDataIdGetter __ID_GETTER = new IMExtractedPhotoDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter.class */
    static final class IMExtractedPhotoDataIdGetter implements io.objectbox.b.c<IMExtractedPhotoData> {
        IMExtractedPhotoDataIdGetter() {
        }

        public final long getId(IMExtractedPhotoData iMExtractedPhotoData) {
            Long l = iMExtractedPhotoData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        IMExtractedPhotoData_ iMExtractedPhotoData_ = new IMExtractedPhotoData_();
        __INSTANCE = iMExtractedPhotoData_;
        g<IMExtractedPhotoData> gVar = new g<>(iMExtractedPhotoData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<IMExtractedPhotoData> gVar2 = new g<>(iMExtractedPhotoData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<IMExtractedPhotoData> gVar3 = new g<>(iMExtractedPhotoData_, 2, 3, String.class, "dataSource", false, "dataSource", DataSourceConverter.class, DataSource.class);
        dataSource = gVar3;
        g<IMExtractedPhotoData> gVar4 = new g<>(iMExtractedPhotoData_, 3, 5, Long.TYPE, "date");
        date = gVar4;
        g<IMExtractedPhotoData> gVar5 = new g<>(iMExtractedPhotoData_, 4, 4, String.class, "url");
        url = gVar5;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<IMExtractedPhotoData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<IMExtractedPhotoData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "IMExtractedPhotoData";
    }

    @Override // io.objectbox.c
    public final Class<IMExtractedPhotoData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 33;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "IMExtractedPhotoData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<IMExtractedPhotoData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<IMExtractedPhotoData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
