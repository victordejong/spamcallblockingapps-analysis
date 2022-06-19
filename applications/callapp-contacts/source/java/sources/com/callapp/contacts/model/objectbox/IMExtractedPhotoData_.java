package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.objectbox.IMExtractedPhotoDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IMExtractedPhotoData_.class */
public final class IMExtractedPhotoData_ implements AbstractC17957c<IMExtractedPhotoData> {
    public static final C17978g<IMExtractedPhotoData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "IMExtractedPhotoData";
    public static final int __ENTITY_ID = 33;
    public static final String __ENTITY_NAME = "IMExtractedPhotoData";
    public static final C17978g<IMExtractedPhotoData> __ID_PROPERTY;
    public static final IMExtractedPhotoData_ __INSTANCE;
    public static final C17978g<IMExtractedPhotoData> dataSource;
    public static final C17978g<IMExtractedPhotoData> date;

    /* renamed from: id */
    public static final C17978g<IMExtractedPhotoData> f26776id;
    public static final C17978g<IMExtractedPhotoData> phoneOrIdKey;
    public static final C17978g<IMExtractedPhotoData> url;
    public static final Class<IMExtractedPhotoData> __ENTITY_CLASS = IMExtractedPhotoData.class;
    public static final AbstractC17949b<IMExtractedPhotoData> __CURSOR_FACTORY = new IMExtractedPhotoDataCursor.Factory();
    static final IMExtractedPhotoDataIdGetter __ID_GETTER = new IMExtractedPhotoDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/IMExtractedPhotoData_$IMExtractedPhotoDataIdGetter.class */
    public static final class IMExtractedPhotoDataIdGetter implements AbstractC17950c<IMExtractedPhotoData> {
        IMExtractedPhotoDataIdGetter() {
        }

        public final long getId(IMExtractedPhotoData iMExtractedPhotoData) {
            Long l = iMExtractedPhotoData.f26775id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        IMExtractedPhotoData_ iMExtractedPhotoData_ = new IMExtractedPhotoData_();
        __INSTANCE = iMExtractedPhotoData_;
        C17978g<IMExtractedPhotoData> c17978g = new C17978g<>(iMExtractedPhotoData_, 0, 1, Long.class, "id", true, "id");
        f26776id = c17978g;
        C17978g<IMExtractedPhotoData> c17978g2 = new C17978g<>(iMExtractedPhotoData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<IMExtractedPhotoData> c17978g3 = new C17978g<>(iMExtractedPhotoData_, 2, 3, String.class, "dataSource", false, "dataSource", DataSourceConverter.class, DataSource.class);
        dataSource = c17978g3;
        C17978g<IMExtractedPhotoData> c17978g4 = new C17978g<>(iMExtractedPhotoData_, 3, 5, Long.TYPE, "date");
        date = c17978g4;
        C17978g<IMExtractedPhotoData> c17978g5 = new C17978g<>(iMExtractedPhotoData_, 4, 4, String.class, "url");
        url = c17978g5;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<IMExtractedPhotoData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<IMExtractedPhotoData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "IMExtractedPhotoData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<IMExtractedPhotoData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 33;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "IMExtractedPhotoData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<IMExtractedPhotoData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<IMExtractedPhotoData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
