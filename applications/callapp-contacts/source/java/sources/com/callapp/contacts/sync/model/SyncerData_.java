package com.callapp.contacts.sync.model;

import com.callapp.contacts.sync.model.SyncerDataCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17955g;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerData_.class */
public final class SyncerData_ implements AbstractC17957c<SyncerData> {
    public static final C17978g<SyncerData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SyncerData";
    public static final int __ENTITY_ID = 23;
    public static final String __ENTITY_NAME = "SyncerData";
    public static final C17978g<SyncerData> __ID_PROPERTY;
    public static final SyncerData_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<SyncerData> f27587id;
    public static final C17978g<SyncerData> phoneOrIdKey;
    public static final C17990b<SyncerData, SyncerDetails> syncerDetails;
    public static final Class<SyncerData> __ENTITY_CLASS = SyncerData.class;
    public static final AbstractC17949b<SyncerData> __CURSOR_FACTORY = new SyncerDataCursor.Factory();
    static final SyncerDataIdGetter __ID_GETTER = new SyncerDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerData_$SyncerDataIdGetter.class */
    public static final class SyncerDataIdGetter implements AbstractC17950c<SyncerData> {
        SyncerDataIdGetter() {
        }

        public final long getId(SyncerData syncerData) {
            Long id = syncerData.getId();
            if (id != null) {
                return id.longValue();
            }
            return 0L;
        }
    }

    static {
        SyncerData_ syncerData_ = new SyncerData_();
        __INSTANCE = syncerData_;
        C17978g<SyncerData> c17978g = new C17978g<>(syncerData_, 0, 1, Long.class, "id", true, "id");
        f27587id = c17978g;
        C17978g<SyncerData> c17978g2 = new C17978g<>(syncerData_, 1, 3, String.class, "phoneOrIdKey");
        phoneOrIdKey = c17978g2;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2};
        __ID_PROPERTY = c17978g;
        syncerDetails = new C17990b<>(syncerData_, SyncerDetails_.__INSTANCE, new AbstractC17955g<SyncerData>() { // from class: com.callapp.contacts.sync.model.SyncerData_.1
            public final List<SyncerDetails> getToMany(SyncerData syncerData) {
                return syncerData.getSyncerDetails();
            }
        }, SyncerDetails_.syncerDataId, new AbstractC17956h<SyncerDetails>() { // from class: com.callapp.contacts.sync.model.SyncerData_.2
            public final ToOne<SyncerData> getToOne(SyncerDetails syncerDetails2) {
                return syncerDetails2.getSyncerData();
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<SyncerData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<SyncerData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "SyncerData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<SyncerData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 23;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "SyncerData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<SyncerData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<SyncerData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
