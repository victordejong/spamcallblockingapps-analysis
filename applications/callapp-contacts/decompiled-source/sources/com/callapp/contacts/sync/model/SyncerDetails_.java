package com.callapp.contacts.sync.model;

import com.callapp.contacts.sync.model.SyncerDetailsCursor;
import io.objectbox.b.h;
import io.objectbox.c;
import io.objectbox.g;
import io.objectbox.relation.ToOne;
import io.objectbox.relation.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDetails_.class */
public final class SyncerDetails_ implements c<SyncerDetails> {
    public static final g<SyncerDetails>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SyncerDetails";
    public static final int __ENTITY_ID = 24;
    public static final String __ENTITY_NAME = "SyncerDetails";
    public static final g<SyncerDetails> __ID_PROPERTY;
    public static final SyncerDetails_ __INSTANCE;
    public static final g<SyncerDetails> id;
    public static final g<SyncerDetails> lastSyncDate;
    public static final b<SyncerDetails, SyncerData> syncerData;
    public static final g<SyncerDetails> syncerDataId;
    public static final g<SyncerDetails> syncerKeyName;
    public static final Class<SyncerDetails> __ENTITY_CLASS = SyncerDetails.class;
    public static final io.objectbox.b.b<SyncerDetails> __CURSOR_FACTORY = new SyncerDetailsCursor.Factory();
    static final SyncerDetailsIdGetter __ID_GETTER = new SyncerDetailsIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDetails_$SyncerDetailsIdGetter.class */
    public static final class SyncerDetailsIdGetter implements io.objectbox.b.c<SyncerDetails> {
        SyncerDetailsIdGetter() {
        }

        public final long getId(SyncerDetails syncerDetails) {
            Long l = syncerDetails.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        SyncerDetails_ syncerDetails_ = new SyncerDetails_();
        __INSTANCE = syncerDetails_;
        g<SyncerDetails> gVar = new g<>(syncerDetails_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<SyncerDetails> gVar2 = new g<>(syncerDetails_, 1, 2, String.class, "syncerKeyName");
        syncerKeyName = gVar2;
        g<SyncerDetails> gVar3 = new g<>(syncerDetails_, 2, 6, Long.TYPE, "lastSyncDate");
        lastSyncDate = gVar3;
        g<SyncerDetails> gVar4 = new g<>(syncerDetails_, 3, 7, Long.TYPE, "syncerDataId", true);
        syncerDataId = gVar4;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4};
        __ID_PROPERTY = gVar;
        syncerData = new b<>(syncerDetails_, SyncerData_.__INSTANCE, gVar4, new h<SyncerDetails>() { // from class: com.callapp.contacts.sync.model.SyncerDetails_.1
            public final ToOne<SyncerData> getToOne(SyncerDetails syncerDetails) {
                return syncerDetails.getSyncerData();
            }
        });
    }

    @Override // io.objectbox.c
    public final g<SyncerDetails>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.b<SyncerDetails> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "SyncerDetails";
    }

    @Override // io.objectbox.c
    public final Class<SyncerDetails> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 24;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "SyncerDetails";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<SyncerDetails> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<SyncerDetails> getIdProperty() {
        return __ID_PROPERTY;
    }
}
