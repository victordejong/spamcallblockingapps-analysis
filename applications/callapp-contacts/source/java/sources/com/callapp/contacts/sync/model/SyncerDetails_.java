package com.callapp.contacts.sync.model;

import com.callapp.contacts.sync.model.SyncerDetailsCursor;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.p502b.AbstractC17956h;
import io.objectbox.relation.C17990b;
import io.objectbox.relation.ToOne;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDetails_.class */
public final class SyncerDetails_ implements AbstractC17957c<SyncerDetails> {
    public static final C17978g<SyncerDetails>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "SyncerDetails";
    public static final int __ENTITY_ID = 24;
    public static final String __ENTITY_NAME = "SyncerDetails";
    public static final C17978g<SyncerDetails> __ID_PROPERTY;
    public static final SyncerDetails_ __INSTANCE;

    /* renamed from: id */
    public static final C17978g<SyncerDetails> f27589id;
    public static final C17978g<SyncerDetails> lastSyncDate;
    public static final C17990b<SyncerDetails, SyncerData> syncerData;
    public static final C17978g<SyncerDetails> syncerDataId;
    public static final C17978g<SyncerDetails> syncerKeyName;
    public static final Class<SyncerDetails> __ENTITY_CLASS = SyncerDetails.class;
    public static final AbstractC17949b<SyncerDetails> __CURSOR_FACTORY = new SyncerDetailsCursor.Factory();
    static final SyncerDetailsIdGetter __ID_GETTER = new SyncerDetailsIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/model/SyncerDetails_$SyncerDetailsIdGetter.class */
    public static final class SyncerDetailsIdGetter implements AbstractC17950c<SyncerDetails> {
        SyncerDetailsIdGetter() {
        }

        public final long getId(SyncerDetails syncerDetails) {
            Long l = syncerDetails.f27588id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        SyncerDetails_ syncerDetails_ = new SyncerDetails_();
        __INSTANCE = syncerDetails_;
        C17978g<SyncerDetails> c17978g = new C17978g<>(syncerDetails_, 0, 1, Long.class, "id", true, "id");
        f27589id = c17978g;
        C17978g<SyncerDetails> c17978g2 = new C17978g<>(syncerDetails_, 1, 2, String.class, "syncerKeyName");
        syncerKeyName = c17978g2;
        C17978g<SyncerDetails> c17978g3 = new C17978g<>(syncerDetails_, 2, 6, Long.TYPE, "lastSyncDate");
        lastSyncDate = c17978g3;
        C17978g<SyncerDetails> c17978g4 = new C17978g<>(syncerDetails_, 3, 7, Long.TYPE, "syncerDataId", true);
        syncerDataId = c17978g4;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4};
        __ID_PROPERTY = c17978g;
        syncerData = new C17990b<>(syncerDetails_, SyncerData_.__INSTANCE, c17978g4, new AbstractC17956h<SyncerDetails>() { // from class: com.callapp.contacts.sync.model.SyncerDetails_.1
            public final ToOne<SyncerData> getToOne(SyncerDetails syncerDetails) {
                return syncerDetails.getSyncerData();
            }
        });
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<SyncerDetails>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<SyncerDetails> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "SyncerDetails";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<SyncerDetails> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 24;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "SyncerDetails";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<SyncerDetails> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<SyncerDetails> getIdProperty() {
        return __ID_PROPERTY;
    }
}
