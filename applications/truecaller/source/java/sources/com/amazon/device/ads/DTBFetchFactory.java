package com.amazon.device.ads;

import java.util.HashMap;
import java.util.Map;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBFetchFactory.class */
public class DTBFetchFactory {
    private static final String LOG_TAG = "DTBFetchFactory";
    private static DTBFetchFactory theFactory;
    private final int EXPIRATION_INTERVAL_MS = 480000;
    private Map<String, DTBFetchManager> managers = new HashMap();

    private DTBFetchFactory() {
    }

    public static DTBFetchFactory getInstance() {
        try {
            if (theFactory == null) {
                theFactory = new DTBFetchFactory();
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBFetchFactory");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to initialize DTBFetchFactory", e);
        }
        return theFactory;
    }

    public DTBFetchManager createFetchManager(String str, DTBAdLoader dTBAdLoader) {
        return createFetchManager(str, dTBAdLoader, false);
    }

    public DTBFetchManager createFetchManager(String str, DTBAdLoader dTBAdLoader, boolean z) {
        DTBFetchManager dTBFetchManager;
        if (DtbCommonUtils.isNullOrEmpty(str) || dTBAdLoader == null) {
            throw new IllegalArgumentException("Fetch manager label and loader cannot be null or empty.");
        }
        DTBFetchManager fetchManager = getFetchManager(str);
        if (fetchManager == null) {
            DTBFetchManager dTBFetchManager2 = new DTBFetchManager(dTBAdLoader, z);
            this.managers.put(str, dTBFetchManager2);
            dTBFetchManager = dTBFetchManager2;
        } else {
            DtbLog.warn("The fetch manager with the provided label has already been created");
            dTBFetchManager = fetchManager;
        }
        return dTBFetchManager;
    }

    public int getExpirationInMillis() {
        return 480000;
    }

    public DTBFetchManager getFetchManager(String str) {
        if (DtbCommonUtils.isNullOrEmpty(str)) {
            DtbLog.debug("The fetch manager label is null or empty");
        }
        return this.managers.get(str);
    }

    public void removeFetchManager(String str) {
        try {
            if (DtbCommonUtils.isNullOrEmpty(str)) {
                DtbLog.debug("The fetch manager label is null or empty");
            }
            DTBFetchManager fetchManager = getFetchManager(str);
            if (fetchManager == null) {
                return;
            }
            fetchManager.stop();
            fetchManager.submitWasteQueueReport();
            this.managers.remove(str);
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute removeFetchManager method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute removeFetchManager method", e);
        }
    }
}
