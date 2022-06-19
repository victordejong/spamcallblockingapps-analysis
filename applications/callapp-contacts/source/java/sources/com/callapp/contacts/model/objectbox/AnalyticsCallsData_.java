package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.model.objectbox.AnalyticsCallsDataCursor;
import com.mopub.mobileads.VastIconXmlManager;
import io.objectbox.AbstractC17957c;
import io.objectbox.C17978g;
import io.objectbox.p502b.AbstractC17949b;
import io.objectbox.p502b.AbstractC17950c;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData_.class */
public final class AnalyticsCallsData_ implements AbstractC17957c<AnalyticsCallsData> {
    public static final C17978g<AnalyticsCallsData>[] __ALL_PROPERTIES;
    public static final String __DB_NAME = "AnalyticsCallsData";
    public static final int __ENTITY_ID = 43;
    public static final String __ENTITY_NAME = "AnalyticsCallsData";
    public static final C17978g<AnalyticsCallsData> __ID_PROPERTY;
    public static final AnalyticsCallsData_ __INSTANCE;
    public static final C17978g<AnalyticsCallsData> callType;
    public static final C17978g<AnalyticsCallsData> date;
    public static final C17978g<AnalyticsCallsData> dayType;
    public static final C17978g<AnalyticsCallsData> duration;

    /* renamed from: id */
    public static final C17978g<AnalyticsCallsData> f26748id;
    public static final C17978g<AnalyticsCallsData> isBlock;
    public static final C17978g<AnalyticsCallsData> isConference;
    public static final C17978g<AnalyticsCallsData> isExclude;
    public static final C17978g<AnalyticsCallsData> isIdentified;
    public static final C17978g<AnalyticsCallsData> isIncognito;
    public static final C17978g<AnalyticsCallsData> isInternational;
    public static final C17978g<AnalyticsCallsData> isPrivate;
    public static final C17978g<AnalyticsCallsData> isSpam;
    public static final C17978g<AnalyticsCallsData> phoneAsGlobal;
    public static final C17978g<AnalyticsCallsData> simId;
    public static final Class<AnalyticsCallsData> __ENTITY_CLASS = AnalyticsCallsData.class;
    public static final AbstractC17949b<AnalyticsCallsData> __CURSOR_FACTORY = new AnalyticsCallsDataCursor.Factory();
    static final AnalyticsCallsDataIdGetter __ID_GETTER = new AnalyticsCallsDataIdGetter();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsData_$AnalyticsCallsDataIdGetter.class */
    public static final class AnalyticsCallsDataIdGetter implements AbstractC17950c<AnalyticsCallsData> {
        AnalyticsCallsDataIdGetter() {
        }

        public final long getId(AnalyticsCallsData analyticsCallsData) {
            Long l = analyticsCallsData.f26747id;
            if (l != null) {
                return l.longValue();
            }
            return 0L;
        }
    }

    static {
        AnalyticsCallsData_ analyticsCallsData_ = new AnalyticsCallsData_();
        __INSTANCE = analyticsCallsData_;
        C17978g<AnalyticsCallsData> c17978g = new C17978g<>(analyticsCallsData_, 0, 1, Long.class, "id", true, "id");
        f26748id = c17978g;
        C17978g<AnalyticsCallsData> c17978g2 = new C17978g<>(analyticsCallsData_, 1, 2, Long.TYPE, "date");
        date = c17978g2;
        C17978g<AnalyticsCallsData> c17978g3 = new C17978g<>(analyticsCallsData_, 2, 3, Integer.TYPE, "callType", false, "callType", AnalyticsCallsData.CallNameConverter.class, AnalyticsCallsData.CallType.class);
        callType = c17978g3;
        C17978g<AnalyticsCallsData> c17978g4 = new C17978g<>(analyticsCallsData_, 3, 4, Integer.TYPE, "dayType", false, "dayType", AnalyticsCallsData.DayTypeConverter.class, AnalyticsCallsData.DayType.class);
        dayType = c17978g4;
        C17978g<AnalyticsCallsData> c17978g5 = new C17978g<>(analyticsCallsData_, 4, 5, Integer.TYPE, "simId", false, "simId", AnalyticsCallsData.SimIdConverter.class, SimManager.SimId.class);
        simId = c17978g5;
        C17978g<AnalyticsCallsData> c17978g6 = new C17978g<>(analyticsCallsData_, 5, 7, String.class, "phoneAsGlobal");
        phoneAsGlobal = c17978g6;
        C17978g<AnalyticsCallsData> c17978g7 = new C17978g<>(analyticsCallsData_, 6, 8, Long.TYPE, VastIconXmlManager.DURATION);
        duration = c17978g7;
        C17978g<AnalyticsCallsData> c17978g8 = new C17978g<>(analyticsCallsData_, 7, 9, Boolean.TYPE, "isSpam");
        isSpam = c17978g8;
        C17978g<AnalyticsCallsData> c17978g9 = new C17978g<>(analyticsCallsData_, 8, 10, Boolean.TYPE, "isBlock");
        isBlock = c17978g9;
        C17978g<AnalyticsCallsData> c17978g10 = new C17978g<>(analyticsCallsData_, 9, 11, Boolean.TYPE, "isPrivate");
        isPrivate = c17978g10;
        C17978g<AnalyticsCallsData> c17978g11 = new C17978g<>(analyticsCallsData_, 10, 12, Boolean.TYPE, "isIncognito");
        isIncognito = c17978g11;
        C17978g<AnalyticsCallsData> c17978g12 = new C17978g<>(analyticsCallsData_, 11, 13, Boolean.TYPE, "isConference");
        isConference = c17978g12;
        C17978g<AnalyticsCallsData> c17978g13 = new C17978g<>(analyticsCallsData_, 12, 14, Boolean.TYPE, "isInternational");
        isInternational = c17978g13;
        C17978g<AnalyticsCallsData> c17978g14 = new C17978g<>(analyticsCallsData_, 13, 15, Boolean.TYPE, "isIdentified");
        isIdentified = c17978g14;
        C17978g<AnalyticsCallsData> c17978g15 = new C17978g<>(analyticsCallsData_, 14, 16, Boolean.TYPE, "isExclude");
        isExclude = c17978g15;
        __ALL_PROPERTIES = new C17978g[]{c17978g, c17978g2, c17978g3, c17978g4, c17978g5, c17978g6, c17978g7, c17978g8, c17978g9, c17978g10, c17978g11, c17978g12, c17978g13, c17978g14, c17978g15};
        __ID_PROPERTY = c17978g;
    }

    @Override // io.objectbox.AbstractC17957c
    public final C17978g<AnalyticsCallsData>[] getAllProperties() {
        return __ALL_PROPERTIES;
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17949b<AnalyticsCallsData> getCursorFactory() {
        return __CURSOR_FACTORY;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getDbName() {
        return "AnalyticsCallsData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final Class<AnalyticsCallsData> getEntityClass() {
        return __ENTITY_CLASS;
    }

    @Override // io.objectbox.AbstractC17957c
    public final int getEntityId() {
        return 43;
    }

    @Override // io.objectbox.AbstractC17957c
    public final String getEntityName() {
        return "AnalyticsCallsData";
    }

    @Override // io.objectbox.AbstractC17957c
    public final AbstractC17950c<AnalyticsCallsData> getIdGetter() {
        return __ID_GETTER;
    }

    public final C17978g<AnalyticsCallsData> getIdProperty() {
        return __ID_PROPERTY;
    }
}
