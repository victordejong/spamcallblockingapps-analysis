package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData;
import com.callapp.contacts.model.objectbox.AnalyticsCallsData_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.p502b.AbstractC17949b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor.class */
public final class AnalyticsCallsDataCursor extends Cursor<AnalyticsCallsData> {
    private final AnalyticsCallsData.CallNameConverter callTypeConverter = new AnalyticsCallsData.CallNameConverter();
    private final AnalyticsCallsData.DayTypeConverter dayTypeConverter = new AnalyticsCallsData.DayTypeConverter();
    private final AnalyticsCallsData.SimIdConverter simIdConverter = new AnalyticsCallsData.SimIdConverter();
    private static final AnalyticsCallsData_.AnalyticsCallsDataIdGetter ID_GETTER = AnalyticsCallsData_.__ID_GETTER;
    private static final int __ID_date = AnalyticsCallsData_.date.f62808c;
    private static final int __ID_callType = AnalyticsCallsData_.callType.f62808c;
    private static final int __ID_dayType = AnalyticsCallsData_.dayType.f62808c;
    private static final int __ID_simId = AnalyticsCallsData_.simId.f62808c;
    private static final int __ID_phoneAsGlobal = AnalyticsCallsData_.phoneAsGlobal.f62808c;
    private static final int __ID_duration = AnalyticsCallsData_.duration.f62808c;
    private static final int __ID_isSpam = AnalyticsCallsData_.isSpam.f62808c;
    private static final int __ID_isBlock = AnalyticsCallsData_.isBlock.f62808c;
    private static final int __ID_isPrivate = AnalyticsCallsData_.isPrivate.f62808c;
    private static final int __ID_isIncognito = AnalyticsCallsData_.isIncognito.f62808c;
    private static final int __ID_isConference = AnalyticsCallsData_.isConference.f62808c;
    private static final int __ID_isInternational = AnalyticsCallsData_.isInternational.f62808c;
    private static final int __ID_isIdentified = AnalyticsCallsData_.isIdentified.f62808c;
    private static final int __ID_isExclude = AnalyticsCallsData_.isExclude.f62808c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsCallsDataCursor$Factory.class */
    static final class Factory implements AbstractC17949b<AnalyticsCallsData> {
        @Override // io.objectbox.p502b.AbstractC17949b
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v67, types: [long] */
    /* JADX WARN: Type inference failed for: r0v91, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r44v1 */
    /* JADX WARN: Type inference failed for: r44v2 */
    /* JADX WARN: Type inference failed for: r44v3 */
    /* JADX WARN: Type inference failed for: r44v4 */
    /* JADX WARN: Type inference failed for: r44v5 */
    /* JADX WARN: Type inference failed for: r44v6 */
    /* JADX WARN: Type inference failed for: r47v1 */
    /* JADX WARN: Type inference failed for: r47v2 */
    /* JADX WARN: Type inference failed for: r47v3 */
    /* JADX WARN: Type inference failed for: r47v4 */
    /* JADX WARN: Type inference failed for: r47v5 */
    /* JADX WARN: Type inference failed for: r47v6 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r50v1 */
    /* JADX WARN: Type inference failed for: r50v2 */
    /* JADX WARN: Type inference failed for: r50v3 */
    /* JADX WARN: Type inference failed for: r50v4 */
    /* JADX WARN: Type inference failed for: r50v5 */
    /* JADX WARN: Type inference failed for: r50v6 */
    /* JADX WARN: Type inference failed for: r52v0 */
    /* JADX WARN: Type inference failed for: r52v1 */
    /* JADX WARN: Type inference failed for: r52v2 */
    /* JADX WARN: Type inference failed for: r52v4 */
    /* JADX WARN: Type inference failed for: r52v5 */
    /* JADX WARN: Type inference failed for: r52v6 */
    /* JADX WARN: Type inference failed for: r52v7 */
    /* JADX WARN: Type inference failed for: r52v8 */
    /* JADX WARN: Type inference failed for: r52v9 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    public final long put(AnalyticsCallsData analyticsCallsData) {
        String phoneAsGlobal = analyticsCallsData.getPhoneAsGlobal();
        int i = phoneAsGlobal != null ? __ID_phoneAsGlobal : 0;
        AnalyticsCallsData.CallType callType = analyticsCallsData.getCallType();
        int i2 = callType != null ? __ID_callType : 0;
        AnalyticsCallsData.DayType dayType = analyticsCallsData.getDayType();
        int i3 = dayType != null ? __ID_dayType : 0;
        SimManager.SimId simId = analyticsCallsData.getSimId();
        int i4 = simId != null ? __ID_simId : 0;
        long j = this.cursor;
        int i5 = __ID_date;
        long date = analyticsCallsData.getDate();
        int i6 = __ID_duration;
        long duration = analyticsCallsData.getDuration();
        ?? intValue = i2 != 0 ? this.callTypeConverter.convertToDatabaseValue(callType).intValue() : false;
        int intValue2 = i3 != 0 ? this.dayTypeConverter.convertToDatabaseValue(dayType).intValue() : 0;
        int intValue3 = i4 != 0 ? this.simIdConverter.convertToDatabaseValue(simId).intValue() : 0;
        collect313311(j, 0L, 1, i, phoneAsGlobal, 0, null, 0, null, 0, null, i5, date, i6, duration, i2, intValue == true ? 1L : 0L, i3, intValue2, i4, intValue3, __ID_isSpam, analyticsCallsData.isSpam() ? 1 : 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        long j2 = this.cursor;
        int i7 = __ID_isBlock;
        ?? r52 = analyticsCallsData.isBlock();
        int i8 = __ID_isPrivate;
        ?? r47 = analyticsCallsData.isPrivate();
        collect004000(j2, 0L, 0, i7, r52 == true ? 1L : 0L, i8, r47 == true ? 1L : 0L, __ID_isIncognito, (analyticsCallsData.isIncognito()) == true ? 1L : 0L, __ID_isConference, (analyticsCallsData.isConference()) == true ? 1L : 0L);
        Long l = analyticsCallsData.f26747id;
        long j3 = this.cursor;
        ?? longValue = l != null ? l.longValue() : false;
        int i9 = __ID_isInternational;
        ?? r472 = analyticsCallsData.isInternational();
        long collect004000 = collect004000(j3, longValue == true ? 1L : 0L, 2, i9, r472 == true ? 1L : 0L, __ID_isIdentified, (analyticsCallsData.isIdentified()) == true ? 1L : 0L, __ID_isExclude, (analyticsCallsData.isExclude()) == true ? 1L : 0L, 0, 0L);
        analyticsCallsData.f26747id = Long.valueOf(collect004000);
        return collect004000;
    }
}
