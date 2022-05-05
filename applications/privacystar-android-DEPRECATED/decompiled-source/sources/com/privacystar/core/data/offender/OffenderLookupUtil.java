package com.privacystar.core.data.offender;

import android.content.res.AssetManager;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.OffenderRealm;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.CallerCategoryUtil;
import com.privacystar.core.util.FileUtil;
import com.privacystar.core.util.NumbersUtil;
import io.realm.Realm;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.p018io.IOUtils;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/offender/OffenderLookupUtil.class */
public class OffenderLookupUtil {
    private static final String BINARY_OFFENDER_FILE_NAME = "offenders.fops";
    private static final int BIT_VALUE_MODIFIER_RED = 4;
    private static final int BIT_VALUE_MODIFIER_YELLOW = 2;
    public static final int BIT_VALUE_UNSET = -1;
    private static final String JSON_FIELD_NUMBER = "phoneNumber";
    private static final String JSON_FIELD_TYPE = "bitValue";
    private static final String JSON_OFFENDER_FILE_NAME = "offenders.json";
    private static final String OFFENDER_DIRECTORY_NAME = "raw_db";
    private static final String OFFENDER_FILE_FULL_NAME = "raw_db/raw_offenders.bin";
    private static final String OFFENDER_FILE_NAME = "raw_offenders.bin";
    private static InputStream binaryOffenderFileStream;
    private static InputStream jsonOffenderFileStream;
    private static boolean offenderFileAvailable = false;
    private static FileInputStream offenderFileStream;
    private static final Object lock = new Object();
    private static final int[] typeIdMap = {0, 128, 64, 1, 2};

    private static boolean assetExists(AssetManager assetManager, String str) {
        try {
            File file = new File(str);
            String parent = file.getParent();
            String str2 = parent;
            if (parent == null) {
                str2 = "";
            }
            String name = file.getName();
            String[] list = assetManager.list(str2);
            if (list == null || list.length <= 0) {
                return false;
            }
            for (String str3 : list) {
                if (name.equals(str3)) {
                    return true;
                }
            }
            return false;
        } catch (IOException e) {
            Timber.m23w(e, null, new Object[0]);
            return false;
        }
    }

    public static boolean copyOffenderFileAsset() {
        return FileUtil.copyBundledAsset(OFFENDER_FILE_FULL_NAME, OFFENDER_FILE_NAME);
    }

    public static PhoneRecord findRecord(Realm realm, long j) {
        return findRecordRealm(realm, j);
    }

    public static PhoneRecord findRecord(Realm realm, String str) {
        PhoneRecord phoneRecord = null;
        if (str == null) {
            return null;
        }
        Long numericPhoneNumber = NumbersUtil.getNumericPhoneNumber(str);
        if (numericPhoneNumber != null) {
            phoneRecord = findRecord(realm, numericPhoneNumber.longValue());
        }
        return phoneRecord;
    }

    public static PhoneRecord findRecordBinary(long j) {
        synchronized (lock) {
            try {
                FileInputStream offenderFileStream2 = getOffenderFileStream();
                if (offenderFileStream2 == null) {
                    return null;
                }
                return BlockUtility.findRecord(offenderFileStream2, j);
            } catch (IOException e) {
                Timber.m32e(e, "IOException finding offender.", new Object[0]);
                return null;
            }
        }
    }

    private static PhoneRecord findRecordRealm(Realm realm, long j) {
        PhoneRecord findRealmRecord;
        synchronized (lock) {
            if (!OffenderRealm.isOffenderDataLoaded(realm)) {
                OffenderRealm.loadOffenderDataFromBinary();
            }
            findRealmRecord = OffenderRealm.findRealmRecord(realm, j);
        }
        return findRealmRecord;
    }

    public static InputStream getBinaryOffenderStream() throws IOException {
        synchronized (lock) {
            if (binaryOffenderFileStream == null) {
                binaryOffenderFileStream = PSApplication.context().getAssets().open(BINARY_OFFENDER_FILE_NAME);
                Timber.m37d("%s loaded into InputStream", BINARY_OFFENDER_FILE_NAME);
            }
        }
        return binaryOffenderFileStream;
    }

    public static int getIntCallerType(Realm realm, long j) {
        CallerCategoryUtil.categoryIdFromBitValue(j);
        return phoneRecordToIntType(findRecord(realm, j));
    }

    public static int getIntCallerType(Realm realm, String str) {
        try {
            return getIntCallerType(realm, Long.parseLong(str));
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    public static InputStream getJsonOffenderStream() throws IOException {
        synchronized (lock) {
            if (jsonOffenderFileStream == null) {
                jsonOffenderFileStream = PSApplication.context().getAssets().open(JSON_OFFENDER_FILE_NAME);
                Timber.m37d("%s loaded into InputStream", JSON_OFFENDER_FILE_NAME);
            }
        }
        return jsonOffenderFileStream;
    }

    public static boolean getOffenderFileAvailable() {
        boolean z;
        synchronized (lock) {
            z = offenderFileAvailable;
        }
        return z;
    }

    private static FileInputStream getOffenderFileStream() throws IOException {
        FileInputStream fileInputStream;
        File fileFromAssets;
        synchronized (lock) {
            if (offenderFileStream == null && (fileFromAssets = FileUtil.getFileFromAssets(OFFENDER_FILE_NAME)) != null && fileFromAssets.exists()) {
                offenderFileStream = new FileInputStream(fileFromAssets);
            }
            fileInputStream = offenderFileStream;
        }
        return fileInputStream;
    }

    public static void invalidate() {
        synchronized (lock) {
            IOUtils.closeQuietly((InputStream) offenderFileStream);
            offenderFileStream = null;
        }
    }

    public static boolean isHotlistOffender(int i) {
        return (i & 4) > 0;
    }

    public static boolean offenderFileExists() {
        boolean assetExists;
        synchronized (lock) {
            Timber.m37d("Checking if offenders database file exists and is readable.", new Object[0]);
            try {
                assetExists = assetExists(PSApplication.context().getAssets(), OFFENDER_FILE_FULL_NAME);
                Timber.m37d("Offenders database %ssuccessfully found and loaded.", assetExists ? "" : "un");
            } catch (Exception e) {
                Timber.m32e(e, "attempting to read offenders database file.", new Object[0]);
                return false;
            }
        }
        return assetExists;
    }

    public static int phoneRecordToIntType(PhoneRecord phoneRecord) {
        int i = 0;
        if (phoneRecord != null) {
            int i2 = 0 + typeIdMap[phoneRecord.recordType.getId()];
            int i3 = 2;
            i = i2;
            if (i2 > 2) {
                if (phoneRecord.isHotlist) {
                    i3 = 4;
                }
                i = i2 + i3;
            }
        }
        return i;
    }

    public static void setOffenderFileAvailable(boolean z) {
        synchronized (lock) {
            offenderFileAvailable = z;
        }
    }

    public static void setOffenderListLoaded(boolean z) {
        PreferenceUtil.putOffenderListLoaded(z);
        setOffenderFileAvailable(z);
    }
}
