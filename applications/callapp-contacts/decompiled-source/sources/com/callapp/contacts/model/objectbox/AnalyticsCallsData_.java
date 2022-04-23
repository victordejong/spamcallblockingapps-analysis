package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.model.objectbox.AnalyticsCallsDataCursor;
import com.mopub.mobileads.VastIconXmlManager;
import io.objectbox.b.b;
import io.objectbox.c;
import io.objectbox.g;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData_.class */
public final class AnalyticsCallsData_ implements c<AnalyticsCallsData> {
    public static final g<AnalyticsCallsData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "AnalyticsCallsData";
    public static final int __ENTITY_ID = 43;
    public static final String __ENTITY_NAME = "AnalyticsCallsData";
    public static final g<AnalyticsCallsData> __ID_PROPERTY;
    public static final AnalyticsCallsData_ __INSTANCE;
    public static final g<AnalyticsCallsData> callType;
    public static final g<AnalyticsCallsData> date;
    public static final g<AnalyticsCallsData> dayType;
    public static final g<AnalyticsCallsData> duration;
    public static final g<AnalyticsCallsData> id;
    public static final g<AnalyticsCallsData> isBlock;
    public static final g<AnalyticsCallsData> isConference;
    public static final g<AnalyticsCallsData> isExclude;
    public static final g<AnalyticsCallsData> isIdentified;
    public static final g<AnalyticsCallsData> isIncognito;
    public static final g<AnalyticsCallsData> isInternational;
    public static final g<AnalyticsCallsData> isPrivate;
    public static final g<AnalyticsCallsData> isSpam;
    public static final g<AnalyticsCallsData> phoneAsGlobal;
    public static final g<AnalyticsCallsData> simId;
    public static final Class<AnalyticsCallsData> __ENTITY_CLASS = AnalyticsCallsData.class;
    public static final b<AnalyticsCallsData> __CURSOR_FACTORY = new AnalyticsCallsDataCursor.Factory();
    static final AnalyticsCallsDataIdGetter __ID_GETTER = new AnalyticsCallsDataIdGetter();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData_$AnalyticsCallsDataIdGetter.class */
    static final class AnalyticsCallsDataIdGetter implements io.objectbox.b.c<AnalyticsCallsData> {
        AnalyticsCallsDataIdGetter() {
        }

        public final long getId(AnalyticsCallsData analyticsCallsData) {
            Long l = analyticsCallsData.id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        AnalyticsCallsData_ analyticsCallsData_ = new AnalyticsCallsData_();
        __INSTANCE = analyticsCallsData_;
        g<AnalyticsCallsData> gVar = new g<>(analyticsCallsData_, 0, 1, Long.class, "id", true, "id");
        id = gVar;
        g<AnalyticsCallsData> gVar2 = new g<>(analyticsCallsData_, 1, 2, Long.TYPE, "date");
        date = gVar2;
        g<AnalyticsCallsData> gVar3 = new g<>(analyticsCallsData_, 2, 3, Integer.TYPE, "callType", false, "callType", AnalyticsCallsData.CallNameConverter.class, AnalyticsCallsData.CallType.class);
        callType = gVar3;
        g<AnalyticsCallsData> gVar4 = new g<>(analyticsCallsData_, 3, 4, Integer.TYPE, "dayType", false, "dayType", AnalyticsCallsData.DayTypeConverter.class, AnalyticsCallsData.DayType.class);
        dayType = gVar4;
        g<AnalyticsCallsData> gVar5 = new g<>(analyticsCallsData_, 4, 5, Integer.TYPE, "simId", false, "simId", AnalyticsCallsData.SimIdConverter.class, SimManager.SimId.class);
        simId = gVar5;
        g<AnalyticsCallsData> gVar6 = new g<>(analyticsCallsData_, 5, 7, String.class, "phoneAsGlobal");
        phoneAsGlobal = gVar6;
        g<AnalyticsCallsData> gVar7 = new g<>(analyticsCallsData_, 6, 8, Long.TYPE, VastIconXmlManager.DURATION);
        duration = gVar7;
        g<AnalyticsCallsData> gVar8 = new g<>(analyticsCallsData_, 7, 9, Boolean.TYPE, "isSpam");
        isSpam = gVar8;
        g<AnalyticsCallsData> gVar9 = new g<>(analyticsCallsData_, 8, 10, Boolean.TYPE, "isBlock");
        isBlock = gVar9;
        g<AnalyticsCallsData> gVar10 = new g<>(analyticsCallsData_, 9, 11, Boolean.TYPE, "isPrivate");
        isPrivate = gVar10;
        g<AnalyticsCallsData> gVar11 = new g<>(analyticsCallsData_, 10, 12, Boolean.TYPE, "isIncognito");
        isIncognito = gVar11;
        g<AnalyticsCallsData> gVar12 = new g<>(analyticsCallsData_, 11, 13, Boolean.TYPE, "isConference");
        isConference = gVar12;
        g<AnalyticsCallsData> gVar13 = new g<>(analyticsCallsData_, 12, 14, Boolean.TYPE, "isInternational");
        isInternational = gVar13;
        g<AnalyticsCallsData> gVar14 = new g<>(analyticsCallsData_, 13, 15, Boolean.TYPE, "isIdentified");
        isIdentified = gVar14;
        g<AnalyticsCallsData> gVar15 = new g<>(analyticsCallsData_, 14, 16, Boolean.TYPE, "isExclude");
        isExclude = gVar15;
        __ALL_PROPERTIES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6, gVar7, gVar8, gVar9, gVar10, gVar11, gVar12, gVar13, gVar14, gVar15};
        __ID_PROPERTY = gVar;
    }

    @Override // io.objectbox.c
    public final g<AnalyticsCallsData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.c
    public final b<AnalyticsCallsData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.c
    public final String getDbName() {
        return "AnalyticsCallsData";
    }

    @Override // io.objectbox.c
    public final Class<AnalyticsCallsData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.c
    public final int getEntityId() {
        return 43;
    }

    @Override // io.objectbox.c
    public final String getEntityName() {
        return "AnalyticsCallsData";
    }

    @Override // io.objectbox.c
    public final io.objectbox.b.c<AnalyticsCallsData> getIdGetter() {
        return __ID_GETTER;
    }

    public final g<AnalyticsCallsData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
