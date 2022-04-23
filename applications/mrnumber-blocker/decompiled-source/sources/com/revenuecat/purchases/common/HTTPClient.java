package com.revenuecat.purchases.common;

import android.os.Build;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import kotlin.l;
import kotlin.p;
import kotlin.s.b0;
import kotlin.w.c.k;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/HTTPClient.class */
public final class HTTPClient {
    private final AppConfig appConfig;

    /* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/HTTPClient$Result.class */
    public static final class Result {
        private JSONObject body;
        private int responseCode;

        public final JSONObject getBody() {
            return this.body;
        }

        public final int getResponseCode() {
            return this.responseCode;
        }

        public final void setBody(JSONObject jSONObject) {
            this.body = jSONObject;
        }

        public final void setResponseCode(int i) {
            this.responseCode = i;
        }
    }

    public HTTPClient(AppConfig appConfig) {
        k.f(appConfig, "appConfig");
        this.appConfig = appConfig;
    }

    private final BufferedReader buffer(InputStream inputStream) {
        return new BufferedReader(new InputStreamReader(inputStream));
    }

    private final BufferedWriter buffer(OutputStream outputStream) {
        return new BufferedWriter(new OutputStreamWriter(outputStream));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final JSONObject convert(Map<String, ? extends Object> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(b0.b(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            Object value = entry.getValue();
            JSONObject jSONObject = value;
            if (value instanceof Map) {
                jSONObject = convert((Map) value);
            }
            linkedHashMap.put(key, jSONObject);
        }
        return new JSONObject(linkedHashMap);
    }

    private final HttpURLConnection getConnection(URL url, Map<String, String> map, JSONObject jSONObject) {
        URLConnection openConnection = url.openConnection();
        Objects.requireNonNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        Map h = b0.h(new l[]{p.a("Content-Type", "application/json"), p.a("X-Platform", "android"), p.a("X-Platform-Flavor", this.appConfig.getPlatformInfo().getFlavor()), p.a("X-Platform-Flavor-Version", this.appConfig.getPlatformInfo().getVersion()), p.a("X-Platform-Version", String.valueOf(Build.VERSION.SDK_INT)), p.a("X-Version", Config.frameworkVersion), p.a("X-Client-Locale", this.appConfig.getLanguageTag()), p.a("X-Client-Version", this.appConfig.getVersionName()), p.a("X-Observer-Mode-Enabled", this.appConfig.getFinishTransactions() ? "false" : "true")});
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : h.entrySet()) {
            if (((String) entry.getValue()) != null) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        if (map == null) {
            map = b0.e();
        }
        for (Map.Entry entry2 : b0.l(linkedHashMap, map).entrySet()) {
            httpURLConnection.addRequestProperty((String) entry2.getKey(), (String) entry2.getValue());
        }
        if (jSONObject != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestMethod("POST");
            OutputStream outputStream = httpURLConnection.getOutputStream();
            k.e(outputStream, "os");
            BufferedWriter buffer = buffer(outputStream);
            String jSONObject2 = jSONObject.toString();
            k.e(jSONObject2, "body.toString()");
            writeFully(buffer, jSONObject2);
        }
        return httpURLConnection;
    }

    private final InputStream getInputStream(HttpURLConnection httpURLConnection) {
        return httpURLConnection.getInputStream();
    }

    private final String readFully(BufferedReader bufferedReader) throws IOException {
        StringBuilder sb = new StringBuilder();
        String readLine = bufferedReader.readLine();
        while (readLine != null) {
            sb.append(readLine);
            readLine = bufferedReader.readLine();
        }
        String sb2 = sb.toString();
        k.e(sb2, "sb.toString()");
        return sb2;
    }

    private final String readFully(InputStream inputStream) throws IOException {
        return readFully(buffer(inputStream));
    }

    private final /* synthetic */ <T> Object tryCast(Object obj, kotlin.w.b.l<? super T, ? extends Object> lVar) {
        k.j(3, "T");
        throw null;
    }

    private final void writeFully(BufferedWriter bufferedWriter, String str) throws IOException {
        bufferedWriter.write(str);
        bufferedWriter.flush();
    }

    public final Result performRequest(String str, Map<String, ? extends Object> map, Map<String, String> map2) throws JSONException, IOException {
        k.f(str, "path");
        k.f(map2, "headers");
        String str2 = null;
        JSONObject convert = map != null ? convert(map) : null;
        URL baseURL = this.appConfig.getBaseURL();
        HttpURLConnection connection = getConnection(new URL(baseURL, "/v1" + str), map2, convert);
        InputStream inputStream = getInputStream(connection);
        Result result = new Result();
        LogUtilsKt.debugLog(connection.getRequestMethod() + ' ' + str);
        result.setResponseCode(connection.getResponseCode());
        if (inputStream != null) {
            str2 = readFully(inputStream);
        }
        if (inputStream != null) {
            inputStream.close();
        }
        connection.disconnect();
        if (str2 != null) {
            result.setBody(new JSONObject(str2));
            LogUtilsKt.debugLog(connection.getRequestMethod() + ' ' + str + ' ' + result.getResponseCode());
            return result;
        }
        throw new IOException("Network call payload is null.");
    }
}
