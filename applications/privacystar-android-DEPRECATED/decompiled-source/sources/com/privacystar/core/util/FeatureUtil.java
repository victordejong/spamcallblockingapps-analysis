package com.privacystar.core.util;

import android.support.annotation.NonNull;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.OffenderUtil;
import io.realm.Realm;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/FeatureUtil.class */
public class FeatureUtil {

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/FeatureUtil$CallBlockingLevel.class */
    public enum CallBlockingLevel {
        ALL,
        SCAM,
        NONE
    }

    public static boolean canBlockCaller(@NonNull Realm realm, @NonNull Caller caller) {
        if (LicenseFeatureRealm.isFeatureAvailable(realm, Feature.CALL_BLOCKING)) {
            return true;
        }
        if (!caller.isScammer() || !LicenseFeatureRealm.isFeatureAvailable(realm, Feature.SCAM_BLOCKING)) {
            return caller.isUnknownNumber() && LicenseFeatureRealm.isFeatureAvailable(realm, Feature.UNKNOWN_BLOCKING);
        }
        return true;
    }

    public static boolean canBlockCaller(@NonNull Realm realm, String str) {
        Caller caller;
        if (str == null || (caller = CallerFactory.getInstance().getCaller(str)) == null) {
            return false;
        }
        return canBlockCaller(realm, caller);
    }

    public static boolean canBlockUiType(@NonNull Realm realm, @NonNull OffenderUtil.OffenderTypeUi offenderTypeUi) {
        if (LicenseFeatureRealm.isFeatureAvailable(realm, Feature.CALL_BLOCKING)) {
            return true;
        }
        return LicenseFeatureRealm.isFeatureAvailable(realm, Feature.SCAM_BLOCKING) && offenderTypeUi == OffenderUtil.OffenderTypeUi.SCAM;
    }

    public static boolean couldBlock(@NonNull Realm realm, @NonNull Caller caller) {
        boolean couldBlockNonOffender = couldBlockNonOffender(realm, caller);
        Timber.m28v("Could block as a non-offender: [%b]", Boolean.valueOf(couldBlockNonOffender));
        if (couldBlockNonOffender) {
            return couldBlockNonOffender;
        }
        boolean couldBlockGeneral = couldBlockGeneral(realm, caller);
        Timber.m28v("Could block with General permissions: [%b]", Boolean.valueOf(couldBlockGeneral));
        if (couldBlockGeneral) {
            return couldBlockGeneral;
        }
        boolean couldBlockAsScam = couldBlockAsScam(realm, caller);
        Timber.m28v("Could block with Scam permissions: [%b]", Boolean.valueOf(couldBlockAsScam));
        if (couldBlockAsScam) {
            return couldBlockAsScam;
        }
        boolean couldBlockAsUnknown = couldBlockAsUnknown(realm, caller);
        Timber.m28v("Could block with Unknown permissions: [%b]", Boolean.valueOf(couldBlockAsUnknown));
        return couldBlockAsUnknown;
    }

    public static boolean couldBlockAsScam(@NonNull Realm realm, @NonNull Caller caller) {
        return caller.isScammer() && !PreferenceUtil.getProtectionScammersEnabled() && LicenseFeatureRealm.isFeatureAvailable(realm, Feature.SCAM_BLOCKING);
    }

    public static boolean couldBlockAsScam(@NonNull Realm realm, String str) {
        Caller caller;
        if (str == null || (caller = CallerFactory.getInstance().getCaller(str)) == null) {
            return false;
        }
        return couldBlockAsScam(realm, caller);
    }

    public static boolean couldBlockAsUnknown(@NonNull Realm realm, @NonNull Caller caller) {
        return caller.isUnknownNumber() && !PreferenceUtil.getIsUnknownBlockingEnabled() && LicenseFeatureRealm.isFeatureAvailable(realm, Feature.UNKNOWN_BLOCKING);
    }

    public static boolean couldBlockAsUnknown(@NonNull Realm realm, String str) {
        Caller caller;
        if (str == null || (caller = CallerFactory.getInstance().getCaller(str)) == null) {
            return false;
        }
        return couldBlockAsUnknown(realm, caller);
    }

    public static boolean couldBlockGeneral(@NonNull Realm realm, @NonNull Caller caller) {
        if (!LicenseFeatureRealm.isFeatureAvailable(realm, Feature.CALL_BLOCKING)) {
            return false;
        }
        ProtectionLevel byIndex = ProtectionLevel.byIndex(PreferenceUtil.getProtectionLevel());
        OffenderUtil.OffenderTypeUi uiType = OffenderUtil.EOffenderCategory.fromValue(caller.getOffenderCategoryId()).getUiType();
        if (byIndex != ProtectionLevel.CUSTOM) {
            return byIndex.getMemberCategories().contains(uiType);
        }
        return true;
    }

    public static boolean couldBlockGeneral(@NonNull Realm realm, String str) {
        Caller caller;
        if (str == null || (caller = CallerFactory.getInstance().getCaller(str)) == null) {
            return false;
        }
        return couldBlockGeneral(realm, caller);
    }

    public static boolean couldBlockNonOffender(@NonNull Realm realm, @NonNull Caller caller) {
        boolean z = false;
        if (!LicenseFeatureRealm.isFeatureAvailable(realm, Feature.CALL_BLOCKING)) {
            return false;
        }
        if (caller.getOffenderCategoryId() == 0) {
            z = true;
        }
        return z;
    }

    public static boolean couldBlockNonOffender(@NonNull Realm realm, String str) {
        Caller caller;
        if (str == null || (caller = CallerFactory.getInstance().getCaller(str)) == null) {
            return false;
        }
        return couldBlockNonOffender(realm, caller);
    }

    public static CallBlockingLevel getBlockingLevel() {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            CallBlockingLevel blockingLevel = getBlockingLevel(defaultInstance);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            return blockingLevel;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    public static CallBlockingLevel getBlockingLevel(@NonNull Realm realm) {
        return LicenseFeatureRealm.isFeatureAvailable(realm, Feature.CALL_BLOCKING) ? CallBlockingLevel.ALL : LicenseFeatureRealm.isFeatureAvailable(realm, Feature.SCAM_BLOCKING) ? CallBlockingLevel.SCAM : CallBlockingLevel.NONE;
    }

    public static boolean isManuallyBlockedAndScam(@NonNull Realm realm, @NonNull Caller caller) {
        return caller.isScammer() && LicenseFeatureRealm.isFeatureAvailable(realm, Feature.SCAM_BLOCKING) && BlockListRealm.isCallerBlocked(realm, caller);
    }

    public static boolean isManuallyBlockedAndScam(@NonNull Realm realm, String str) {
        Caller caller;
        if (str == null || (caller = CallerFactory.getInstance().getCaller(str)) == null) {
            return false;
        }
        return isManuallyBlockedAndScam(realm, caller);
    }

    public static boolean shouldBlockAsScam(@NonNull Realm realm, @NonNull Caller caller) {
        return caller.isScammer() && PreferenceUtil.getProtectionScammersEnabled() && LicenseFeatureRealm.isFeatureAvailable(realm, Feature.SCAM_BLOCKING);
    }

    public static boolean shouldBlockAsScam(@NonNull Realm realm, String str) {
        Caller caller;
        if (str == null || (caller = CallerFactory.getInstance().getCaller(str)) == null) {
            return false;
        }
        return shouldBlockAsScam(realm, caller);
    }
}
