package com.telguarder.features.numberLookup;

import android.content.Context;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.QueryBuilder;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.log.Logger;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneCallManager.class */
public class PhoneCallManager {
    private static PhoneCallManager mInstance;
    private PhoneCallOrmLiteHelper mSqliteHelper;

    private PhoneCallManager(Context context) {
        this.mSqliteHelper = new PhoneCallOrmLiteHelper(context);
    }

    public static PhoneCallManager getInstance(Context context) {
        PhoneCallManager phoneCallManager;
        synchronized (PhoneCallManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PhoneCallManager(context);
                }
                phoneCallManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneCallManager;
    }

    private PhoneEvent getPhoneCallForPhoneNumberAndActorType(Context context, String str, String str2) {
        PhoneEvent phoneEvent;
        try {
            QueryBuilder<PhoneEvent, Integer> queryBuilder = this.mSqliteHelper.getCallDao().queryBuilder();
            queryBuilder.limit(1L);
            queryBuilder.orderBy(PhoneCallOrmLiteHelper.FIELD_DATE_TIME, false);
            queryBuilder.setWhere(queryBuilder.where().m1129eq(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER, ContactUtils.getE164NUmberIfPossible(context, str, null)).and().m1129eq(PhoneCallOrmLiteHelper.FIELD_ACTOR_TYPE, str2));
            List<PhoneEvent> query = queryBuilder.query();
            phoneEvent = null;
            if (query != null) {
                phoneEvent = null;
                if (!query.isEmpty()) {
                    phoneEvent = query.get(0);
                }
            }
        } catch (Exception e) {
            Logger.error(e.getMessage());
            phoneEvent = null;
        }
        return phoneEvent;
    }

    public void clearPhoneCallCache() {
        try {
            this.mSqliteHelper.getCallDao().deleteBuilder().delete();
        } catch (Exception e) {
            Logger.error(e.getMessage());
        }
    }

    public void deletePhoneCallFromCache(PhoneEvent phoneEvent) throws SQLException {
        DeleteBuilder<PhoneEvent, Integer> deleteBuilder = this.mSqliteHelper.getCallDao().deleteBuilder();
        if (deleteBuilder != null) {
            deleteBuilder.setWhere(deleteBuilder.where().m1129eq(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER, phoneEvent.calledPhoneNumber).and().m1129eq(PhoneCallOrmLiteHelper.FIELD_ACTOR_TYPE, phoneEvent.actorType));
            deleteBuilder.delete();
        }
    }

    public void deletePhoneNumberFromCache(Context context, String str) {
        if (str == null) {
            return;
        }
        PhoneEvent personPhoneCallByPhoneNumber = getPersonPhoneCallByPhoneNumber(context, str);
        PhoneEvent companyPhoneCallByPhoneNumber = getCompanyPhoneCallByPhoneNumber(context, str);
        if (personPhoneCallByPhoneNumber != null) {
            try {
                deletePhoneCallFromCache(personPhoneCallByPhoneNumber);
            } catch (Exception e) {
                Logger.error(e.getMessage());
                return;
            }
        }
        if (companyPhoneCallByPhoneNumber == null) {
            return;
        }
        deletePhoneCallFromCache(companyPhoneCallByPhoneNumber);
    }

    public List<PhoneEvent> getCallsCache() {
        List<PhoneEvent> list;
        try {
            list = this.mSqliteHelper.getCallDao().queryForAll();
        } catch (Exception e) {
            Logger.error(e.getMessage());
            list = null;
        }
        return list;
    }

    public PhoneEvent getCompanyPhoneCallByPhoneNumber(Context context, String str) {
        return getPhoneCallForPhoneNumberAndActorType(context, str, ActorType.COMPANY.toString());
    }

    public PhoneEvent getPersonPhoneCallByPhoneNumber(Context context, String str) {
        return getPhoneCallForPhoneNumberAndActorType(context, str, ActorType.PERSON.toString());
    }

    public List<PhoneEvent> getPhoneCallsForPhoneNumber(String str) {
        ArrayList arrayList;
        try {
            QueryBuilder<PhoneEvent, Integer> queryBuilder = this.mSqliteHelper.getCallDao().queryBuilder();
            queryBuilder.orderBy(PhoneCallOrmLiteHelper.FIELD_DATE_TIME, false);
            queryBuilder.setWhere(queryBuilder.where().m1129eq(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER, str));
            arrayList = queryBuilder.query();
        } catch (Exception e) {
            Logger.error(e.getMessage());
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    public int saverOrUpdatePhoneCall(Context context, PhoneEvent phoneEvent, PhoneEvent phoneEvent2) {
        try {
            phoneEvent2.phonebookNumber = phoneEvent2.calledPhoneNumber;
            phoneEvent2.calledPhoneNumber = ContactUtils.getE164NUmberIfPossible(context, phoneEvent2.calledPhoneNumber, null);
            if (phoneEvent != null) {
                phoneEvent2.f1286id = phoneEvent.f1286id;
            }
            phoneEvent2.lastUpdateDateTimeInMillis = System.currentTimeMillis();
            deletePhoneCallFromCache(phoneEvent2);
            this.mSqliteHelper.getCallDao().create((Dao<PhoneEvent, Integer>) phoneEvent2);
            return phoneEvent2.f1286id;
        } catch (Exception e) {
            Logger.error(e.getMessage());
            return -1;
        }
    }
}
