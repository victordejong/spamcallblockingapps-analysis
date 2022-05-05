package com.privacystar.core.data.model.helper;

import android.content.Context;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.SimpleOffender;
import com.privacystar.core.data.model.SimpleOffenderFields;
import com.privacystar.core.data.offender.OffenderLookupUtil;
import com.privacystar.core.data.offender.PhoneRecord;
import io.realm.Realm;
import io.realm.RealmResults;
import java.io.IOException;
import java.io.InputStream;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/SimpleOffenderRealm.class */
public class SimpleOffenderRealm {
    private static SimpleOffenderRealm instance;
    private static final long[] typeIdMap = {0, 128, 64, 1, 2};
    private Context context;

    private SimpleOffenderRealm(Context context) {
        this.context = context;
    }

    private RealmResults<SimpleOffender> getFreshSimpleOffendersSorted(Realm realm) {
        return realm.where(SimpleOffender.class).findAll().sort(SimpleOffenderFields.NUM);
    }

    public static SimpleOffenderRealm getInstance() {
        SimpleOffenderRealm instance2;
        synchronized (SimpleOffenderRealm.class) {
            try {
                instance2 = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance2;
    }

    public static SimpleOffenderRealm getInstance(Context context) {
        SimpleOffenderRealm simpleOffenderRealm;
        synchronized (SimpleOffenderRealm.class) {
            try {
                if (instance == null) {
                    instance = new SimpleOffenderRealm(context.getApplicationContext());
                }
                simpleOffenderRealm = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return simpleOffenderRealm;
    }

    public static boolean isOffenderDataLoaded(Realm realm) {
        return 0 < realm.where(SimpleOffender.class).count();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loadOffenderDataFromFileStream(Realm realm, InputStream inputStream) {
        try {
            realm.createAllFromJson(SimpleOffender.class, inputStream);
            Timber.m37d("Created %d Realm models from JSON offenders list", Long.valueOf(realm.where(SimpleOffender.class).count()));
        } catch (IOException e) {
            Timber.m32e(e, "Couldn't create all models from JSON offenders list.", new Object[0]);
        }
    }

    public static void loadOffenderDataFromJson(Realm realm) {
        Timber.m37d("Clearing existing SimpleOffender objects in preparation for loading from JSON.", new Object[0]);
        realm.executeTransaction(SimpleOffenderRealm$$Lambda$0.$instance);
        try {
            final InputStream jsonOffenderStream = OffenderLookupUtil.getJsonOffenderStream();
            Timber.m37d("Loaded JSON offender stream.", new Object[0]);
            realm.executeTransaction(new Realm.Transaction(jsonOffenderStream) { // from class: com.privacystar.core.data.model.helper.SimpleOffenderRealm$$Lambda$1
                private final InputStream arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = jsonOffenderStream;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm2) {
                    SimpleOffenderRealm.loadOffenderDataFromFileStream(realm2, this.arg$1);
                }
            });
            jsonOffenderStream.close();
            if (jsonOffenderStream != null) {
                jsonOffenderStream.close();
            }
        } catch (IOException e) {
            Timber.m32e(e, "reading local json offender file - are you trying a release build?", new Object[0]);
        }
    }

    private static int mapTypeToEnum(long j) {
        for (int i = 1; i < typeIdMap.length; i++) {
            if ((j & typeIdMap[i]) > 0) {
                return i;
            }
        }
        return 0;
    }

    public PhoneRecord findRealmRecord(Realm realm, long j) {
        PhoneRecord phoneRecord;
        SimpleOffender simpleOffender = (SimpleOffender) realm.where(SimpleOffender.class).equalTo(SimpleOffenderFields.NUM, Long.toString(j)).findFirst();
        if (simpleOffender != null) {
            phoneRecord = new PhoneRecord();
            phoneRecord.phoneNumber = j;
            phoneRecord.recordType = PhoneRecord.PhoneRecordType.getById(mapTypeToEnum(simpleOffender.getType()));
        } else {
            Timber.m37d("Lookup of number %d failed to find a match", Long.valueOf(j));
            phoneRecord = null;
        }
        return phoneRecord;
    }
}
