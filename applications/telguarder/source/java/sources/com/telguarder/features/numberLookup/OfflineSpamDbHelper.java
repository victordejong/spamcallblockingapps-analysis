package com.telguarder.features.numberLookup;

import android.content.Context;
import android.text.TextUtils;
import com.telguarder.C2083R;
import com.telguarder.helpers.preferences.PreferencesManager;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.RealmResults;
import io.realm.annotations.RealmModule;
import io.realm.com_telguarder_features_numberLookup_dRealmProxy;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/OfflineSpamDbHelper.class */
public class OfflineSpamDbHelper {
    private static OfflineSpamDbHelper mInstance;
    public boolean dbReady = false;

    @RealmModule(classes = {C2210d.class})
    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/OfflineSpamDbHelper$InitialModule.class */
    public class InitialModule {
        InitialModule() {
            OfflineSpamDbHelper.this = r4;
        }
    }

    private OfflineSpamDbHelper() {
    }

    public String copyBundledRealmFile(Context context, InputStream inputStream, String str) {
        try {
            File file = new File(context.getFilesDir(), str);
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    fileOutputStream.close();
                    return file.getAbsolutePath();
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            return null;
        }
    }

    public static OfflineSpamDbHelper getInstance() {
        OfflineSpamDbHelper offlineSpamDbHelper;
        synchronized (OfflineSpamDbHelper.class) {
            try {
                if (mInstance == null) {
                    mInstance = new OfflineSpamDbHelper();
                }
                offlineSpamDbHelper = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return offlineSpamDbHelper;
    }

    private Realm getRealm(Context context) {
        Realm realm;
        byte[] bArr = {-79, -1, 60, -114, -64, -2, -26, 112, -90, -61, -72, 105, 46, -34, -24, 108, -108, -39, 111, 52, 103, 70, 66, 90, -124, -36, 23, 105, 38, 122, 4, -43, 99, 105, 92, -72, 126, 63, -47, 88, 0, -106, 96, 88, -46, 102, -47, 75, 59, 126, 41, 65, -55, -75, -34, 106, -127, -65, -108, 83, 44, 37, 68, 41};
        try {
            realm = Realm.getInstance(new RealmConfiguration.Builder().name(com_telguarder_features_numberLookup_dRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).encryptionKey(bArr).modules(new InitialModule(), new Object[0]).build());
        } catch (Exception e) {
            try {
                Realm.init(context);
                realm = Realm.getInstance(new RealmConfiguration.Builder().name(com_telguarder_features_numberLookup_dRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME).encryptionKey(bArr).modules(new InitialModule(), new Object[0]).build());
            } catch (Exception e2) {
                realm = null;
            }
        }
        return realm;
    }

    public void deleteSpam(Context context, String str) {
        final String replaceAll = str.replaceAll("\\D+", "");
        if (TextUtils.isEmpty(replaceAll) || !this.dbReady) {
            return;
        }
        Realm realm = null;
        try {
            Realm realm2 = getRealm(context.getApplicationContext());
            if (realm2 == null) {
                if (realm2 == null) {
                    return;
                }
                realm2.close();
                return;
            }
            realm = realm2;
            realm2.executeTransaction(new Realm.Transaction() { // from class: com.telguarder.features.numberLookup.OfflineSpamDbHelper.2
                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm3) {
                    realm3.where(C2210d.class).equalTo("b", Long.valueOf(replaceAll)).findAll().deleteAllFromRealm();
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

    public PhoneEvent getSpam(Context context, String str) {
        Realm realm;
        Throwable th;
        String replaceAll = str.replaceAll("\\D+", "");
        if (TextUtils.isEmpty(replaceAll) || !this.dbReady) {
            return null;
        }
        try {
            Long valueOf = Long.valueOf(replaceAll);
            try {
                Realm realm2 = getRealm(context.getApplicationContext());
                if (realm2 == null) {
                    if (realm2 == null) {
                        return null;
                    }
                    realm2.close();
                    return null;
                }
                try {
                    RealmResults findAll = realm2.where(C2210d.class).equalTo("b", valueOf).findAll();
                    PhoneEvent phoneEvent = null;
                    if (findAll != null) {
                        phoneEvent = null;
                        if (findAll.size() > 0) {
                            PhoneEvent phoneEvent2 = new PhoneEvent();
                            phoneEvent2.actorPhoneNumber = str;
                            phoneEvent2.actorType = ActorType.COMPANY.toString();
                            phoneEvent2.calledPhoneNumber = str;
                            phoneEvent2.dateTimeInMillis = System.currentTimeMillis();
                            phoneEvent2.f1286id = -1;
                            phoneEvent2.lastUpdateDateTimeInMillis = 0L;
                            phoneEvent2.phonebookNumber = str;
                            phoneEvent2.spamType = ((C2210d) findAll.get(0)).getC().longValue() == 1 ? "community" : "communityReported";
                            phoneEvent2.type = -1;
                            phoneEvent = phoneEvent2;
                        }
                    }
                    if (realm2 != null) {
                        realm2.close();
                    }
                    return phoneEvent;
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
        } catch (Exception e) {
            return null;
        }
    }

    public void init(final Context context) {
        if (PreferencesManager.getInstance().getOfflineSpamDbVersion() == 5) {
            this.dbReady = true;
            return;
        }
        this.dbReady = false;
        new Thread(new Runnable() { // from class: com.telguarder.features.numberLookup.OfflineSpamDbHelper.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    OfflineSpamDbHelper offlineSpamDbHelper = OfflineSpamDbHelper.this;
                    Context context2 = context;
                    offlineSpamDbHelper.copyBundledRealmFile(context2, context2.getResources().openRawResource(C2083R.raw.f1249d), com_telguarder_features_numberLookup_dRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
                    OfflineSpamDbHelper.this.dbReady = true;
                    PreferencesManager.getInstance().setOfflineSpamDbVersion(5);
                } catch (Exception e) {
                }
            }
        }).start();
    }
}
