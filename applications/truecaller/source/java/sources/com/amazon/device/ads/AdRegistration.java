package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdRegistration.class */
public class AdRegistration {
    private static final String LOGTAG = "AdRegistration";
    private static AdRegistration adRegistrationInstance;
    private static CMPFlavor cmpFlavor;
    private static boolean consentStringDirty = false;
    private static ConsentStatus currentConsentStatus;
    private static String currentVendorListString;
    private static Map<String, String> customDictionary;
    private static HashMap<String, SlotGroup> groups;
    private static String lastSeenNonIABEncodedConsentString;
    private static boolean locationEnabled = false;
    private static String mAppKey;
    private static Context mContext;
    public static List<String> providersProprietaryKeys;
    private static String sdkDistributionPlace;
    private static boolean testMode = false;
    private ActivityMonitor activityMonitor;
    public static MRAIDPolicy mraidPolicy = MRAIDPolicy.AUTO_DETECT;
    public static String[] serverlessMarkers = {"com.amazon.admob_adapter.APSAdMobCustomBannerEvent", "com.amazon.mopub_adapter.APSMopubCustomBannerEvent"};
    private static Map<String, DTBCacheData> adMobRequestIdMap = new HashMap();
    private Set<AdProvider> providers = new HashSet();
    private EventDistributor eventDistributor = new EventDistributor();

    /* renamed from: com.amazon.device.ads.AdRegistration$1 */
    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdRegistration$1.class */
    public static /* synthetic */ class C04411 {
        public static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$DTBBannerType;
        public static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$DTBSlotType;

        static {
            DTBSlotType.values();
            int[] iArr = new int[4];
            $SwitchMap$com$amazon$device$ads$DTBSlotType = iArr;
            try {
                DTBSlotType dTBSlotType = DTBSlotType.SLOT_320_50;
                iArr[0] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] iArr2 = $SwitchMap$com$amazon$device$ads$DTBSlotType;
                DTBSlotType dTBSlotType2 = DTBSlotType.SLOT_300_250;
                iArr2[1] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] iArr3 = $SwitchMap$com$amazon$device$ads$DTBSlotType;
                DTBSlotType dTBSlotType3 = DTBSlotType.SLOT_728_90;
                iArr3[2] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                int[] iArr4 = $SwitchMap$com$amazon$device$ads$DTBSlotType;
                DTBSlotType dTBSlotType4 = DTBSlotType.SLOT_SMART;
                iArr4[3] = 4;
            } catch (NoSuchFieldError e4) {
            }
            DTBBannerType.values();
            int[] iArr5 = new int[2];
            $SwitchMap$com$amazon$device$ads$DTBBannerType = iArr5;
            try {
                DTBBannerType dTBBannerType = DTBBannerType.PHONE_BANNER;
                iArr5[0] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                int[] iArr6 = $SwitchMap$com$amazon$device$ads$DTBBannerType;
                DTBBannerType dTBBannerType2 = DTBBannerType.TABLET_BANNER;
                iArr6[1] = 2;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdRegistration$CMPFlavor.class */
    public enum CMPFlavor {
        CMP_NOT_DEFINED,
        GOOGLE_CMP,
        MOPUB_CMP,
        ADMOB_CMP
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdRegistration$ConsentStatus.class */
    public enum ConsentStatus {
        CONSENT_NOT_DEFINED,
        EXPLICIT_YES,
        EXPLICIT_NO,
        UNKNOWN
    }

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/AdRegistration$SlotGroup.class */
    public static class SlotGroup {
        public String name;
        public Set<DTBAdSize> slots;

        public SlotGroup(String str) {
            if (!DtbCommonUtils.isNullOrEmpty(str)) {
                this.name = str;
                this.slots = new HashSet();
                return;
            }
            throw new IllegalArgumentException("Slot Group name cannot be null or empty");
        }

        public void addSlot(DTBAdSize dTBAdSize) {
            try {
                for (DTBAdSize dTBAdSize2 : this.slots) {
                    if (dTBAdSize2.getWidth() == dTBAdSize.getWidth() && dTBAdSize2.getHeight() == dTBAdSize.getHeight() && dTBAdSize2.getDTBAdType() == dTBAdSize.getDTBAdType()) {
                        return;
                    }
                }
                this.slots.add(dTBAdSize);
            } catch (RuntimeException e) {
                DtbLog.error(AdRegistration.LOGTAG, "Fail to execute addSlot method in SlotGroup class");
                C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute addSlot method in SlotGroup class", e);
            }
        }

        public DTBAdSize getSizeByBannerType(DTBBannerType dTBBannerType) {
            try {
                int ordinal = dTBBannerType.ordinal();
                if (ordinal == 0) {
                    return getSizeByWidthAndHeight(320, 50);
                }
                if (ordinal == 1) {
                    return getSizeByWidthAndHeight(728, 90);
                }
                return null;
            } catch (RuntimeException e) {
                DtbLog.error(AdRegistration.LOGTAG, "Fail to execute getSizeByBannerType method in SlotGroup class");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getSizeByBannerType method in SlotGroup class", e);
                return null;
            }
        }

        public DTBAdSize getSizeBySlotType(DTBSlotType dTBSlotType) {
            try {
                int ordinal = dTBSlotType.ordinal();
                int i = 50;
                int i2 = 320;
                if (ordinal == 0) {
                    return getSizeByWidthAndHeight(320, 50);
                }
                if (ordinal == 1) {
                    return getSizeByWidthAndHeight(300, 250);
                }
                if (ordinal == 2) {
                    return getSizeByWidthAndHeight(728, 90);
                }
                if (ordinal != 3) {
                    return null;
                }
                if (DtbDeviceDataRetriever.isTablet()) {
                    i = 90;
                    i2 = 728;
                }
                return getSizeByWidthAndHeight(i2, i);
            } catch (RuntimeException e) {
                DtbLog.error(AdRegistration.LOGTAG, "Fail to execute getSizeBySlotType method in SlotGroup class");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getSizeBySlotType method in SlotGroup class", e);
                return null;
            }
        }

        public DTBAdSize getSizeBySlotUUID(String str) {
            for (DTBAdSize dTBAdSize : this.slots) {
                if (dTBAdSize.getSlotUUID().equals(str)) {
                    return dTBAdSize;
                }
            }
            return null;
        }

        public DTBAdSize getSizeByWidthAndHeight(int i, int i2) {
            return getSizeByWidthHeightType(i, i2, AdType.DISPLAY);
        }

        public DTBAdSize getSizeByWidthHeightType(int i, int i2, AdType adType) {
            try {
                for (DTBAdSize dTBAdSize : this.slots) {
                    if (dTBAdSize.getHeight() == i2 && dTBAdSize.getWidth() == i && dTBAdSize.getDTBAdType() == adType) {
                        return dTBAdSize;
                    }
                }
                return null;
            } catch (RuntimeException e) {
                DtbLog.error(AdRegistration.LOGTAG, "Fail to execute getSizeByWidthHeightType method in SlotGroup class");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getSizeByWidthHeightType method in SlotGroup class", e);
                return null;
            }
        }
    }

    private AdRegistration(String str, Context context) throws IllegalArgumentException {
        if (context == null || str == null || "".equals(str.trim())) {
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Invalid parameters for initialization.");
            DtbLog.fatal(LOGTAG, "mDTB SDK initialize failed due to invalid registration parameters.", illegalArgumentException);
            throw illegalArgumentException;
        }
        try {
            Class.forName("e.c.a.a.a");
            mAppKey = str;
            Context applicationContext = context.getApplicationContext();
            mContext = applicationContext;
            C22016a.f61211a = applicationContext;
            C22016a.f61213c = "e9026ffd475a1a3691e6b2ce637a9b92aab1073ebf53a67c5f2583be8a804ecb";
            C22016a.m8827c(1);
            C22016a.f61214d = "https://prod.cm.publishers.advertising.a2z.com/logrecord/putlog";
            DtbSharedPreferences createInstance = DtbSharedPreferences.createInstance();
            context.checkCallingOrSelfPermission("android.permission.INTERNET");
            if (context.checkCallingOrSelfPermission("android.permission.INTERNET") == -1) {
                DtbLog.error(LOGTAG, "Network task cannot commence because the INTERNET permission is missing from the app's manifest.");
            }
            String versionInUse = createInstance.getVersionInUse();
            if (versionInUse == null || DtbCommonUtils.isNullOrEmpty(versionInUse)) {
                createInstance.setVersionInUse(DtbConstants.SDK_VERSION);
                createInstance.setGooglePlayServicesUnavailable(false);
            }
            currentConsentStatus = ConsentStatus.CONSENT_NOT_DEFINED;
            cmpFlavor = CMPFlavor.CMP_NOT_DEFINED;
            consentStringDirty = false;
            customDictionary = new HashMap();
            JSONObject loadJsonFromAsset = DTBAdUtil.loadJsonFromAsset(DtbConstants.SDK_DISTRIBUTION_MARKER_WITH_JSON);
            if (loadJsonFromAsset == null) {
                return;
            }
            try {
                sdkDistributionPlace = loadJsonFromAsset.getString(DtbConstants.SDK_DISTRIBUTION_KEY_NAME);
            } catch (Exception e) {
                DtbLog.warn("Unable to get distribution place value");
            }
        } catch (ClassNotFoundException e2) {
            IllegalArgumentException illegalArgumentException2 = new IllegalArgumentException("Missing APSAndroidShared SDK. Please import the APSAndroidShared SDK to your project. For further details, please refer to our Android SDK documentation.");
            DtbLog.fatal(LOGTAG, "Missing APSAndroidShared SDK. Please import the APSAndroidShared SDK to your project. For further details, please refer to our Android SDK documentation.", illegalArgumentException2);
            throw illegalArgumentException2;
        }
    }

    public static void addAdMobCache(String str, DTBCacheData dTBCacheData) {
        if (adMobRequestIdMap == null) {
            adMobRequestIdMap = new HashMap();
        }
        removeExpiredAdMobCache();
        synchronized (adMobRequestIdMap) {
            adMobRequestIdMap.put(str, dTBCacheData);
        }
    }

    public static void addCustomAttribute(String str, String str2) {
        if (isInitialized()) {
            try {
                if (customDictionary == null) {
                    customDictionary = new HashMap();
                }
                customDictionary.put(str, str2);
                return;
            } catch (RuntimeException e) {
                DtbLog.error(LOGTAG, "Fail to execute addCustomAttribute method");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute addCustomAttribute method", e);
                return;
            }
        }
        throw new IllegalStateException(DtbConstants.MDTB_NOT_INITIALIZED);
    }

    public static void addProvider(AdProvider adProvider) {
        if (adRegistrationInstance != null) {
            Class<?> cls = adProvider.getClass();
            for (AdProvider adProvider2 : adRegistrationInstance.providers) {
                if (adProvider2.getClass().equals(cls)) {
                    return;
                }
            }
            adRegistrationInstance.providers.add(adProvider);
            appendProprietaryProviderKeys(adProvider.getProprietaryKeys());
            return;
        }
        throw new IllegalStateException("Instance must be initialized prior to adding providers");
    }

    public static void addSlotGroup(SlotGroup slotGroup) {
        try {
            if (groups == null) {
                groups = new HashMap<>();
            }
            groups.put(slotGroup.name, slotGroup);
        } catch (RuntimeException e) {
            DtbLog.error(LOGTAG, "Fail to execute addSlotGroup method");
            C22016a.m8829a(EnumC22018b.FATAL, EnumC22019c.EXCEPTION, "Fail to execute addSlotGroup method", e);
        }
    }

    public static void appendProprietaryProviderKeys(String[] strArr) {
        if (providersProprietaryKeys == null) {
            providersProprietaryKeys = new ArrayList();
        }
        for (String str : strArr) {
            providersProprietaryKeys.add(str);
        }
    }

    public static void enableLogging(boolean z) {
        try {
            if (z) {
                DtbLog.setLogLevel(DTBLogLevel.All);
            } else {
                DtbLog.setLogLevel(DTBLogLevel.Error);
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOGTAG, "Fail to execute enableLogging method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute enableLogging method", e);
        }
    }

    public static void enableLogging(boolean z, DTBLogLevel dTBLogLevel) {
        try {
            if (z) {
                DtbLog.setLogLevel(dTBLogLevel);
            } else {
                DtbLog.setLogLevel(DTBLogLevel.Error);
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOGTAG, "Fail to execute enableLogging method with logLevel argument");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute enableLogging method with logLevel argument", e);
        }
    }

    public static void enableTesting(boolean z) {
        try {
            if (!z) {
                testMode = false;
            } else if (!DTBAdUtil.isInstalledFromAppStore(mContext)) {
                testMode = z;
                DtbLog.enableCallerInfo(z);
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOGTAG, "Fail to execute enableTesting method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute enableTesting method", e);
        }
    }

    private ActivityMonitor getActivityMonitor() {
        return this.activityMonitor;
    }

    public static DTBCacheData getAdMobCache(String str) {
        if (DtbCommonUtils.isNullOrEmpty(str) || adMobRequestIdMap == null) {
            return null;
        }
        removeExpiredAdMobCache();
        return adMobRequestIdMap.get(str);
    }

    public static Map<String, DTBCacheData> getAdMobCacheData() {
        return adMobRequestIdMap;
    }

    public static Set<AdProvider> getAdProviders() {
        AdRegistration adRegistration = adRegistrationInstance;
        if (adRegistration != null) {
            return adRegistration.providers;
        }
        return null;
    }

    public static String getAppKey() {
        return mAppKey;
    }

    public static CMPFlavor getCMPFlavor() {
        if (isInitialized()) {
            String cMPFlavor = DtbSharedPreferences.getInstance().getCMPFlavor();
            return cMPFlavor == null ? cmpFlavor : CMPFlavor.valueOf(cMPFlavor);
        }
        throw new IllegalStateException(DtbConstants.MDTB_NOT_INITIALIZED);
    }

    public static ConsentStatus getConsentStatus() {
        if (isInitialized()) {
            String consentStatus = DtbSharedPreferences.getInstance().getConsentStatus();
            return consentStatus == null ? currentConsentStatus : ConsentStatus.valueOf(consentStatus);
        }
        throw new IllegalStateException(DtbConstants.MDTB_NOT_INITIALIZED);
    }

    public static Context getContext() {
        return mContext;
    }

    public static Activity getCurrentActivity() {
        return adRegistrationInstance.getActivityMonitor().getCurrentActivity();
    }

    public static Map<String, String> getCustomDictionary() {
        return customDictionary;
    }

    public static String getEncodedNonIABString() {
        String str;
        if (consentStringDirty) {
            String vendorList = DtbSharedPreferences.getInstance().getVendorList();
            String consentStatus = DtbSharedPreferences.getInstance().getConsentStatus();
            String cMPFlavor = DtbSharedPreferences.getInstance().getCMPFlavor();
            if (vendorList == null && consentStatus == null && cMPFlavor == null) {
                str = "";
            } else {
                String encodedNonIABConsentString = DTBGDPREncoder.getEncodedNonIABConsentString(getVendorListFromString(vendorList));
                str = encodedNonIABConsentString;
                if (!DtbCommonUtils.isNullOrEmpty(encodedNonIABConsentString)) {
                    DtbSharedPreferences.getInstance().saveNonIABCustomConsent(encodedNonIABConsentString);
                    str = encodedNonIABConsentString;
                }
            }
            consentStringDirty = false;
            lastSeenNonIABEncodedConsentString = str;
            return str;
        }
        return lastSeenNonIABEncodedConsentString;
    }

    @Deprecated
    public static EventDistributor getEventDistributer() {
        AdRegistration adRegistration = adRegistrationInstance;
        if (adRegistration != null) {
            return adRegistration.eventDistributor;
        }
        throw new IllegalStateException("Instance must be initialized prior using getEventDistributer API");
    }

    public static AdRegistration getInstance(String str, Context context) throws IllegalArgumentException {
        if (!isInitialized()) {
            adRegistrationInstance = new AdRegistration(str, context);
            DTBMetricsConfiguration.getInstance();
        } else if (str != null && !str.equals(mAppKey)) {
            mAppKey = str;
            DtbSharedPreferences.createInstance();
        }
        adRegistrationInstance.setActivityMonitor(new ActivityMonitor(context));
        return adRegistrationInstance;
    }

    public static MRAIDPolicy getMRAIDPolicy() {
        return mraidPolicy;
    }

    public static List<String> getProprietaryProviderKeys() {
        if (providersProprietaryKeys == null) {
            providersProprietaryKeys = new ArrayList();
        }
        return providersProprietaryKeys;
    }

    public static String getSDKDistributionPlace() {
        return sdkDistributionPlace;
    }

    public static String[] getServerlessMarkers() {
        return serverlessMarkers;
    }

    public static SlotGroup getSlotGroup(String str) {
        if (str != null) {
            try {
                HashMap<String, SlotGroup> hashMap = groups;
                if (hashMap == null) {
                    return null;
                }
                return hashMap.get(str);
            } catch (RuntimeException e) {
                DtbLog.error(LOGTAG, "Fail to execute getSlotGroup method");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getSlotGroup method", e);
                return null;
            }
        }
        return null;
    }

    private static String getStringFromVendorList(List<Integer> list) {
        return list.toString();
    }

    private static List<Integer> getVendorListFromString(String str) {
        ArrayList arrayList = new ArrayList();
        if (str != null && str.length() > 2) {
            for (String str2 : str.substring(1, str.length() - 1).split(",")) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str2.trim())));
            }
        }
        return arrayList;
    }

    public static String getVersion() {
        return DtbCommonUtils.getSDKVersion();
    }

    public static boolean hasAdapters() {
        for (String str : serverlessMarkers) {
            try {
                Class.forName(str);
                return true;
            } catch (Exception e) {
            }
        }
        return false;
    }

    public static boolean isConsentStatusUnknown() {
        boolean z = true;
        try {
            if (currentConsentStatus != ConsentStatus.CONSENT_NOT_DEFINED) {
                z = true;
                if (currentConsentStatus != ConsentStatus.UNKNOWN) {
                    z = DtbSharedPreferences.getInstance().getVendorList() == null;
                }
            }
            return z;
        } catch (RuntimeException e) {
            DtbLog.error(LOGTAG, "Fail to execute isConsentStatusUnknown method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute isConsentStatusUnknown method", e);
            return true;
        }
    }

    public static boolean isInitialized() {
        return adRegistrationInstance != null;
    }

    public static boolean isLocationEnabled() {
        return locationEnabled;
    }

    public static boolean isTestMode() {
        return testMode;
    }

    public static void removeAdMobCache(String str) {
        Map<String, DTBCacheData> map = adMobRequestIdMap;
        if (map != null) {
            synchronized (map) {
                adMobRequestIdMap.remove(str);
            }
        }
    }

    public static void removeCustomAttribute(String str) {
        if (isInitialized()) {
            try {
                if (DtbCommonUtils.isNullOrEmpty(customDictionary)) {
                    return;
                }
                customDictionary.remove(str);
                return;
            } catch (RuntimeException e) {
                DtbLog.error(LOGTAG, "Fail to execute removeCustomAttribute method");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute removeCustomAttribute method", e);
                return;
            }
        }
        throw new IllegalStateException(DtbConstants.MDTB_NOT_INITIALIZED);
    }

    public static void removeExpiredAdMobCache() {
        Map<String, DTBCacheData> map = adMobRequestIdMap;
        if (map != null) {
            synchronized (map) {
                Set<Map.Entry<String, DTBCacheData>> entrySet = adMobRequestIdMap.entrySet();
                long time = new Date().getTime();
                for (Map.Entry<String, DTBCacheData> entry : entrySet) {
                    String key = entry.getKey();
                    if (time - entry.getValue().getResponseTimeStamp() > 300000) {
                        adMobRequestIdMap.remove(key);
                    }
                }
            }
        }
    }

    public static void resetNonIAB() {
        try {
            DtbSharedPreferences.getInstance().removeCMPFlavor();
            DtbSharedPreferences.getInstance().removeConsentStatus();
            DtbSharedPreferences.getInstance().removeVendorList();
            DtbSharedPreferences.getInstance().removeNonIABCustomConsent();
            currentVendorListString = null;
            currentConsentStatus = ConsentStatus.CONSENT_NOT_DEFINED;
            cmpFlavor = CMPFlavor.CMP_NOT_DEFINED;
            consentStringDirty = false;
            lastSeenNonIABEncodedConsentString = null;
        } catch (RuntimeException e) {
            DtbLog.error(LOGTAG, "Fail to execute resetNonIAB method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute resetNonIAB method", e);
        }
    }

    private void setActivityMonitor(ActivityMonitor activityMonitor) {
        this.activityMonitor = activityMonitor;
    }

    @Deprecated
    public static void setAppKey(String str) throws IllegalArgumentException {
        if (isInitialized()) {
            if (!DtbCommonUtils.isNullOrEmpty(str)) {
                mAppKey = str;
                DtbSharedPreferences.createInstance();
                return;
            }
            IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Invalid parameters:appKey for initialization.");
            DtbLog.fatal(LOGTAG, "mDTB SDK initialize failed due to invalid registration parameter:appKey.", illegalArgumentException);
            throw illegalArgumentException;
        }
        throw new IllegalStateException(DtbConstants.MDTB_NOT_INITIALIZED);
    }

    public static void setCMPFlavor(CMPFlavor cMPFlavor) {
        if (isInitialized()) {
            try {
                if (cMPFlavor == CMPFlavor.CMP_NOT_DEFINED) {
                    DtbLog.error(LOGTAG, "Set cmp type failed due to invalid cmp type parameters. Not allowed to set cmp type to not defined.");
                    return;
                }
                CMPFlavor cMPFlavor2 = cmpFlavor;
                if (cMPFlavor2 != null && cMPFlavor2 == cMPFlavor) {
                    return;
                }
                consentStringDirty = true;
                cmpFlavor = cMPFlavor;
                DtbSharedPreferences.getInstance().saveCMPFlavor(cMPFlavor.name());
                return;
            } catch (RuntimeException e) {
                DtbLog.error(LOGTAG, "Fail to execute setCMPFlavor method");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute setCMPFlavor method", e);
                return;
            }
        }
        throw new IllegalStateException(DtbConstants.MDTB_NOT_INITIALIZED);
    }

    public static void setConsentStatus(ConsentStatus consentStatus) {
        if (isInitialized()) {
            try {
                if (consentStatus == ConsentStatus.CONSENT_NOT_DEFINED) {
                    DtbLog.error(LOGTAG, "Set consent status failed due to invalid consent status parameters. Not allowed to set consent not defined.");
                    return;
                }
                ConsentStatus consentStatus2 = currentConsentStatus;
                if (consentStatus2 != null && consentStatus2 == consentStatus) {
                    return;
                }
                consentStringDirty = true;
                currentConsentStatus = consentStatus;
                DtbSharedPreferences.getInstance().saveConsentStatus(consentStatus.name());
                return;
            } catch (RuntimeException e) {
                DtbLog.error(LOGTAG, "Fail to execute setConsentStatus method");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute setConsentStatus method", e);
                return;
            }
        }
        throw new IllegalStateException(DtbConstants.MDTB_NOT_INITIALIZED);
    }

    @Deprecated
    public static void setContext(Context context) {
        if (context != null) {
            mContext = context.getApplicationContext();
            return;
        }
        IllegalArgumentException illegalArgumentException = new IllegalArgumentException("Invalid parameters:context for initialization.");
        DtbLog.fatal(LOGTAG, "mDTB SDK initialize failed due to invalid registration parameter:context.", illegalArgumentException);
        throw illegalArgumentException;
    }

    public static void setMRAIDPolicy(MRAIDPolicy mRAIDPolicy) {
        mraidPolicy = mRAIDPolicy;
        DTBAdRequest.resetMraid();
    }

    public static void setMRAIDSupportedVersions(String[] strArr) {
        DTBAdRequest.setMRAIDSupportedVersions(strArr);
    }

    @Deprecated
    public static void setServerlessMarkers(String[] strArr) {
        serverlessMarkers = strArr;
    }

    public static void setVendorList(List<Integer> list) {
        if (isInitialized()) {
            try {
                if (list == null) {
                    DtbLog.error(LOGTAG, "Set vendor list failed due to invalid vendor list parameters with value null.");
                    return;
                }
                String stringFromVendorList = getStringFromVendorList(list);
                String str = currentVendorListString;
                if (str != null && str.equals(stringFromVendorList)) {
                    return;
                }
                consentStringDirty = true;
                currentVendorListString = stringFromVendorList;
                DtbSharedPreferences.getInstance().saveVendorList(stringFromVendorList);
                return;
            } catch (RuntimeException e) {
                DtbLog.error(LOGTAG, "Fail to execute setVendorList method");
                C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute setVendorList method", e);
                return;
            }
        }
        throw new IllegalStateException(DtbConstants.MDTB_NOT_INITIALIZED);
    }

    public static void useGeoLocation(boolean z) {
        locationEnabled = z;
    }
}
