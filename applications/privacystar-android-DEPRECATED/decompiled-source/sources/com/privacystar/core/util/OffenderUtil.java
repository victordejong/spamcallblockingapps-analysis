package com.privacystar.core.util;

import android.support.annotation.NonNull;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.OffenderRealm;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.jobs.OffenderProcessingJob;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/OffenderUtil.class */
public class OffenderUtil {
    private static final List<EOffenderCategory> goToVoiceMailTypes = Collections.singletonList(EOffenderCategory.PHARMACY);

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/OffenderUtil$EOffenderCategory.class */
    public enum EOffenderCategory {
        DEBT_COLLECTOR(1, OffenderTypeUi.ACCOUNT_SERVICES),
        ORIGINAL_CREDITOR(2, OffenderTypeUi.NONE),
        PAYDAY_LOAN(3, OffenderTypeUi.NONE),
        THIRD_PARTY_COLLECTION(4, OffenderTypeUi.NONE),
        SCAM_LIKELY(5, OffenderTypeUi.SCAM),
        AUTOMATED_MARKETING(6, OffenderTypeUi.NONE),
        DEBT_RELIEF(7, OffenderTypeUi.NONE),
        LIVE_TELESALES(8, OffenderTypeUi.NUISANCE),
        NON_PROFIT(9, OffenderTypeUi.CHARITY),
        PHARMACY(10, OffenderTypeUi.NONE),
        POLITICAL(11, OffenderTypeUi.POLITICAL),
        GENERAL_SURVEY(12, OffenderTypeUi.SURVEY),
        SWEEPSTAKES(13, OffenderTypeUi.NONE),
        TELEMARKETER(14, OffenderTypeUi.TELEMARKETING),
        TELECOM_SERVICE(15, OffenderTypeUi.NONE),
        EVENT_NOTIFICATION(16, OffenderTypeUi.NONE),
        FAX_MACHINE(17, OffenderTypeUi.NONE),
        OTHER_BUSINESS(18, OffenderTypeUi.NONE),
        PERSONAL_NUMBER(19, OffenderTypeUi.NONE),
        PRISON(20, OffenderTypeUi.PRISON),
        SILENT(21, OffenderTypeUi.NONE),
        UNKNOWN(22, OffenderTypeUi.NONE),
        SHARED_NUMBER(23, OffenderTypeUi.NONE),
        SCAMMER_INVALID(24, OffenderTypeUi.SCAM),
        SCAMMER_LIVE(25, OffenderTypeUi.SCAM),
        SCAMMER_NO_LIVE(26, OffenderTypeUi.SCAM),
        FRAUD(27, OffenderTypeUi.NONE),
        SCHOOL_DISTRICT(28, OffenderTypeUi.NONE),
        PUBLIC_SERVICE(29, OffenderTypeUi.NONE),
        INVESTMENT_SERVICES(30, OffenderTypeUi.NONE),
        WRECKER_SERVICES(31, OffenderTypeUi.NONE),
        DELIVERY_SHIPPING(32, OffenderTypeUi.NONE),
        CHURCHES(33, OffenderTypeUi.NONE),
        NUISANCE(34, OffenderTypeUi.NONE),
        AIRLINE_NOTIFICATION(35, OffenderTypeUi.NONE),
        HEALTH_CARE(36, OffenderTypeUi.NONE),
        MEDICAL(37, OffenderTypeUi.NONE),
        DENTIST(38, OffenderTypeUi.NONE),
        VISION_OPTOMETRY(39, OffenderTypeUi.NONE),
        CHIROPRACTIC(40, OffenderTypeUi.NONE),
        PSYCHIATRIC_COUNSELING(41, OffenderTypeUi.NONE),
        THERAPY(42, OffenderTypeUi.NONE),
        PODIATRIST(43, OffenderTypeUi.NONE),
        ATTORNEY(44, OffenderTypeUi.NONE),
        ACCOUNTING_AUDITING(45, OffenderTypeUi.NONE),
        ADVERTISING(46, OffenderTypeUi.NONE),
        AGRICULTURE(47, OffenderTypeUi.NONE),
        ASSOCIATION_ORGANIZATIONS(48, OffenderTypeUi.NONE),
        AUTOMOTIVE(49, OffenderTypeUi.NONE),
        BUILDING(50, OffenderTypeUi.NONE),
        BUSINESS_SERVICES(51, OffenderTypeUi.NONE),
        CHILDCARE(52, OffenderTypeUi.NONE),
        VET_SERVICES_AND_PRODUCTS(53, OffenderTypeUi.NONE),
        EDUCATION(54, OffenderTypeUi.NONE),
        ENTERTAINMENT(55, OffenderTypeUi.NONE),
        FOOD_GROCERY(56, OffenderTypeUi.NONE),
        FINANCIAL(57, OffenderTypeUi.NONE),
        GOVERNMENT(58, OffenderTypeUi.NONE),
        HOME_FURNISHING(59, OffenderTypeUi.NONE),
        HOTELS_AND_MOTELS(60, OffenderTypeUi.NONE),
        INSURANCE(61, OffenderTypeUi.NONE),
        MANUFACTURING(62, OffenderTypeUi.NONE),
        MERCHANDISE_RETAIL(63, OffenderTypeUi.NONE),
        PERSONAL_SERVICES(64, OffenderTypeUi.NONE),
        PUBLIC_WORKS(65, OffenderTypeUi.NONE),
        REAL_ESTATE(66, OffenderTypeUi.NONE),
        RECREATION_FITNESS(67, OffenderTypeUi.NONE),
        RESTAURANT(68, OffenderTypeUi.NONE),
        SECURITY(69, OffenderTypeUi.NONE),
        SALON_BARBERS(70, OffenderTypeUi.NONE),
        SOCIAL_SERVICES(71, OffenderTypeUi.NONE),
        TRADE_CONTRACTORS(72, OffenderTypeUi.NONE),
        TRANSPORTATION(73, OffenderTypeUi.NONE),
        SCAMMER_CALLBACK_REQ(74, OffenderTypeUi.NONE),
        CUSTOMER_SERVICE(75, OffenderTypeUi.NONE),
        INVALID_CATEGORY(-1, OffenderTypeUi.NONE);
        
        private final int offenderId;
        private final OffenderTypeUi uiType;

        EOffenderCategory(int i, OffenderTypeUi offenderTypeUi) {
            this.offenderId = i;
            this.uiType = offenderTypeUi;
        }

        @NonNull
        public static EOffenderCategory fromValue(int i) {
            EOffenderCategory[] values;
            for (EOffenderCategory eOffenderCategory : values()) {
                if (eOffenderCategory.getValue() == i) {
                    return eOffenderCategory;
                }
            }
            return INVALID_CATEGORY;
        }

        @NonNull
        public static List<EOffenderCategory> getIdsForUiType(OffenderTypeUi offenderTypeUi) {
            EOffenderCategory[] values;
            ArrayList arrayList = new ArrayList();
            for (EOffenderCategory eOffenderCategory : values()) {
                if (eOffenderCategory.getUiType() == offenderTypeUi) {
                    arrayList.add(eOffenderCategory);
                }
            }
            return arrayList;
        }

        @NonNull
        public OffenderTypeUi getUiType() {
            return this.uiType;
        }

        public int getValue() {
            return this.offenderId;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/OffenderUtil$OffenderTypeUi.class */
    public enum OffenderTypeUi {
        SCAM,
        NUISANCE,
        TELEMARKETING,
        ACCOUNT_SERVICES,
        POLITICAL,
        CHARITY,
        SURVEY,
        PRISON,
        NONE
    }

    public static List<EOffenderCategory> getGoToVoiceMailTypes() {
        return goToVoiceMailTypes;
    }

    public static OffenderTypeUi getOffenderTypeUiFromID(int i) {
        return EOffenderCategory.fromValue(i).getUiType();
    }

    public static boolean idIsInOffenderMap(int i) {
        return EOffenderCategory.fromValue(i) != EOffenderCategory.INVALID_CATEGORY;
    }

    public static void loadLocalOffenderDataIfNeeded() {
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            if (!OffenderRealm.isOffenderDataLoaded(defaultInstance) && !wasLocalOffenderLoadRecent()) {
                Timber.m37d("Local offender data will be loaded - queueing OffenderProcessingJob.", new Object[0]);
                PSApplication.getInstance().getJobManager().addJobInBackground(new OffenderProcessingJob());
                PreferenceUtil.putLastLocalOffenderLoad(System.currentTimeMillis());
            }
            if (defaultInstance != null) {
                defaultInstance.close();
            }
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

    /* JADX WARN: Removed duplicated region for block: B:70:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void processTemporaryOffenderFile(java.lang.String r6, boolean r7, java.lang.String r8, java.lang.Long r9) throws java.io.FileNotFoundException {
        /*
            Method dump skipped, instructions count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.OffenderUtil.processTemporaryOffenderFile(java.lang.String, boolean, java.lang.String, java.lang.Long):void");
    }

    private static void trackOffenderSyncEvent(Long l, Long l2) {
        AnalyticsManager.INSTANCE.fire(new Event.OffenderListSyncEvent(l.longValue(), l2.longValue()));
    }

    private static boolean wasLocalOffenderLoadRecent() {
        return PreferenceUtil.getLastLocalOffenderLoad() + 15000 > System.currentTimeMillis();
    }
}
