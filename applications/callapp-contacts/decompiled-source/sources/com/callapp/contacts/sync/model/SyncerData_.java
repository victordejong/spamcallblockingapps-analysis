package com.callapp.contacts.sync.model;

import com.callapp.contacts.sync.model.SyncerDataCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerData_.class */
public final class SyncerData_ implements c<SyncerData> {
    public static final g<SyncerData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SyncerData";
    public static final int __ENTITY_ID = 23;
    public static final String __ENTITY_NAME = "SyncerData";
    public static final g<SyncerData> __ID_PROPERTY;
    public static final SyncerData_ __INSTANCE;
    public static final g<SyncerData> id;
    public static final g<SyncerData> phoneOrIdKey;
    public static final b<SyncerData, SyncerDetails> syncerDetails;
    public static final Class<SyncerData> __ENTITY_CLASS = SyncerData.class;
    public static final io.objectbox.b.b<SyncerData> __CURSOR_FACTORY = new SyncerDataCursor.Factory();
    static final SyncerDataIdGetter __ID_GETTER = new SyncerDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerData_$SyncerDataIdGetter.class */
    static final class SyncerDataIdGetter implements io.objectbox.b.c<SyncerData> {
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
        g<SyncerData> gVar = new g<>(syncerData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<SyncerData> gVar2 = new g<>(syncerData_, 1, 3, String.class, "phoneOrIdKey");
        phoneOrIdKey = gVar2;
        __ALL_PROPERTIES = new g[]{gVar, gVar2};
        __ID_PROPERTY = gVar;
        syncerDetails = new b<>(syncerData_, SyncerDetails_.__INSTANCE, new io.objectbox.b.g<SyncerData>() { // from class: com.callapp.contacts.sync.model.SyncerData_.1
            public final List<SyncerDetails> getToMany(SyncerData syncerData) {
                return syncerData.getSyncerDetails();
            }
        }, SyncerDetails_.syncerDataId, new h<SyncerDetails>() { // from class: com.callapp.contacts.sync.model.SyncerData_.2
            public final ToOne<SyncerData> getToOne(SyncerDetails syncerDetails2) {
                return syncerDetails2.getSyncerData();
            }
        });
    }

    @Override // io.objectbox.c
    public final g<SyncerData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<SyncerData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "SyncerData";
    }

    @Override // io.objectbox.c
    public final Class<SyncerData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 23;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "SyncerData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<SyncerData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<SyncerData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
