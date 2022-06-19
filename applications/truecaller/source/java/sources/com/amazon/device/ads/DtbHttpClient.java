package com.amazon.device.ads;

import com.huawei.hms.framework.common.ContainerUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbHttpClient.class */
public class DtbHttpClient {
    private String message;
    private int responseCode;
    private String url;
    private boolean secure = true;
    private boolean isQueryParamsEnabled = false;
    private String response = null;
    private HashMap<String, Object> params = new HashMap<>();
    private HashMap<String, Object> headers = new HashMap<>();

    /* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DtbHttpClient$HTTPMethod.class */
    public enum HTTPMethod {
        POST,
        GET
    }

    public DtbHttpClient(String str) {
        this.url = str;
    }

    private static String convertStreamToString(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine + StringConstant.NEW_LINE);
                    }
                } catch (IOException e) {
                    DtbLog.debug("Error converting stream to string. Ex=" + e);
                }
                try {
                    break;
                } catch (IOException e2) {
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException e3) {
                }
                throw th;
            }
        }
        inputStream.close();
        return sb.toString();
    }

    private HttpURLConnection createDefaultConnection(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(1000);
        httpURLConnection.setReadTimeout(60000);
        return httpURLConnection;
    }

    private void executeRequest(HTTPMethod hTTPMethod, URL url) throws JSONException, IOException {
        InputStream inputStream;
        HttpURLConnection createDefaultConnection = createDefaultConnection(url);
        StringBuilder sb = new StringBuilder();
        for (String str : this.headers.keySet()) {
            String obj = this.headers.get(str) != null ? this.headers.get(str).toString() : "";
            createDefaultConnection.setRequestProperty(str, obj);
            sb.append(str + StringConstant.COLON + obj + StringConstant.SPACE);
        }
        StringBuilder m8728C = C22128a.m8728C("with headers:[");
        m8728C.append(sb.toString());
        m8728C.append("]");
        DtbLog.debug(m8728C.toString());
        if (hTTPMethod == HTTPMethod.POST) {
            createDefaultConnection.setDoOutput(true);
            if (!this.isQueryParamsEnabled && !this.params.isEmpty()) {
                createDefaultConnection.setRequestProperty("content-type", "application/json; charset=utf-8");
                String paramsAsJsonString = getParamsAsJsonString();
                DtbLog.debug("with json params:[" + paramsAsJsonString + "]");
                OutputStream outputStream = createDefaultConnection.getOutputStream();
                outputStream.write(paramsAsJsonString.getBytes());
                outputStream.flush();
                outputStream.close();
            }
        }
        try {
            try {
                inputStream = createDefaultConnection.getInputStream();
            } catch (Exception e) {
                this.response = null;
                DtbLog.debug("Error while connecting to remote server: " + createDefaultConnection.getURL().toString() + " with error:" + e.getMessage());
            }
            if (inputStream == null) {
                return;
            }
            this.responseCode = createDefaultConnection.getResponseCode();
            this.message = createDefaultConnection.getResponseMessage();
            this.response = convertStreamToString(inputStream);
            inputStream.close();
            DtbLog.debug("Response :" + this.response);
        } finally {
            createDefaultConnection.disconnect();
        }
    }

    private String getParamsAsJsonString() throws JSONException {
        return DtbCommonUtils.getParamsAsJsonString(this.params);
    }

    private String getQueryParams() {
        String str;
        if (!this.params.isEmpty()) {
            Iterator<String> it = this.params.keySet().iterator();
            String str2 = "?";
            while (true) {
                str = str2;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (this.params.get(next) != null) {
                    StringBuilder m8696K = C22128a.m8696K(next, ContainerUtils.KEY_VALUE_DELIMITER);
                    m8696K.append(DtbCommonUtils.getURLEncodedString(this.params.get(next).toString()));
                    String sb = m8696K.toString();
                    str2 = str2.length() > 1 ? C22128a.m8725C2(str2, ContainerUtils.FIELD_DELIMITER, sb) : C22128a.m8543z2(str2, sb);
                }
            }
        } else {
            str = "";
        }
        return str;
    }

    public void addHeader(String str, String str2) {
        this.headers.put(str, str2);
    }

    public void addParam(String str, String str2) {
        this.params.put(str, str2);
    }

    public void enableQueryParams() {
        this.isQueryParamsEnabled = true;
    }

    public void executeGET() throws JSONException, IOException {
        String queryParams = getQueryParams();
        String str = this.url;
        String str2 = str;
        if (!str.startsWith(DtbConstants.HTTPS)) {
            str2 = str;
            if (!this.url.startsWith(DtbConstants.HTTP)) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.secure ? DtbConstants.HTTPS : DtbConstants.HTTP);
                sb.append(this.url);
                str2 = sb.toString();
            }
        }
        DtbLog.debug("GET URL:" + str2);
        DtbLog.debug("with params: " + queryParams);
        executeRequest(HTTPMethod.GET, new URL(C22128a.m8543z2(str2, queryParams)));
    }

    public void executePOST() throws JSONException, IOException {
        URL url;
        StringBuilder sb = new StringBuilder();
        sb.append(this.secure ? DtbConstants.HTTPS : DtbConstants.HTTP);
        sb.append(this.url);
        String sb2 = sb.toString();
        DtbLog.debug("POST URL:" + sb2);
        if (this.isQueryParamsEnabled) {
            String queryParams = getQueryParams();
            DtbLog.debug("with query params:[" + queryParams + "]");
            url = new URL(C22128a.m8543z2(sb2, queryParams));
        } else {
            url = new URL(sb2);
        }
        executeRequest(HTTPMethod.POST, url);
    }

    public String getErrorMessage() {
        return this.message;
    }

    public HashMap<String, Object> getHeaders() {
        return this.headers;
    }

    public HashMap<String, Object> getParams() {
        return this.params;
    }

    public String getResponse() {
        return this.response;
    }

    public int getResponseCode() {
        return this.responseCode;
    }

    public String getUrl() {
        return this.url;
    }

    public boolean isHttpStatusCodeOK() {
        return this.responseCode == 200;
    }

    public void setHeaders(HashMap<String, Object> hashMap) {
        this.headers = hashMap;
    }

    public void setParams(HashMap<String, Object> hashMap) {
        this.params = hashMap;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setUseSecure(boolean z) {
        this.secure = z;
    }
}
