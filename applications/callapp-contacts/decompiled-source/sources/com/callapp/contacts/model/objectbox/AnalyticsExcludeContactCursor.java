package com.callapp.contacts.model.objectbox;

import com.callapp.contacts.model.objectbox.AnalyticsExcludeContact_;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
import io.objectbox.b.b;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsExcludeContactCursor.class */
public final class AnalyticsExcludeContactCursor extends Cursor<AnalyticsExcludeContact> {
    private static final AnalyticsExcludeContact_.AnalyticsExcludeContactIdGetter ID_GETTER = AnalyticsExcludeContact_.__ID_GETTER;
    private static final int __ID_phoneAsGlobal = AnalyticsExcludeContact_.phoneAsGlobal.f36237c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/objectbox/AnalyticsExcludeContactCursor$Factory.class */
    static final class Factory implements b<AnalyticsExcludeContact> {
        @Override // io.objectbox.b.b
        public final Cursor<AnalyticsExcludeContact> createCursor(Transaction transaction, long j, BoxStore boxStore) {
            return new AnalyticsExcludeContactCursor(transaction, j, boxStore);
        }
    }

    public AnalyticsExcludeContactCursor(Transaction transaction, long j, BoxStore boxStore) {
        super(transaction, j, AnalyticsExcludeContact_.__INSTANCE, boxStore);
    }

    public final long getId(AnalyticsExcludeContact analyticsExcludeContact) {
        return ID_GETTER.getId(analyticsExcludeContact);
    }

    public final long put(AnalyticsExcludeContact analyticsExcludeContact) {
        Long l = analyticsExcludeContact.id;
        String phoneAsGlobal = analyticsExcludeContact.getPhoneAsGlobal();
        long collect313311 = collect313311(this.cursor, l != null ? l.longValue() : 0L, 3, phoneAsGlobal != null ? __ID_phoneAsGlobal : 0, phoneAsGlobal, 0, null, 0, null, 0, null, 0, 0L, 0, 0L, 0, 0L, 0, 0, 0, 0, 0, 0, 0, BitmapDescriptorFactory.HUE_RED, 0, 0.0d);
        analyticsExcludeContact.id = Long.valueOf(collect313311);
        return collect313311;
    }
}
