package com.telguarder.features.postCallStatistics;

import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.provider.CallLog;
import android.util.Pair;
import androidx.core.app.ActivityCompat;
import androidx.work.WorkRequest;
import com.j256.ormlite.field.FieldType;
import com.telguarder.ApplicationConstants;
import com.telguarder.features.phoneCallWidget.PhonecallStateHandler;
import com.telguarder.helpers.contact.ContactUtils;
import com.telguarder.helpers.log.Logger;
import com.telguarder.helpers.preferences.PreferencesManager;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSDataProvider.class */
public class CSDataProvider {
    private static CSDataProvider mInstance;
    private ArrayList<Date> days;
    private long firstChiDate;
    private int incomingCount;
    private ArrayList<Number> incomingDurations;
    private long lastChiDate;
    private int mCallType;
    private CSDataProviderCallback mCallback;
    private String mE164Number;
    private long mLastCallduration;
    private String mNationalNumber;
    private String mPhoneNumber;
    private long mSecondsIncoming;
    private long mSecondsOutgoing;
    private int missedCount;
    private int outgoingCount;
    private ArrayList<Number> outgoingDurations;
    private Map<Date, Pair<Number, Number>> statMap;
    private Realm realm = null;
    private long callDate = 0;
    private long lastCallDate = 0;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSDataProvider$CSDataProviderCallback.class */
    public interface CSDataProviderCallback {
        void addCallHistoryRow(long j, int i, int i2);

        void updateCount(int i, int i2, int i3);

        void updateDailyStat(ArrayList<Date> arrayList, ArrayList<Number> arrayList2, ArrayList<Number> arrayList3);

        void updateDuration(int i, long j, long j2, long j3);
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSDataProvider$CompletionHandler.class */
    public interface CompletionHandler {
        void handle(long j, long j2);
    }

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/CSDataProvider$ResultItemHandler.class */
    public interface ResultItemHandler {
        void handle(long j, int i, int i2, boolean z);
    }

    private CSDataProvider() {
    }

    private void addToRealmDb(final long j, final int i, final int i2) {
        Realm realm = this.realm;
        if (realm == null) {
            return;
        }
        realm.executeTransaction(new Realm.Transaction() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDataProvider$A36BVrJaNFcYlQsrASwQyUy69es
            @Override // io.realm.Realm.Transaction
            public final void execute(Realm realm2) {
                CSDataProvider.this.lambda$addToRealmDb$8$CSDataProvider(j, i, i2, realm2);
            }
        });
    }

    private void getCallItemsFromPhoneHistory(Context context, Long l, Long l2, ResultItemHandler resultItemHandler, CompletionHandler completionHandler) {
        String str;
        String[] strArr;
        Cursor query;
        String[] strArr2;
        String str2;
        if (l == null || l2 == null) {
            if (l != null || l2 == null) {
                strArr2 = new String[]{this.mPhoneNumber, this.mE164Number, this.mNationalNumber};
                str2 = "(number == ? OR number == ? OR number == ?)";
            } else {
                str2 = "(number == ? OR number == ? OR number == ?) AND DATE < ?";
                strArr2 = new String[]{this.mPhoneNumber, this.mE164Number, this.mNationalNumber, String.valueOf(l2)};
            }
            String[] strArr3 = strArr2;
            str = str2;
            strArr = strArr3;
        } else {
            String str3 = this.mPhoneNumber;
            String str4 = this.mE164Number;
            String str5 = this.mNationalNumber;
            String valueOf = String.valueOf(l);
            String valueOf2 = String.valueOf(l2);
            str = "(number == ? OR number == ? OR number == ?) AND DATE > ? AND DATE <= ?";
            strArr = new String[]{str3, str4, str5, valueOf, valueOf2};
        }
        this.callDate = 0L;
        this.lastCallDate = 0L;
        if (ActivityCompat.checkSelfPermission(context, "android.permission.READ_CALL_LOG") == 0 && PreferencesManager.getInstance().getUserConsentForPolicy2018() && (query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX, "number", "type", "date", "duration"}, str, strArr, "date DESC")) != null) {
            try {
                try {
                    if (query.moveToFirst()) {
                        getCursorData(query, resultItemHandler);
                        while (query.moveToNext()) {
                            getCursorData(query, resultItemHandler);
                        }
                    }
                } catch (Exception e) {
                    Logger.error(e.getMessage());
                }
            } finally {
                query.close();
            }
        }
        if (completionHandler != null) {
            completionHandler.handle(this.callDate, this.lastCallDate);
        }
    }

    private void getCursorData(Cursor cursor, ResultItemHandler resultItemHandler) {
        this.callDate = cursor.getLong(cursor.getColumnIndex("date"));
        if (cursor.isFirst()) {
            this.lastCallDate = this.callDate;
        }
        int i = cursor.getInt(cursor.getColumnIndex("type"));
        int i2 = cursor.getInt(cursor.getColumnIndex("duration"));
        if (resultItemHandler != null) {
            resultItemHandler.handle(this.callDate, i, i2, cursor.isFirst());
        }
    }

    private Date getDateOnly(Date date, int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(9, 0);
        calendar.set(10, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        if (i != 0) {
            calendar.add(5, i);
        }
        return calendar.getTime();
    }

    public static CSDataProvider getInstance() {
        CSDataProvider cSDataProvider;
        synchronized (CSDataProvider.class) {
            try {
                if (mInstance == null) {
                    mInstance = new CSDataProvider();
                }
                cSDataProvider = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cSDataProvider;
    }

    private void handleCallItem(long j, int i, int i2, boolean z, CSDataProviderCallback cSDataProviderCallback) {
        if (z) {
            this.mCallType = i;
            long j2 = i2;
            this.mLastCallduration = j2;
            cSDataProviderCallback.updateDuration(i, j2, this.mSecondsIncoming, this.mSecondsOutgoing);
        }
        cSDataProviderCallback.addCallHistoryRow(j, i, i2);
        if (i == 1) {
            this.incomingCount++;
            updateDurations(j, i, i2);
        } else if (i == 2) {
            this.outgoingCount++;
            updateDurations(j, i, i2);
        } else if (i == 3) {
            this.missedCount++;
        } else if (i == 5) {
            this.incomingCount++;
        } else if (i == 6) {
            this.incomingCount++;
        } else if (i != 7) {
        } else {
            this.incomingCount++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void handleSummaries(CSDataProviderCallback cSDataProviderCallback, long j, long j2) {
        cSDataProviderCallback.updateDuration(this.mCallType, this.mLastCallduration, this.mSecondsIncoming, this.mSecondsOutgoing);
        cSDataProviderCallback.updateCount(this.incomingCount, this.outgoingCount, this.missedCount);
        if (j <= 0 || j2 <= 0) {
            return;
        }
        if ((j2 - j) / ApplicationConstants.MAX_DURATION_FOR_FRESH_CACHE < 28) {
            populateDateList(getDateOnly(new Date(j2), -28), new Date(j2), this.days);
        } else {
            populateDateList(new Date(j), new Date(j2), this.days);
        }
        Iterator<Date> it = this.days.iterator();
        while (it.hasNext()) {
            Date next = it.next();
            if (this.statMap.containsKey(next)) {
                Pair<Number, Number> pair = this.statMap.get(next);
                this.incomingDurations.add(pair.first);
                this.outgoingDurations.add(pair.second);
            } else {
                this.incomingDurations.add(0);
                this.outgoingDurations.add(0);
            }
        }
        cSDataProviderCallback.updateDailyStat(this.days, this.incomingDurations, this.outgoingDurations);
    }

    private void updateDurations(long j, int i, int i2) {
        if (i2 == 0) {
            return;
        }
        Date dateOnly = getDateOnly(new Date(j), 0);
        Pair<Number, Number> pair = this.statMap.get(dateOnly);
        if (i == 1) {
            this.mSecondsIncoming += i2;
            if (pair == null) {
                this.statMap.put(dateOnly, new Pair<>(Integer.valueOf(i2), 0));
            } else {
                this.statMap.put(dateOnly, new Pair<>(Integer.valueOf(((Number) pair.first).intValue() + i2), pair.second));
            }
        } else if (i != 2) {
        } else {
            this.mSecondsOutgoing += i2;
            if (pair == null) {
                this.statMap.put(dateOnly, new Pair<>(0, Integer.valueOf(i2)));
            } else {
                this.statMap.put(dateOnly, new Pair<>(pair.first, Integer.valueOf(((Number) pair.second).intValue() + i2)));
            }
        }
    }

    public void getData(final Context context, final String str, int i, CSDataProviderCallback cSDataProviderCallback) {
        this.mCallback = cSDataProviderCallback;
        this.mPhoneNumber = str;
        String e164NUmberIfPossible = ContactUtils.getE164NUmberIfPossible(context, str, null);
        this.mE164Number = e164NUmberIfPossible;
        this.mNationalNumber = ContactUtils.getNationalNumberIfPossible(context, e164NUmberIfPossible, null);
        this.mCallType = i;
        this.mLastCallduration = 0L;
        this.mSecondsIncoming = 0L;
        this.mSecondsOutgoing = 0L;
        this.firstChiDate = 0L;
        this.lastChiDate = 0L;
        this.incomingCount = 0;
        this.outgoingCount = 0;
        this.missedCount = 0;
        this.days = new ArrayList<>();
        this.incomingDurations = new ArrayList<>();
        this.outgoingDurations = new ArrayList<>();
        this.statMap = new HashMap();
        if (this.mPhoneNumber == null) {
            return;
        }
        new Handler().postDelayed(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDataProvider$DiB8qQemZL8_oIaQIdOqC4h38Cs
            @Override // java.lang.Runnable
            public final void run() {
                CSDataProvider.this.lambda$getData$7$CSDataProvider(str, context);
            }
        }, 500L);
    }

    public /* synthetic */ void lambda$addToRealmDb$8$CSDataProvider(long j, int i, int i2, Realm realm) {
        CallHistoryItem callHistoryItem = (CallHistoryItem) realm.createObject(CallHistoryItem.class);
        callHistoryItem.setNumber(this.mE164Number);
        callHistoryItem.setDate(j);
        callHistoryItem.setType(i);
        callHistoryItem.setDuration(i2);
    }

    public /* synthetic */ void lambda$getData$7$CSDataProvider(final String str, final Context context) {
        new Thread(new Runnable() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDataProvider$Q0CezM9wSg5zQ33xv8ci1njzlxk
            @Override // java.lang.Runnable
            public final void run() {
                CSDataProvider.this.lambda$null$6$CSDataProvider(str, context);
            }
        }).start();
    }

    public /* synthetic */ void lambda$null$0$CSDataProvider(PhonecallStateHandler.PhoneStateCallData phoneStateCallData, long j, int i, int i2, boolean z) {
        if (phoneStateCallData == null || !z || phoneStateCallData.lastCallTimestamp - j <= WorkRequest.MIN_BACKOFF_MILLIS) {
            handleCallItem(j, i, i2, z, this.mCallback);
            addToRealmDb(j, i, i2);
            return;
        }
        int i3 = (int) (phoneStateCallData.lastCallDuration / 1000);
        handleCallItem(phoneStateCallData.lastCallTimestamp, phoneStateCallData.lastCallType, i3, true, this.mCallback);
        addToRealmDb(phoneStateCallData.lastCallTimestamp, phoneStateCallData.lastCallType, i3);
    }

    public /* synthetic */ void lambda$null$1$CSDataProvider(long j, long j2) {
        handleSummaries(this.mCallback, j, j2);
    }

    public /* synthetic */ void lambda$null$2$CSDataProvider(PhonecallStateHandler.PhoneStateCallData phoneStateCallData, long j, int i, int i2, boolean z) {
        if (phoneStateCallData == null || !z || phoneStateCallData.lastCallTimestamp - j <= WorkRequest.MIN_BACKOFF_MILLIS) {
            addToRealmDb(j, i, i2);
            return;
        }
        addToRealmDb(phoneStateCallData.lastCallTimestamp, phoneStateCallData.lastCallType, (int) (phoneStateCallData.lastCallDuration / 1000));
    }

    public /* synthetic */ void lambda$null$3$CSDataProvider(long j, int i, int i2, boolean z) {
        handleCallItem(j, i, i2, false, this.mCallback);
        addToRealmDb(j, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    public /* synthetic */ void lambda$null$4$CSDataProvider(long j, long j2) {
        CSDataProviderCallback cSDataProviderCallback = this.mCallback;
        char c = j;
        if (j == 0) {
            c = this.lastChiDate;
        }
        char c2 = j2;
        if (j2 == 0) {
            c2 = this.firstChiDate;
        }
        handleSummaries(cSDataProviderCallback, c, c2);
    }

    public /* synthetic */ void lambda$null$5$CSDataProvider(RealmResults realmResults, Context context, long j, long j2) {
        Iterator it = realmResults.iterator();
        boolean z = true;
        while (it.hasNext()) {
            CallHistoryItem callHistoryItem = (CallHistoryItem) it.next();
            long date = callHistoryItem.getDate();
            this.lastChiDate = date;
            handleCallItem(date, callHistoryItem.getType(), callHistoryItem.getDuration(), z, this.mCallback);
            if (z) {
                z = false;
            }
        }
        getCallItemsFromPhoneHistory(context, null, Long.valueOf(this.lastChiDate), new ResultItemHandler() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDataProvider$6AdpG863320lHj3tAePptUSV6Z4
            @Override // com.telguarder.features.postCallStatistics.CSDataProvider.ResultItemHandler
            public final void handle(long j3, int i, int i2, boolean z2) {
                CSDataProvider.this.lambda$null$3$CSDataProvider(j3, i, i2, z2);
            }
        }, new CompletionHandler() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDataProvider$xnrzc2NIKh7BiRWyykinPrvw_ro
            @Override // com.telguarder.features.postCallStatistics.CSDataProvider.CompletionHandler
            public final void handle(long j3, long j4) {
                CSDataProvider.this.lambda$null$4$CSDataProvider(j3, j4);
            }
        });
    }

    public /* synthetic */ void lambda$null$6$CSDataProvider(String str, final Context context) {
        try {
            try {
                this.realm = Realm.getDefaultInstance();
            } catch (Exception e) {
                this.realm = Realm.getInstance(new RealmConfiguration.Builder().deleteRealmIfMigrationNeeded().build());
            }
            final PhonecallStateHandler.PhoneStateCallData phoneStateCallData = PhonecallStateHandler.getInstance().getPhoneStateCallData(str);
            final RealmResults findAll = this.realm.where(CallHistoryItem.class).equalTo("number", this.mE164Number).sort("date", Sort.DESCENDING).findAll();
            if (findAll.size() == 0) {
                getCallItemsFromPhoneHistory(context, null, null, new ResultItemHandler() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDataProvider$6ICTo2kzkhOCbSNltWfmJavFS44
                    @Override // com.telguarder.features.postCallStatistics.CSDataProvider.ResultItemHandler
                    public final void handle(long j, int i, int i2, boolean z) {
                        CSDataProvider.this.lambda$null$0$CSDataProvider(phoneStateCallData, j, i, i2, z);
                    }
                }, new CompletionHandler() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDataProvider$My2KRGrMcejGxVtgsEeAqmlKo2g
                    @Override // com.telguarder.features.postCallStatistics.CSDataProvider.CompletionHandler
                    public final void handle(long j, long j2) {
                        CSDataProvider.this.lambda$null$1$CSDataProvider(j, j2);
                    }
                });
            } else {
                long date = ((CallHistoryItem) findAll.first()).getDate();
                this.firstChiDate = date;
                long currentTimeMillis = System.currentTimeMillis();
                getCallItemsFromPhoneHistory(context, Long.valueOf(date), Long.valueOf(currentTimeMillis), new ResultItemHandler() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDataProvider$IN8mkKwRHbPw6fYD6kB4_6IiVFg
                    @Override // com.telguarder.features.postCallStatistics.CSDataProvider.ResultItemHandler
                    public final void handle(long j, int i, int i2, boolean z) {
                        CSDataProvider.this.lambda$null$2$CSDataProvider(phoneStateCallData, j, i, i2, z);
                    }
                }, new CompletionHandler() { // from class: com.telguarder.features.postCallStatistics._$$Lambda$CSDataProvider$2_Rg9MUxWIijuItUNlzozObiEYg
                    @Override // com.telguarder.features.postCallStatistics.CSDataProvider.CompletionHandler
                    public final void handle(long j, long j2) {
                        CSDataProvider.this.lambda$null$5$CSDataProvider(findAll, context, j, j2);
                    }
                });
            }
            Realm realm = this.realm;
            if (realm == null) {
                return;
            }
            realm.close();
        } catch (Throwable th) {
            Realm realm2 = this.realm;
            if (realm2 != null) {
                realm2.close();
            }
            throw th;
        }
    }

    public void populateDateList(Date date, Date date2, List<Date> list) {
        while (date.before(date2)) {
            list.add(getDateOnly(date, 0));
            date = getDateOnly(date, 1);
        }
    }
}
