package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.PhotoUrls;
import com.callapp.contacts.model.objectbox.FastCacheDataCursor;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/FastCacheData_.class */
public final class FastCacheData_ implements c<FastCacheData> {
    public static final g<FastCacheData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "FastCacheData";
    public static final int __ENTITY_ID = 5;
    public static final String __ENTITY_NAME = "FastCacheData";
    public static final g<FastCacheData> __ID_PROPERTY;
    public static final FastCacheData_ __INSTANCE;
    public static final g<FastCacheData> expirationDate;
    public static final g<FastCacheData> fullName;
    public static final g<FastCacheData> id;
    public static final g<FastCacheData> isSpam;
    public static final g<FastCacheData> nameDataSource;
    public static final g<FastCacheData> phoneOrIdKey;
    public static final g<FastCacheData> photoBackGroundColor;
    public static final g<FastCacheData> photoDataSource;
    public static final g<FastCacheData> photoUrl;
    public static final g<FastCacheData> photoUrls;
    public static final Class<FastCacheData> __ENTITY_CLASS = FastCacheData.class;
    public static final b<FastCacheData> __CURSOR_FACTORY = new FastCacheDataCursor.Factory();
    static final FastCacheDataIdGetter __ID_GETTER = new FastCacheDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter.class */
    static final class FastCacheDataIdGetter implements io.objectbox.b.c<FastCacheData> {
        FastCacheDataIdGetter() {
        }

        public final long getId(FastCacheData fastCacheData) {
            Long l = fastCacheData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        FastCacheData_ fastCacheData_ = new FastCacheData_();
        __INSTANCE = fastCacheData_;
        g<FastCacheData> gVar = new g<>(fastCacheData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<FastCacheData> gVar2 = new g<>(fastCacheData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        g<FastCacheData> gVar3 = new g<>(fastCacheData_, 2, 3, Date.class, "expirationDate");
        expirationDate = gVar3;
        g<FastCacheData> gVar4 = new g<>(fastCacheData_, 3, 4, String.class, ContactDetailsActivity.EXTRA_FULL_NAME);
        fullName = gVar4;
        g<FastCacheData> gVar5 = new g<>(fastCacheData_, 4, 10, String.class, "photoUrls", false, "photoUrls", PhotoUrlsConverter.class, PhotoUrls.class);
        photoUrls = gVar5;
        g<FastCacheData> gVar6 = new g<>(fastCacheData_, 5, 12, Integer.class, "photoBackGroundColor");
        photoBackGroundColor = gVar6;
        g<FastCacheData> gVar7 = new g<>(fastCacheData_, 6, 5, String.class, "photoUrl");
        photoUrl = gVar7;
        g<FastCacheData> gVar8 = new g<>(fastCacheData_, 7, 6, Boolean.TYPE, "isSpam");
        isSpam = gVar8;
        g<FastCacheData> gVar9 = new g<>(fastCacheData_, 8, 7, String.class, "photoDataSource", false, "photoDataSource", DataSourceConverter.class, DataSource.class);
        photoDataSource = gVar9;
        g<FastCacheData> gVar10 = new g<>(fastCacheData_, 9, 8, String.class, "nameDataSource", false, "nameDataSource", DataSourceConverter.class, DataSource.class);
        nameDataSource = gVar10;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9, gVar10};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<FastCacheData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<FastCacheData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "FastCacheData";
    }

    @Override // io.objectbox.c
    public final Class<FastCacheData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 5;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "FastCacheData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<FastCacheData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<FastCacheData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
