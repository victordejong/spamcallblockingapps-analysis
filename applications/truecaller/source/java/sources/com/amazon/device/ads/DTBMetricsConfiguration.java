package com.amazon.device.ads;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.tenor.android.core.constant.StringConstant;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1425c.p1426a.p1427a.C22016a;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22018b;
import p193e.p1425c.p1426a.p1427a.p1428b.EnumC22019c;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricsConfiguration.class */
public class DTBMetricsConfiguration {
    public static final String ANALYTICS_KEY_NAME = "analytics";
    public static final String API_KEY_ANALYTICS_KEY_NAME = "api_key";
    public static final String CONFIG_DIR = "config";
    public static final String CONFIG_WITH_JSON = "aps_mobile_client_config.json";
    public static final String DISTRIBUTION_PIXEL_SAMPLE_RATE_KEY_NAME = "distribution_pixel";
    private static final String LOG_TAG = "DTBMetricsConfiguration";
    public static final String SAMPLE_RATES_KEY_NAME = "sample_rates";
    public static final String SAMPLING_RATE_ANALYTICS_KEY_NAME = "sampling_rate";
    public static final String SPP_FLAG_DEFAULT_VALUE = "leq";
    public static final String SPP_FLAG_KEY_NAME = "spp_flag";
    public static final String URL_ANALYTICS_KEY_NAME = "url";
    public static final String WRAPPING_PIXEL_SAMPLE_RATE_KEY_NAME = "wrapping_pixel";
    private static DTBMetricsConfiguration theInstance;
    private JSONObject configuration;
    public static final Integer WRAPPING_PIXEL_DEFAULT_VALUE = 5;
    public static final Integer DISTRIBUTION_PIXEL_DEFAULT_VALUE = 1;
    public static final Integer ANALYTIC_PIXEL_DEFAULT_VALUE = 1;

    private DTBMetricsConfiguration() {
        DTBAdUtil.createDirIfDoesNotExist(CONFIG_DIR);
        loadConfiguration();
        DtbThreadService.getInstance().execute(new Runnable() { // from class: e.c.b.a.g0
            @Override // java.lang.Runnable
            public final void run() {
                DTBMetricsConfiguration.this.m42586a();
            }
        });
    }

    public static Integer getAnalyticsParams(String str, int i) {
        try {
            JSONObject configParams = getInstance().getConfigParams(ANALYTICS_KEY_NAME);
            if (configParams != null) {
                try {
                    if (configParams.has(str)) {
                        return Integer.valueOf(configParams.getInt(str));
                    }
                } catch (Exception e) {
                    DtbLog.warn("Unable to get sample rates for " + str + " from configuration. Using default value");
                }
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getSampleRateForPixel method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getSampleRateForPixel method", e2);
        }
        return Integer.valueOf(i);
    }

    public static Integer getClientConfigVal(String str, int i, String str2) {
        try {
            JSONObject configParams = getInstance().getConfigParams(str2);
            if (configParams != null) {
                try {
                    if (configParams.has(str)) {
                        return Integer.valueOf(configParams.getInt(str));
                    }
                } catch (Exception e) {
                    DtbLog.warn("Unable to get" + str2 + "for " + str + " from configuration. Using default value");
                }
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getClientConfigVal method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getClientConfigVal method", e2);
        }
        return Integer.valueOf(i);
    }

    public static String getClientConfigVal(String str, String str2) {
        try {
            String configVal = getInstance().getConfigVal(str2);
            if (!DtbCommonUtils.isNullOrEmpty(configVal)) {
                return configVal;
            }
        } catch (RuntimeException e) {
            DtbLog.error(LOG_TAG, "Fail to execute getClientConfigVal method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getClientConfigVal method", e);
        }
        return str;
    }

    public static String getClientConfigVal(String str, String str2, String str3) {
        try {
            JSONObject configParams = getInstance().getConfigParams(str3);
            if (configParams != null) {
                try {
                    if (configParams.has(str)) {
                        return configParams.getString(str);
                    }
                } catch (Exception e) {
                    DtbLog.warn("Unable to get" + str3 + "for " + str + " from configuration. Using default value");
                }
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getClientConfigVal method");
            C22016a.m8829a(EnumC22018b.ERROR, EnumC22019c.EXCEPTION, "Fail to execute getClientConfigVal method", e2);
        }
        return str2;
    }

    private JSONObject getConfigParams(String str) {
        if (this.configuration.has(str)) {
            try {
                return this.configuration.getJSONObject(str);
            } catch (JSONException e) {
                DtbLog.error("Unable to get" + str + "from configuration");
                return null;
            }
        }
        return null;
    }

    public static DTBMetricsConfiguration getInstance() {
        DTBMetricsConfiguration dTBMetricsConfiguration;
        synchronized (DTBMetricsConfiguration.class) {
            try {
                if (theInstance == null) {
                    theInstance = new DTBMetricsConfiguration();
                }
                dTBMetricsConfiguration = theInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dTBMetricsConfiguration;
    }

    private String getWorkingDirContent() throws IOException {
        return DTBAdUtil.loadFile(CONFIG_WITH_JSON, CONFIG_DIR);
    }

    /* renamed from: loadConfigurationFromWeb */
    public void m42586a() {
        try {
            DtbHttpClient dtbHttpClient = new DtbHttpClient(WebResourceOptions.getCDNHost() + CONFIG_WITH_JSON);
            dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
            dtbHttpClient.executeGET();
            if (dtbHttpClient.getResponseCode() != 200) {
                throw new RuntimeException("resource aps_mobile_client_config.json not available");
            }
            String response = dtbHttpClient.getResponse();
            File filesDir = AdRegistration.getContext().getFilesDir();
            File createTempFile = File.createTempFile("temp", "json", filesDir);
            FileWriter fileWriter = new FileWriter(createTempFile);
            fileWriter.write(response);
            fileWriter.close();
            File file = new File(filesDir.getAbsolutePath() + StringConstant.SLASH + CONFIG_DIR + StringConstant.SLASH + CONFIG_WITH_JSON);
            if (file.exists()) {
                file.delete();
            }
            if (!createTempFile.renameTo(file)) {
                DtbLog.error("Rename failed");
            }
            loadConfiguration();
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("Error loading configuration:");
            m8728C.append(e.toString());
            DtbLog.error(m8728C.toString());
        }
    }

    public String getConfigVal(String str) {
        if (this.configuration.has(str)) {
            try {
                return this.configuration.getString(str);
            } catch (JSONException e) {
                DtbLog.error("Unable to get" + str + "from configuration");
                return null;
            }
        }
        return null;
    }

    public boolean isTypeEnabled(String str) {
        synchronized (this) {
            JSONObject jSONObject = this.configuration;
            if (jSONObject != null) {
                try {
                    JSONObject jSONObject2 = jSONObject.getJSONObject("metrics");
                    if (jSONObject2.has(str)) {
                        return jSONObject2.getBoolean(str);
                    }
                } catch (JSONException e) {
                    DtbLog.error("Unable to get metrics from configuration");
                }
            }
            return false;
        }
    }

    public void loadConfiguration() {
        synchronized (this) {
            try {
                String workingDirContent = getWorkingDirContent();
                String str = workingDirContent;
                if (workingDirContent == null) {
                    str = DTBAdUtil.loadFromAssets(CONFIG_WITH_JSON);
                }
                this.configuration = new JSONObject(str);
            } catch (IOException e) {
            } catch (JSONException e2) {
                DtbLog.error("Invalid configuration");
            }
        }
    }
}
