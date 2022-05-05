package com.privacystar.core.data.model.helper;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import com.privacystar.core.BuildConfig;
import com.privacystar.core.data.model.RegistrationData;
import com.privacystar.core.data.model.RegistrationDataFields;
import com.privacystar.core.data.model.types.RegistrationDataStatus;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.service.firebase.PSFirebaseInstanceIDService;
import com.privacystar.core.util.InformationUtil;
import com.privacystar.core.util.Text;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/RegistrationDataRealm.class */
public class RegistrationDataRealm {
    public static void activatePendingData(Realm realm) {
        realm.executeTransaction(RegistrationDataRealm$$Lambda$1.$instance);
    }

    private static boolean compareRegistrationData(@NonNull RegistrationData registrationData, @NonNull RegistrationData registrationData2) {
        boolean z;
        if (!Text.equals(registrationData.getDeviceId(), registrationData2.getDeviceId())) {
            Timber.m37d("Registration data are not equal: [%s] is out-of-date. Was [%s] is now [%s].", RegistrationDataFields.DEVICE_ID, registrationData.getDeviceId(), registrationData2.getDeviceId());
            z = false;
        } else {
            z = true;
        }
        if (!Text.equals(registrationData.getFcmKey(), registrationData2.getFcmKey())) {
            Timber.m37d("Registration data are not equal: [%s] is out-of-date. Was [%s] is now [%s].", RegistrationDataFields.FCM_KEY, registrationData.getFcmKey(), registrationData2.getFcmKey());
            z = false;
        }
        if (!Text.equals(registrationData.getPackageName(), registrationData2.getPackageName())) {
            Timber.m37d("Registration data are not equal: [%s] is out-of-date. Was [%s] is now [%s].", "packageName", registrationData.getPackageName(), registrationData2.getPackageName());
            z = false;
        }
        if (!Text.equals(registrationData.getCachedApkVersion(), registrationData2.getCachedApkVersion())) {
            Timber.m37d("Registration data are not equal: [%s] is out-of-date. Was [%s] is now [%s].", "apkVersion", registrationData.getCachedApkVersion(), registrationData2.getCachedApkVersion());
            z = false;
        }
        if (!Text.equals(registrationData.getCachedPhoneNumber(), registrationData2.getCachedPhoneNumber())) {
            Timber.m37d("Registration data are not equal: [%s] is out-of-date. Was [%s] is now [%s].", "phoneNumber", registrationData.getCachedPhoneNumber(), registrationData2.getCachedPhoneNumber());
            z = false;
        }
        if (!Text.equals(registrationData.getCachedMcc(), registrationData2.getCachedMcc())) {
            Timber.m37d("Registration data are not equal: [%s] is out-of-date. Was [%s] is now [%s].", "mcc", registrationData.getCachedMcc(), registrationData2.getCachedMnc());
            z = false;
        }
        if (!Text.equals(registrationData.getCachedMnc(), registrationData2.getCachedMnc())) {
            Timber.m37d("Registration data are not equal: [%s] is out-of-date. Was [%s] is now [%s].", "mnc", registrationData.getCachedMnc(), registrationData2.getCachedMnc());
            z = false;
        }
        if (!Text.equals(registrationData.getCachedOsVersion(), registrationData2.getCachedOsVersion())) {
            Timber.m37d("Registration data are not equal: [%s] is out-of-date. Was [%s] is now [%s].", "osVersion", registrationData.getCachedOsVersion(), registrationData2.getCachedOsVersion());
            z = false;
        }
        return z;
    }

    public static void deleteRegistrationData(Realm realm, final RegistrationDataStatus registrationDataStatus) {
        realm.executeTransaction(new Realm.Transaction(registrationDataStatus) { // from class: com.privacystar.core.data.model.helper.RegistrationDataRealm$$Lambda$0
            private final RegistrationDataStatus arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = registrationDataStatus;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                RegistrationDataRealm.deleteRegistrationDataImpl(realm2, this.arg$1);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deleteRegistrationDataImpl(Realm realm, RegistrationDataStatus registrationDataStatus) {
        RegistrationData registrationData = getRegistrationData(realm, registrationDataStatus);
        if (registrationData != null) {
            registrationData.deleteFromRealm();
        }
    }

    public static void discardPendingData(Realm realm) {
        deleteRegistrationData(realm, RegistrationDataStatus.PENDING);
    }

    public static RegistrationData generateRegistrationData(Context context) {
        RegistrationData registrationData = new RegistrationData();
        registrationData.setDataStatus(RegistrationDataStatus.INACTIVE);
        registrationData.setDeviceId(InformationUtil.getDevicePinOrNothing(context));
        registrationData.setFcmKey(PSFirebaseInstanceIDService.getFcmId());
        registrationData.setPackageName(context.getPackageName());
        registrationData.setCachedApkVersion(Text.formatVersionNumber(BuildConfig.VERSION_NAME));
        registrationData.setCachedOsVersion(Build.VERSION.RELEASE);
        String normalizeNumber = InformationUtil.normalizeNumber(DeviceNumberProvider.INSTANCE.getNumber());
        String str = normalizeNumber;
        if (Text.isBlank(normalizeNumber)) {
            str = "";
        }
        registrationData.setCachedPhoneNumber(str);
        registrationData.setCachedMcc(InformationUtil.getMcc(context));
        registrationData.setCachedMnc(InformationUtil.getMnc(context));
        return registrationData;
    }

    public static RegistrationData getRegistrationData(Realm realm, RegistrationDataStatus registrationDataStatus) {
        return (RegistrationData) realm.where(RegistrationData.class).equalTo(RegistrationDataFields.DATA_STATUS, registrationDataStatus.getStatus()).findFirst();
    }

    public static RealmResults<RegistrationData> getRegistrationData(Realm realm) {
        return realm.where(RegistrationData.class).findAll();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isCacheCurrent(io.realm.Realm r3, com.privacystar.core.data.model.RegistrationData r4) {
        /*
            r0 = r3
            com.privacystar.core.data.model.types.RegistrationDataStatus r1 = com.privacystar.core.data.model.types.RegistrationDataStatus.ACTIVE
            com.privacystar.core.data.model.RegistrationData r0 = getRegistrationData(r0, r1)
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L_0x001a
            java.lang.String r0 = "Provided RegistrationData is null."
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            timber.log.Timber.m37d(r0, r1)
        L_0x0015:
            r0 = 0
            r5 = r0
            goto L_0x002c
        L_0x001a:
            r0 = r3
            if (r0 != 0) goto L_0x002a
            java.lang.String r0 = "Registration cache is not current: no cache exists."
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            timber.log.Timber.m37d(r0, r1)
            goto L_0x0015
        L_0x002a:
            r0 = 1
            r5 = r0
        L_0x002c:
            r0 = r5
            if (r0 != 0) goto L_0x0032
            r0 = 0
            return r0
        L_0x0032:
            r0 = r3
            r1 = r4
            boolean r0 = compareRegistrationData(r0, r1)
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = "Registration cache fully checked and found to be current."
            r1 = 0
            java.lang.Object[] r1 = new java.lang.Object[r1]
            timber.log.Timber.m37d(r0, r1)
        L_0x0045:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.model.helper.RegistrationDataRealm.isCacheCurrent(io.realm.Realm, com.privacystar.core.data.model.RegistrationData):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$activatePendingData$1$RegistrationDataRealm(Realm realm) {
        RegistrationData registrationData = getRegistrationData(realm, RegistrationDataStatus.PENDING);
        if (registrationData != null) {
            deleteRegistrationDataImpl(realm, RegistrationDataStatus.ACTIVE);
            RegistrationData registrationData2 = (RegistrationData) realm.copyFromRealm((Realm) registrationData);
            registrationData2.setDataStatus(RegistrationDataStatus.ACTIVE);
            registrationData.deleteFromRealm();
            realm.copyToRealm((Realm) registrationData2, new ImportFlag[0]);
            Timber.m37d("Promoted pending registration data to active.", new Object[0]);
            return;
        }
        Timber.m37d("Attempted to activate pending Registration data but pending data didn't exist.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$setPendingData$2$RegistrationDataRealm(RegistrationData registrationData, Realm realm) {
        deleteRegistrationDataImpl(realm, RegistrationDataStatus.PENDING);
        RegistrationData registrationData2 = registrationData;
        if (registrationData.isManaged()) {
            registrationData2 = (RegistrationData) realm.copyFromRealm((Realm) registrationData);
            registrationData.deleteFromRealm();
        }
        registrationData2.setDataStatus(RegistrationDataStatus.PENDING);
        realm.copyToRealm((Realm) registrationData2, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$setRegistrationData$3$RegistrationDataRealm(RegistrationData registrationData, Realm realm) {
        if (registrationData == null) {
            Timber.m37d("Tried to set pending status on null Registration data.", new Object[0]);
            return;
        }
        deleteRegistrationDataImpl(realm, registrationData.getRegistrationDataStatus());
        realm.copyToRealm((Realm) registrationData, new ImportFlag[0]);
    }

    public static void setPendingData(Realm realm, final RegistrationData registrationData) {
        if (registrationData == null) {
            Timber.m37d("Tried to set pending status on null Registration data.", new Object[0]);
        } else {
            realm.executeTransaction(new Realm.Transaction(registrationData) { // from class: com.privacystar.core.data.model.helper.RegistrationDataRealm$$Lambda$2
                private final RegistrationData arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = registrationData;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm2) {
                    RegistrationDataRealm.lambda$setPendingData$2$RegistrationDataRealm(this.arg$1, realm2);
                }
            });
        }
    }

    public static void setRegistrationData(Realm realm, final RegistrationData registrationData) {
        realm.executeTransaction(new Realm.Transaction(registrationData) { // from class: com.privacystar.core.data.model.helper.RegistrationDataRealm$$Lambda$3
            private final RegistrationData arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = registrationData;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                RegistrationDataRealm.lambda$setRegistrationData$3$RegistrationDataRealm(this.arg$1, realm2);
            }
        });
    }
}
