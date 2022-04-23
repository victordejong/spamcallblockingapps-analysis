package com.amazon.device.ads;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBMetricsConfiguration.class */
public class DTBMetricsConfiguration {
    static final String CONFIG_DIR = "config";
    static final String CONFIG_WITH_JSON = "aps_mobile_client_config.json";
    static final String SAMPLE_RATES_KEY_NAME = "sample_rates";
    static final Integer WRAPPING_PIXEL_DEFAULT_VALUE = 5;
    static final String WRAPPING_PIXEL_SAMPLE_RATE_KEY_NAME = "wrapping_pixel";
    private static DTBMetricsConfiguration theInstance;
    private JSONObject configuration;

    private DTBMetricsConfiguration() {
        DTBAdUtil.a(CONFIG_DIR);
        loadConfiguration();
        DtbThreadService.a().a(new Runnable() { // from class: com.amazon.device.ads._$$Lambda$DTBMetricsConfiguration$Z49TfNyrz_7IxpaCd6SMbUPz0p0
            @Override // java.lang.Runnable
            public final void run() {
                DTBMetricsConfiguration.this.lambda$new$0$DTBMetricsConfiguration();
            }
        });
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

    public static Integer getSampleRateForWrappingPixel() {
        JSONObject sampleRates = getInstance().getSampleRates();
        if (sampleRates != null) {
            try {
                return Integer.valueOf(sampleRates.getInt(WRAPPING_PIXEL_SAMPLE_RATE_KEY_NAME));
            } catch (Exception e) {
                DtbLog.a("Unable to get sample rates for wrapping pixel from configuration. Using default value");
            }
        }
        return WRAPPING_PIXEL_DEFAULT_VALUE;
    }

    private JSONObject getSampleRates() {
        if (!this.configuration.has(SAMPLE_RATES_KEY_NAME)) {
            return null;
        }
        try {
            return this.configuration.getJSONObject(SAMPLE_RATES_KEY_NAME);
        } catch (JSONException e) {
            DtbLog.c("Unable to get sample rates from configuration");
            return null;
        }
    }

    private String getWorkingDirContent() throws IOException {
        return DTBAdUtil.a(CONFIG_WITH_JSON, CONFIG_DIR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadConfigurationFromWeb */
    public void lambda$new$0$DTBMetricsConfiguration() {
        try {
            DtbHttpClient dtbHttpClient = new DtbHttpClient(WebResourceOptions.a() + CONFIG_WITH_JSON);
            dtbHttpClient.f6488c = DtbDebugProperties.b();
            dtbHttpClient.b();
            if (dtbHttpClient.f6487b == 200) {
                String str = dtbHttpClient.e;
                File filesDir = AdRegistration.d().getFilesDir();
                File createTempFile = File.createTempFile("temp", "json", filesDir);
                FileWriter fileWriter = new FileWriter(createTempFile);
                fileWriter.write(str);
                fileWriter.close();
                File file = new File(filesDir.getAbsolutePath() + "/config/aps_mobile_client_config.json");
                if (file.exists()) {
                    file.delete();
                }
                if (!createTempFile.renameTo(file)) {
                    DtbLog.c("Rename failed");
                }
                loadConfiguration();
                return;
            }
            throw new RuntimeException("resource aps_mobile_client_config.json not available");
        } catch (Exception e) {
            DtbLog.c("Error loading configuration:" + e.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
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
                    DtbLog.c("Unable to get metrics from configuration");
                }
            }
            return false;
        }
    }

    void loadConfiguration() {
        synchronized (this) {
            try {
                String workingDirContent = getWorkingDirContent();
                String str = workingDirContent;
                if (workingDirContent == null) {
                    str = DTBAdUtil.b(CONFIG_WITH_JSON);
                }
                this.configuration = new JSONObject(str);
            } catch (IOException e) {
            } catch (JSONException e2) {
                DtbLog.c("Invalid configuration");
            }
        }
    }
}
