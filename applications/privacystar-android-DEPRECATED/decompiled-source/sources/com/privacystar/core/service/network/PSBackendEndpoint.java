package com.privacystar.core.service.network;

import android.support.annotation.StringRes;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.network.endpoint.AFAnalyticConfig;
import com.privacystar.core.service.network.endpoint.GooglePlayPurchases;
import com.privacystar.core.service.network.endpoint.PSBackendLicense;
import com.privacystar.core.service.network.endpoint.PSBackendLookup;
import com.privacystar.core.service.network.endpoint.PSBackendServices;
import com.privacystar.core.service.network.endpoint.PSOffenderDeltas;
import java.util.EnumMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/PSBackendEndpoint.class */
public class PSBackendEndpoint {
    private static Map<PSEndpointInterface, Object> backendInterfaces;

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/PSBackendEndpoint$PSEndpointInterface.class */
    public enum PSEndpointInterface {
        LICENSE(PSBackendLicense.class, C1566R.string.url_license),
        LOOKUP(PSBackendLookup.class, C1566R.string.url_lookup),
        OFFENDER_DELTA(PSOffenderDeltas.class, C1566R.string.url_offender_deltas),
        SERVICES(PSBackendServices.class, C1566R.string.url_services),
        GOOGLE_PLAY(GooglePlayPurchases.class, C1566R.string.url_google_play),
        AF_ANALYTIC_CONFIG(AFAnalyticConfig.class, C1566R.string.url_af_analytics);
        
        private Class clazz;
        @StringRes
        private int url;

        PSEndpointInterface(Class cls, @StringRes int i) {
            this.clazz = cls;
            this.url = i;
        }

        public Class getEndpointClass() {
            return this.clazz;
        }

        @StringRes
        public int getUrlRes() {
            return this.url;
        }

        public String getUrlString() {
            return PSApplication.context().getString(this.url);
        }
    }

    public static AFAnalyticConfig getAFAnalyticConfigApiInstance() {
        AFAnalyticConfig aFAnalyticConfig;
        synchronized (PSBackendEndpoint.class) {
            try {
                aFAnalyticConfig = (AFAnalyticConfig) getInstance(PSEndpointInterface.AF_ANALYTIC_CONFIG);
            } catch (Throwable th) {
                throw th;
            }
        }
        return aFAnalyticConfig;
    }

    private static Map<PSEndpointInterface, Object> getBackendInterfaces() {
        Map<PSEndpointInterface, Object> map;
        synchronized (PSBackendEndpoint.class) {
            try {
                if (backendInterfaces == null || backendInterfaces.isEmpty()) {
                    backendInterfaces = new EnumMap(PSEndpointInterface.class);
                    for (PSEndpointInterface pSEndpointInterface : PSEndpointInterface.values()) {
                        backendInterfaces.put(pSEndpointInterface, null);
                    }
                }
                map = backendInterfaces;
            } catch (Throwable th) {
                throw th;
            }
        }
        return map;
    }

    public static GooglePlayPurchases getGooglePlayApiInstance() {
        GooglePlayPurchases googlePlayPurchases;
        synchronized (PSBackendEndpoint.class) {
            try {
                googlePlayPurchases = (GooglePlayPurchases) getInstance(PSEndpointInterface.GOOGLE_PLAY);
            } catch (Throwable th) {
                throw th;
            }
        }
        return googlePlayPurchases;
    }

    public static Object getInstance(PSEndpointInterface pSEndpointInterface) {
        Object obj;
        synchronized (PSBackendEndpoint.class) {
            try {
                if (getBackendInterfaces().get(pSEndpointInterface) == null) {
                    getBackendInterfaces().put(pSEndpointInterface, ServiceGenerator.createService(pSEndpointInterface.getEndpointClass(), PSApplication.context().getString(pSEndpointInterface.getUrlRes())));
                }
                obj = getBackendInterfaces().get(pSEndpointInterface);
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    public static PSBackendLicense getLicenseInstance() {
        PSBackendLicense pSBackendLicense;
        synchronized (PSBackendEndpoint.class) {
            try {
                pSBackendLicense = (PSBackendLicense) getInstance(PSEndpointInterface.LICENSE);
            } catch (Throwable th) {
                throw th;
            }
        }
        return pSBackendLicense;
    }

    public static PSBackendLookup getLookupInstance() {
        PSBackendLookup pSBackendLookup;
        synchronized (PSBackendEndpoint.class) {
            try {
                pSBackendLookup = (PSBackendLookup) getInstance(PSEndpointInterface.LOOKUP);
            } catch (Throwable th) {
                throw th;
            }
        }
        return pSBackendLookup;
    }

    public static PSOffenderDeltas getOffenderDeltasInstance() {
        PSOffenderDeltas pSOffenderDeltas;
        synchronized (PSBackendEndpoint.class) {
            try {
                pSOffenderDeltas = (PSOffenderDeltas) getInstance(PSEndpointInterface.OFFENDER_DELTA);
            } catch (Throwable th) {
                throw th;
            }
        }
        return pSOffenderDeltas;
    }

    public static PSBackendServices getServicesInstance() {
        PSBackendServices pSBackendServices;
        synchronized (PSBackendEndpoint.class) {
            try {
                pSBackendServices = (PSBackendServices) getInstance(PSEndpointInterface.SERVICES);
            } catch (Throwable th) {
                throw th;
            }
        }
        return pSBackendServices;
    }
}
