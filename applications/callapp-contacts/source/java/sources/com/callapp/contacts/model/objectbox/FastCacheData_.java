package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.model.contact.DataSource;
import com.callapp.contacts.model.contact.PhotoUrls;
import com.callapp.contacts.model.objectbox.FastCacheDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/FastCacheData_.class */
public final class FastCacheData_ implements AbstractC17957c<FastCacheData> {
    public static final C17978g<FastCacheData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "FastCacheData";
    public static final int __ENTITY_ID = 5;
    public static final String __ENTITY_NAME = "FastCacheData";
    public static final C17978g<FastCacheData> __ID_PROPERTY;
    public static final FastCacheData_ __INSTANCE;
    public static final C17978g<FastCacheData> expirationDate;
    public static final C17978g<FastCacheData> fullName;

    /* renamed from: id */
    public static final C17978g<FastCacheData> f26774id;
    public static final C17978g<FastCacheData> isSpam;
    public static final C17978g<FastCacheData> nameDataSource;
    public static final C17978g<FastCacheData> phoneOrIdKey;
    public static final C17978g<FastCacheData> photoBackGroundColor;
    public static final C17978g<FastCacheData> photoDataSource;
    public static final C17978g<FastCacheData> photoUrl;
    public static final C17978g<FastCacheData> photoUrls;
    public static final Class<FastCacheData> __ENTITY_CLASS = FastCacheData.class;
    public static final AbstractC17949b<FastCacheData> __CURSOR_FACTORY = new FastCacheDataCursor.Factory();
    static final FastCacheDataIdGetter __ID_GETTER = new FastCacheDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/FastCacheData_$FastCacheDataIdGetter.class */
    public static final class FastCacheDataIdGetter implements AbstractC17950c<FastCacheData> {
        FastCacheDataIdGetter() {
        }

        public final long getId(FastCacheData fastCacheData) {
            Long l = fastCacheData.f26773id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        FastCacheData_ fastCacheData_ = new FastCacheData_();
        __INSTANCE = fastCacheData_;
        C17978g<FastCacheData> c17978g = new C17978g<>(fastCacheData_, 0, 1, Long.class, "id", true, "id");
        f26774id = c17978g;
        C17978g<FastCacheData> c17978g2 = new C17978g<>(fastCacheData_, 1, 2, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        C17978g<FastCacheData> c17978g3 = new C17978g<>(fastCacheData_, 2, 3, Date.class, "expirationDate");
        expirationDate = c17978g3;
        C17978g<FastCacheData> c17978g4 = new C17978g<>(fastCacheData_, 3, 4, String.class, ContactDetailsActivity.EXTRA_FULL_NAME);
        fullName = c17978g4;
        C17978g<FastCacheData> c17978g5 = new C17978g<>(fastCacheData_, 4, 10, String.class, "photoUrls", false, "photoUrls", PhotoUrlsConverter.class, PhotoUrls.class);
        photoUrls = c17978g5;
        C17978g<FastCacheData> c17978g6 = new C17978g<>(fastCacheData_, 5, 12, Integer.class, "photoBackGroundColor");
        photoBackGroundColor = c17978g6;
        C17978g<FastCacheData> c17978g7 = new C17978g<>(fastCacheData_, 6, 5, String.class, "photoUrl");
        photoUrl = c17978g7;
        C17978g<FastCacheData> c17978g8 = new C17978g<>(fastCacheData_, 7, 6, Boolean.TYPE, "isSpam");
        isSpam = c17978g8;
        C17978g<FastCacheData> c17978g9 = new C17978g<>(fastCacheData_, 8, 7, String.class, "photoDataSource", false, "photoDataSource", DataSourceConverter.class, DataSource.class);
        photoDataSource = c17978g9;
        C17978g<FastCacheData> c17978g10 = new C17978g<>(fastCacheData_, 9, 8, String.class, "nameDataSource", false, "nameDataSource", DataSourceConverter.class, DataSource.class);
        nameDataSource = c17978g10;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7, c17978g8, c17978g9, c17978g10};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<FastCacheData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<FastCacheData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "FastCacheData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<FastCacheData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 5;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "FastCacheData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<FastCacheData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<FastCacheData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
