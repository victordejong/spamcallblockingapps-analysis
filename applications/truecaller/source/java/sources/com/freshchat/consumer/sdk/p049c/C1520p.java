package com.freshchat.consumer.sdk.p049c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.freshchat.consumer.sdk.beans.BHWeekDays;
import com.freshchat.consumer.sdk.beans.BHWorkingDays;
import com.freshchat.consumer.sdk.beans.BusinessHours;
import com.freshchat.consumer.sdk.beans.OperatingHoursResponse;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p049c.p050a.C1503o;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.c.p */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/c/p.class */
public class C1520p extends AbstractC1504b {

    /* renamed from: jJ */
    private static final String[] f4128jJ = new C1503o().m40807cR();

    public C1520p(Context context) {
        super(context);
    }

    /* renamed from: a */
    private ContentValues m40664a(BusinessHours businessHours) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Long.valueOf(businessHours.getOperatingHoursId()));
        contentValues.put(AnalyticsConstants.NAME, businessHours.getName());
        contentValues.put(AnalyticsConstants.TIMEZONE, businessHours.getTimezone());
        if (businessHours.getWeekDaysBH() != null) {
            contentValues.put("days_bh", C1597ab.m40337in().toJson(businessHours.getWeekDaysBH()));
        }
        if (businessHours.getWorkingDays() != null) {
            contentValues.put("days_working", C1597ab.m40337in().toJson(businessHours.getWorkingDays()));
        }
        contentValues.put("enabled", Integer.valueOf(businessHours.isEnabled() ? 1 : 0));
        contentValues.put("default_bh", Integer.valueOf(businessHours.isDefaultBhr() ? 1 : 0));
        contentValues.put("bh_type", businessHours.getOperatingHoursType());
        return contentValues;
    }

    /* renamed from: m */
    private BusinessHours m40661m(Cursor cursor, Map<String, Integer> map) {
        BusinessHours businessHours;
        if (AbstractC1504b.m40787d(cursor)) {
            BusinessHours businessHours2 = new BusinessHours();
            businessHours2.setOperatingHoursId(cursor.getLong(map.get("_id").intValue()));
            businessHours2.setName(cursor.getString(map.get(AnalyticsConstants.NAME).intValue()));
            businessHours2.setTimezone(cursor.getString(map.get(AnalyticsConstants.TIMEZONE).intValue()));
            businessHours2.setWeekDaysBH((BHWeekDays) C1597ab.m40337in().fromJson(cursor.getString(map.get("days_bh").intValue()), (Class<Object>) BHWeekDays.class));
            businessHours2.setWorkingDays((BHWorkingDays) C1597ab.m40337in().fromJson(cursor.getString(map.get("days_working").intValue()), (Class<Object>) BHWorkingDays.class));
            businessHours2.setEnabled(cursor.getInt(map.get("enabled").intValue()) == 1);
            boolean z = false;
            if (cursor.getInt(map.get("default_bh").intValue()) == 1) {
                z = true;
            }
            businessHours2.setDefaultBhr(z);
            businessHours2.setOperatingHoursType(cursor.getString(map.get("bh_type").intValue()));
            businessHours = businessHours2;
        } else {
            businessHours = null;
        }
        return businessHours;
    }

    /* renamed from: D */
    public BusinessHours m40666D(long j) {
        Throwable th;
        Cursor cursor;
        BusinessHours businessHours;
        Exception e;
        Cursor cursor2;
        Cursor cursor3 = null;
        try {
            cursor2 = m40789cs().query("business_hours", f4128jJ, "_id=? AND enabled=1", new String[]{Long.toString(j)}, null, null, null);
            businessHours = null;
            cursor = cursor2;
            cursor3 = cursor2;
            try {
                try {
                    if (AbstractC1504b.m40792b(cursor2)) {
                        businessHours = m40661m(cursor2, mo40665a(cursor2));
                        cursor = cursor2;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor3 = cursor2;
                    C1723q.m39823a(e);
                    cursor = cursor2;
                    businessHours = null;
                    AbstractC1504b.m40791c(cursor);
                    return businessHours;
                }
            } catch (Throwable th2) {
                th = th2;
                AbstractC1504b.m40791c(cursor3);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            AbstractC1504b.m40791c(cursor3);
            throw th;
        }
        AbstractC1504b.m40791c(cursor);
        return businessHours;
    }

    @Override // com.freshchat.consumer.sdk.p049c.AbstractC1504b
    /* renamed from: a */
    public Map<String, Integer> mo40665a(Cursor cursor) {
        HashMap hashMap = new HashMap();
        if (AbstractC1504b.m40787d(cursor)) {
            hashMap.put("_id", Integer.valueOf(cursor.getColumnIndex("_id")));
            hashMap.put("bh_type", C22128a.m8544z1(hashMap, "default_bh", C22128a.m8544z1(hashMap, "enabled", C22128a.m8544z1(hashMap, "days_working", C22128a.m8544z1(hashMap, "days_bh", C22128a.m8544z1(hashMap, AnalyticsConstants.TIMEZONE, C22128a.m8544z1(hashMap, AnalyticsConstants.NAME, Integer.valueOf(cursor.getColumnIndex(AnalyticsConstants.NAME)), cursor, AnalyticsConstants.TIMEZONE), cursor, "days_bh"), cursor, "days_working"), cursor, "enabled"), cursor, "default_bh"), cursor, "bh_type"));
        }
        return hashMap;
    }

    /* renamed from: a */
    public void m40663a(OperatingHoursResponse operatingHoursResponse) {
        SQLiteDatabase m40789cs = m40789cs();
        m40789cs.beginTransaction();
        try {
            try {
                m40789cs.delete("business_hours", null, null);
                if (C1716k.m39902a(operatingHoursResponse.getOperatingHours())) {
                    for (BusinessHours businessHours : operatingHoursResponse.getOperatingHours()) {
                        m40789cs.insert("business_hours", null, m40664a(businessHours));
                    }
                }
                m40789cs.setTransactionSuccessful();
            } catch (Exception e) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.BUSINESS_HOURS_UPDATE_FAILED.toString());
            }
        } finally {
            m40789cs.endTransaction();
        }
    }

    /* renamed from: fm */
    public BusinessHours m40662fm() {
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        BusinessHours businessHours;
        Exception e;
        Cursor cursor3;
        try {
            cursor3 = m40789cs().query("business_hours", f4128jJ, "default_bh=1 AND enabled=1", null, null, null, null);
            businessHours = null;
            cursor2 = cursor3;
            cursor = cursor3;
            try {
                try {
                    if (AbstractC1504b.m40792b(cursor3)) {
                        businessHours = m40661m(cursor3, mo40665a(cursor3));
                        cursor2 = cursor3;
                    }
                } catch (Exception e2) {
                    e = e2;
                    cursor = cursor3;
                    C1723q.m39823a(e);
                    cursor2 = cursor3;
                    businessHours = null;
                    AbstractC1504b.m40791c(cursor2);
                    return businessHours;
                }
            } catch (Throwable th2) {
                th = th2;
                AbstractC1504b.m40791c(cursor);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursor3 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
            AbstractC1504b.m40791c(cursor);
            throw th;
        }
        AbstractC1504b.m40791c(cursor2);
        return businessHours;
    }
}
