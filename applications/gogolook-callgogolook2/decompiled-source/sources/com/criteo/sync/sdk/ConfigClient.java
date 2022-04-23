package com.criteo.sync.sdk;

import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes-dex2jar.jar:com/criteo/sync/sdk/ConfigClient.class */
public class ConfigClient {
    public static final String JSON_KEY_COLLECTION_ENABLED = "collection_active";
    public static final String JSON_KEY_COLLECTION_PERIOD = "collection_period";
    public static final String JSON_KEY_CONFIGURATION_ENDPOINT = "collection_endpoint";
    public static final String JSON_KEY_CONFIGURATION_EXPIRATION = "configuration_expires";
    public static final String JSON_KEY_ERROR_REPORTING_ENDPOINT = "error_reporting_endpoint";
    public static final String JSON_KEY_ERROR_SAMPLING_PERIOD = "error_reporting_sampling";
    public final Config defaultConfig;
    public final String endpoint;

    public ConfigClient(String str, Config config) {
        this.endpoint = str;
        this.defaultConfig = config;
    }

    private String loadHttpResponse(HttpURLConnection httpURLConnection) {
        return IOUtils.read(httpURLConnection.getInputStream());
    }

    private JSONObject parseResponse(String str) {
        Object nextValue = new JSONTokener(str).nextValue();
        if (nextValue instanceof JSONObject) {
            return (JSONObject) nextValue;
        }
        throw new JSONException("expected a JSON object");
    }

    private Config readConfig(JSONObject jSONObject) {
        Date date;
        Duration duration;
        try {
            date = DateUtils.parseDateString(jSONObject.getString("configuration_expires"));
        } catch (Exception e) {
            date = this.defaultConfig.getConfigurationExpires();
        }
        try {
            duration = Duration.ofHours(jSONObject.getDouble("collection_period"));
        } catch (Exception e2) {
            duration = this.defaultConfig.getCollectionPeriod();
        }
        return new Config(jSONObject.optString("collection_endpoint", this.defaultConfig.getCollectionEndpoint()), jSONObject.optBoolean("collection_active", this.defaultConfig.isCollectionActive()), duration, date, (float) jSONObject.optDouble(JSON_KEY_ERROR_SAMPLING_PERIOD, this.defaultConfig.getErrorSamplingPercent()), jSONObject.optString(JSON_KEY_ERROR_REPORTING_ENDPOINT, this.defaultConfig.getErrorReportingEndpoint()));
    }

    public Config getConfig(ConfigUrlParameters configUrlParameters) {
        if (configUrlParameters == null) {
            CrtoLog.m35514e("Null ConfigUrlParameters sent to getConfig");
            return this.defaultConfig;
        }
        try {
            return readConfig(parseResponse(loadHttpResponse(IOUtils.createHTTPConnection(new URL(configUrlParameters.getConfigUrl(this.endpoint))))));
        } catch (Exception e) {
            return this.defaultConfig;
        }
    }
}
