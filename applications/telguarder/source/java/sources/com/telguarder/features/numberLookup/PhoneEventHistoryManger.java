package com.telguarder.features.numberLookup;

import android.content.Context;
import android.text.TextUtils;
import com.telguarder.helpers.contact.Contact;
import com.telguarder.helpers.contact.ContactUtils;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmResults;
import io.realm.Sort;
import io.realm.annotations.RealmModule;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventHistoryManger.class */
public class PhoneEventHistoryManger {
    private static boolean mHistoryListCahceSaveInProgress = false;
    private static PhoneEventHistoryManger mInstance;
    public volatile long historyLastCallTimestamp;
    public volatile int lastCallType;
    public volatile String lastNumber;

    @RealmModule(classes = {CachedHistoryListItem.class})
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/PhoneEventHistoryManger$EventHistoryModule.class */
    public class EventHistoryModule {
        EventHistoryModule() {
            PhoneEventHistoryManger.this = r4;
        }
    }

    private PhoneEventHistoryManger() {
    }

    public static PhoneEventHistoryManger getInstance() {
        PhoneEventHistoryManger phoneEventHistoryManger;
        synchronized (PhoneEventHistoryManger.class) {
            try {
                if (mInstance == null) {
                    mInstance = new PhoneEventHistoryManger();
                }
                phoneEventHistoryManger = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneEventHistoryManger;
    }

    public Realm getRealm(Context context) {
        Realm realm;
        try {
            realm = Realm.getInstance(new RealmConfiguration.Builder().name("history.realm").deleteRealmIfMigrationNeeded().modules(new EventHistoryModule(), new Object[0]).build());
        } catch (Exception e) {
            try {
                Realm.init(context);
                realm = Realm.getInstance(new RealmConfiguration.Builder().name("history.realm").deleteRealmIfMigrationNeeded().modules(new EventHistoryModule(), new Object[0]).build());
            } catch (Exception e2) {
                realm = null;
            }
        }
        return realm;
    }

    public void addCallHistoryListItem(final Context context, final String str, final int i, final long j) {
        this.lastNumber = null;
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.PhoneEventHistoryManger.2
            @Override // java.lang.Runnable
            public void run() {
                Realm realm = null;
                try {
                    Realm realm2 = PhoneEventHistoryManger.this.getRealm(context.getApplicationContext());
                    if (realm2 == null) {
                        if (realm2 == null) {
                            return;
                        }
                        realm2.close();
                        return;
                    }
                    realm2.executeTransaction(new Realm.Transaction() { // from class: com.telguarder.features.numberLookup.PhoneEventHistoryManger.2.1
                        @Override // io.realm.Realm.Transaction
                        public void execute(Realm realm3) {
                            CachedHistoryListItem cachedHistoryListItem = (CachedHistoryListItem) realm3.createObject(CachedHistoryListItem.class);
                            cachedHistoryListItem.setPhoneNumberForDisplaying(ContactUtils.getFormattedPhoneNumber(context, str, false, null));
                            cachedHistoryListItem.setCalledPhoneNumber(ContactUtils.getE164NUmberIfPossible(context, str, null));
                            cachedHistoryListItem.setDateTimeInMillis(j);
                            cachedHistoryListItem.setType(i);
                        }
                    });
                    PhoneEventHistoryManger.this.lastNumber = str;
                    PhoneEventHistoryManger.this.lastCallType = i;
                    realm = realm2;
                    PhoneEventHistoryManger.this.historyLastCallTimestamp = j;
                    if (realm2 == null) {
                        return;
                    }
                    realm2.close();
                } catch (Throwable th) {
                    if (realm != null) {
                        realm.close();
                    }
                    throw th;
                }
            }
        }).start();
    }

    public ArrayList<PhoneEvent> getCachedHistoryList(Context context, boolean z) {
        ArrayList<PhoneEvent> arrayList = new ArrayList<>();
        Realm realm = null;
        try {
            Realm realm2 = getRealm(context.getApplicationContext());
            if (realm2 == null) {
                if (realm2 != null) {
                    realm2.close();
                }
                return arrayList;
            }
            Iterator it = (z ? realm2.where(CachedHistoryListItem.class).isNotNull(PhoneCallOrmLiteHelper.FIELD_SPAM_TYPE).sort(PhoneCallOrmLiteHelper.FIELD_DATE_TIME, Sort.DESCENDING).findAll() : realm2.where(CachedHistoryListItem.class).sort(PhoneCallOrmLiteHelper.FIELD_DATE_TIME, Sort.DESCENDING).findAll()).iterator();
            while (true) {
                realm = realm2;
                if (!it.hasNext()) {
                    break;
                }
                arrayList.add(PhoneEvent.phoneEventOfHistoryCacheItem((CachedHistoryListItem) it.next()));
            }
            if (realm2 != null) {
                realm2.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (realm != null) {
                realm.close();
            }
            throw th;
        }
    }

    public int getCallCountForNumber(Context context, String str, int i) {
        Realm realm;
        Throwable th;
        try {
            Realm realm2 = getRealm(context.getApplicationContext());
            int i2 = 0;
            if (realm2 == null) {
                if (realm2 == null) {
                    return 0;
                }
                realm2.close();
                return 0;
            }
            try {
                ArrayList arrayList = new ArrayList();
                arrayList.add(ContactUtils.getE164NUmberIfPossible(context, str, null));
                String nationalNumberIfPossible = ContactUtils.getNationalNumberIfPossible(context, str, null);
                if (!arrayList.contains(nationalNumberIfPossible)) {
                    arrayList.add(nationalNumberIfPossible);
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    RealmResults findAll = realm2.where(CachedHistoryListItem.class).equalTo(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER, (String) it.next()).equalTo("type", Integer.valueOf(i)).findAll();
                    if (findAll != null && findAll.size() > 0) {
                        Iterator it2 = findAll.iterator();
                        int i3 = i2;
                        while (true) {
                            i2 = i3;
                            if (it2.hasNext()) {
                                CachedHistoryListItem cachedHistoryListItem = (CachedHistoryListItem) it2.next();
                                if (cachedHistoryListItem.getCounter() > 0) {
                                    i3 += cachedHistoryListItem.getCounter();
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                }
                if (realm2 != null) {
                    realm2.close();
                }
                return i2;
            } catch (Throwable th2) {
                th = th2;
                realm = realm2;
                if (realm != null) {
                    realm.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            realm = null;
        }
    }

    public void saveHistoryListCache(final Context context, final ArrayList<?> arrayList) {
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.PhoneEventHistoryManger.1
            @Override // java.lang.Runnable
            public void run() {
                Throwable th;
                Realm realm;
                if (PhoneEventHistoryManger.mHistoryListCahceSaveInProgress) {
                    return;
                }
                try {
                    boolean unused = PhoneEventHistoryManger.mHistoryListCahceSaveInProgress = true;
                    realm = PhoneEventHistoryManger.this.getRealm(context.getApplicationContext());
                    if (realm == null) {
                        if (realm != null) {
                            realm.close();
                        }
                        PhoneEventLogManager.getInstance().spamCommentLoadInProgress = false;
                        PhoneEventLogManager.getInstance().mDownloadSpamCommentCompletionHandler = null;
                        boolean unused2 = PhoneEventHistoryManger.mHistoryListCahceSaveInProgress = false;
                        return;
                    }
                    try {
                        realm.executeTransaction(new Realm.Transaction() { // from class: com.telguarder.features.numberLookup.PhoneEventHistoryManger.1.1
                            @Override // io.realm.Realm.Transaction
                            public void execute(Realm realm2) {
                                realm2.where(CachedHistoryListItem.class).findAll().deleteAllFromRealm();
                            }
                        });
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            final PhoneEvent phoneEvent = (PhoneEvent) it.next();
                            realm.executeTransaction(new Realm.Transaction() { // from class: com.telguarder.features.numberLookup.PhoneEventHistoryManger.1.2
                                @Override // io.realm.Realm.Transaction
                                public void execute(Realm realm2) {
                                    CachedHistoryListItem cachedHistoryListItem = (CachedHistoryListItem) realm2.createObject(CachedHistoryListItem.class);
                                    if (!TextUtils.isEmpty(phoneEvent.name)) {
                                        try {
                                            cachedHistoryListItem.setName(phoneEvent.name);
                                        } catch (Exception e) {
                                            cachedHistoryListItem.setName(phoneEvent.phoneNumberForDisplaying);
                                        }
                                    } else {
                                        cachedHistoryListItem.setName(phoneEvent.phoneNumberForDisplaying);
                                    }
                                    cachedHistoryListItem.setPhoneNumberForDisplaying(phoneEvent.phoneNumberForDisplaying);
                                    cachedHistoryListItem.setCalledPhoneNumber(phoneEvent.calledPhoneNumber);
                                    cachedHistoryListItem.setDateTimeInMillis(phoneEvent.dateTimeInMillis);
                                    cachedHistoryListItem.setCounter(phoneEvent.counter);
                                    cachedHistoryListItem.setType(phoneEvent.type);
                                    cachedHistoryListItem.setSpamType(phoneEvent.spamType);
                                    cachedHistoryListItem.setLastSpamComment(phoneEvent.getLastSpamComment());
                                    cachedHistoryListItem.setLastSpamDate(phoneEvent.getLastSpamDate());
                                    cachedHistoryListItem.setSecurityLevel(phoneEvent.securityLevel);
                                }
                            });
                        }
                        if (realm != null) {
                            realm.close();
                        }
                        PhoneEventLogManager.getInstance().spamCommentLoadInProgress = false;
                        PhoneEventLogManager.getInstance().mDownloadSpamCommentCompletionHandler = null;
                        boolean unused3 = PhoneEventHistoryManger.mHistoryListCahceSaveInProgress = false;
                    } catch (Throwable th2) {
                        th = th2;
                        if (realm != null) {
                            realm.close();
                        }
                        PhoneEventLogManager.getInstance().spamCommentLoadInProgress = false;
                        PhoneEventLogManager.getInstance().mDownloadSpamCommentCompletionHandler = null;
                        boolean unused4 = PhoneEventHistoryManger.mHistoryListCahceSaveInProgress = false;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    realm = null;
                }
            }
        }).start();
    }

    public void updateLastCallHistoryListItem(final Context context, final PhoneEvent phoneEvent) {
        if (TextUtils.isEmpty(this.lastNumber)) {
            return;
        }
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.PhoneEventHistoryManger.3
            @Override // java.lang.Runnable
            public void run() {
                Realm realm = null;
                try {
                    Realm realm2 = PhoneEventHistoryManger.this.getRealm(context.getApplicationContext());
                    if (realm2 == null) {
                        if (realm2 == null) {
                            return;
                        }
                        realm2.close();
                        return;
                    }
                    realm = realm2;
                    realm2.executeTransaction(new Realm.Transaction() { // from class: com.telguarder.features.numberLookup.PhoneEventHistoryManger.3.1
                        @Override // io.realm.Realm.Transaction
                        public void execute(Realm realm3) {
                            CachedHistoryListItem cachedHistoryListItem = (CachedHistoryListItem) realm3.where(CachedHistoryListItem.class).equalTo(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER, ContactUtils.getE164NUmberIfPossible(context, PhoneEventHistoryManger.this.lastNumber, null)).equalTo("type", Integer.valueOf(PhoneEventHistoryManger.this.lastCallType)).equalTo(PhoneCallOrmLiteHelper.FIELD_DATE_TIME, Long.valueOf(PhoneEventHistoryManger.this.historyLastCallTimestamp)).findFirst();
                            if (cachedHistoryListItem != null) {
                                if (!TextUtils.isEmpty(phoneEvent.name)) {
                                    try {
                                        cachedHistoryListItem.setName(phoneEvent.name);
                                    } catch (Exception e) {
                                        cachedHistoryListItem.setName(PhoneEventHistoryManger.this.lastNumber);
                                    }
                                } else {
                                    cachedHistoryListItem.setName(PhoneEventHistoryManger.this.lastNumber);
                                }
                                cachedHistoryListItem.setCounter(phoneEvent.counter);
                                cachedHistoryListItem.setSpamType(phoneEvent.spamType);
                                cachedHistoryListItem.setLastSpamComment(phoneEvent.getLastSpamComment());
                                cachedHistoryListItem.setLastSpamDate(phoneEvent.getLastSpamDate());
                                cachedHistoryListItem.setSecurityLevel(phoneEvent.securityLevel);
                            }
                        }
                    });
                    if (realm2 == null) {
                        return;
                    }
                    realm2.close();
                } catch (Throwable th) {
                    if (realm != null) {
                        realm.close();
                    }
                    throw th;
                }
            }
        }).start();
    }

    public void updateLastCallHistoryListItem(final Context context, final Contact contact) {
        if (TextUtils.isEmpty(this.lastNumber) || contact == null || TextUtils.isEmpty(contact.name)) {
            return;
        }
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.PhoneEventHistoryManger.4
            @Override // java.lang.Runnable
            public void run() {
                Realm realm = null;
                try {
                    Realm realm2 = PhoneEventHistoryManger.this.getRealm(context.getApplicationContext());
                    if (realm2 == null) {
                        if (realm2 == null) {
                            return;
                        }
                        realm2.close();
                        return;
                    }
                    realm = realm2;
                    realm2.executeTransaction(new Realm.Transaction() { // from class: com.telguarder.features.numberLookup.PhoneEventHistoryManger.4.1
                        @Override // io.realm.Realm.Transaction
                        public void execute(Realm realm3) {
                            CachedHistoryListItem cachedHistoryListItem = (CachedHistoryListItem) realm3.where(CachedHistoryListItem.class).equalTo(PhoneCallOrmLiteHelper.FIELD_CALLED_PHONE_NUMBER, ContactUtils.getE164NUmberIfPossible(context, PhoneEventHistoryManger.this.lastNumber, null)).equalTo("type", Integer.valueOf(PhoneEventHistoryManger.this.lastCallType)).equalTo(PhoneCallOrmLiteHelper.FIELD_DATE_TIME, Long.valueOf(PhoneEventHistoryManger.this.historyLastCallTimestamp)).findFirst();
                            if (cachedHistoryListItem != null) {
                                if (TextUtils.isEmpty(contact.name)) {
                                    cachedHistoryListItem.setName(PhoneEventHistoryManger.this.lastNumber);
                                    return;
                                }
                                try {
                                    cachedHistoryListItem.setName(contact.name);
                                } catch (Exception e) {
                                    cachedHistoryListItem.setName(PhoneEventHistoryManger.this.lastNumber);
                                }
                            }
                        }
                    });
                    if (realm2 == null) {
                        return;
                    }
                    realm2.close();
                } catch (Throwable th) {
                    if (realm != null) {
                        realm.close();
                    }
                    throw th;
                }
            }
        }).start();
    }
}
