package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor.class */
public final class AnalyticsCallsDataCursor extends Cursor<AnalyticsCallsData> {
    private final AnalyticsCallsData.CallNameConverter callTypeConverter = new AnalyticsCallsData.CallNameConverter();
    private final AnalyticsCallsData.DayTypeConverter dayTypeConverter = new AnalyticsCallsData.DayTypeConverter();
    private final AnalyticsCallsData.SimIdConverter simIdConverter = new AnalyticsCallsData.SimIdConverter();
    private static final AnalyticsCallsData_.AnalyticsCallsDataIdGetter ID_GETTER = AnalyticsCallsData_.__ID_GETTER;
    private static final int __ID_date = AnalyticsCallsData_.date.f36237c;
    private static final int __ID_callType = AnalyticsCallsData_.callType.f36237c;
    private static final int __ID_dayType = AnalyticsCallsData_.dayType.f36237c;
    private static final int __ID_simId = AnalyticsCallsData_.simId.f36237c;
    private static final int __ID_phoneAsGlobal = AnalyticsCallsData_.phoneAsGlobal.f36237c;
    private static final int __ID_duration = AnalyticsCallsData_.duration.f36237c;
    private static final int __ID_isSpam = AnalyticsCallsData_.isSpam.f36237c;
    private static final int __ID_isBlock = AnalyticsCallsData_.isBlock.f36237c;
    private static final int __ID_isPrivate = AnalyticsCallsData_.isPrivate.f36237c;
    private static final int __ID_isIncognito = AnalyticsCallsData_.isIncognito.f36237c;
    private static final int __ID_isConference = AnalyticsCallsData_.isConference.f36237c;
    private static final int __ID_isInternational = AnalyticsCallsData_.isInternational.f36237c;
    private static final int __ID_isIdentified = AnalyticsCallsData_.isIdentified.f36237c;
    private static final int __ID_isExclude = AnalyticsCallsData_.isExclude.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor$Factory.class */
    static final class Factory implements b<AnalyticsCallsData> {
        @Override // io.objectbox.b.b
        public final Cursor<AnalyticsCallsData> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new AnalyticsCallsDataCursor(transaction, j, boxStore);
        }
    }

    public AnalyticsCallsDataCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, AnalyticsCallsData_.__INSTANCE, boxStore);
    }

    public final long getId(AnalyticsCallsData analyticsCallsData) {
        return ID_GETTER.getId(analyticsCallsData);
    }

    public final long put(AnalyticsCallsData analyticsCallsData) {
        String phoneAsGlobal = analyticsCallsData.getPhoneAsGlobal();
        int i = phoneAsGlobal != null ? __ID_phoneAsGlobal : 0;
        AnalyticsCallsData.CallType callType = analyticsCallsData.getCallType();
        int i2 = callType != null ? __ID_callType : 0;
        AnalyticsCallsData.DayType dayType = analyticsCallsData.getDayType();
        int i3 = dayType != null ? __ID_dayType : 0;
        SimManager.SimId simId = analyticsCallsData.getSimId();
        int i4 = simId != null ? __ID_simId : 0;
        collect313311(this.cursor, 0L, 1, i, phoneAsGlobal, 0, null, 0, null, 0, null, __ID_date, analyticsCallsData.getDate(), __ID_duration, analyticsCallsData.getDuration(), i2, i2 != 0 ? this.callTypeConverter.convertToDatabaseValue(callType).intValue() : 0L, i3, i3 != 0 ? this.dayTypeConverter.convertToDatabaseValue(dayType).intValue() : 0, i4, i4 != 0 ? this.simIdConverter.convertToDatabaseValue(simId).intValue() : 0, __ID_isSpam, analyticsCallsData.isSpam() ? 1 : 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        collect004000(this.cursor, 0L, 0, __ID_isBlock, analyticsCallsData.isBlock() ? 1L : 0L, __ID_isPrivate, analyticsCallsData.isPrivate() ? 1L : 0L, __ID_isIncognito, analyticsCallsData.isIncognito() ? 1L : 0L, __ID_isConference, analyticsCallsData.isConference() ? 1L : 0L);
        Long l = analyticsCallsData.id;
        long collect004000 = collect004000(this.cursor, l != null ? l.longValue() : 0L, 2, __ID_isInternational, analyticsCallsData.isInternational() ? 1L : 0L, __ID_isIdentified, analyticsCallsData.isIdentified() ? 1L : 0L, __ID_isExclude, analyticsCallsData.isExclude() ? 1L : 0L, 0, 0L);
        analyticsCallsData.id = Long.valueOf(collect004000);
        return collect004000;
    }
}
