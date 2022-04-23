package com.callapp.contacts.util.http;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.AndroidRuntimeException;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.callapp.common.api.ReturnCode;
import com.callapp.common.model.message.ResultCode;
import com.callapp.common.util.UrlUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.setup.SetupWizardActivity;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.http.HttpRequestParams;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.contacts.util.serializer.string.Serializer;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.api.client.a.f;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.h.d;
import okhttp3.CertificatePinner;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.logging.HttpLoggingInterceptor;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpUtils.class */
public class HttpUtils {
    private static OkHttpClient e;
    private static CertificatePinner g;

    /* renamed from: a  reason: collision with root package name */
    public static final MediaType f16230a = MediaType.parse("application/json; charset=utf-8");

    /* renamed from: b  reason: collision with root package name */
    private static UserAgentInterceptor f16231b = new UserAgentInterceptor(null);

    /* renamed from: c  reason: collision with root package name */
    private static OkHttpExceptionInterceptor f16232c = new OkHttpExceptionInterceptor();

    /* renamed from: d  reason: collision with root package name */
    private static String f16233d = "http://z.";
    private static final OkHttpClient f = new OkHttpClient();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpUtils$HttpResponseHandler.class */
    public interface HttpResponseHandler {
        void a(String str, Response response) throws IOException;

        void b(String str, Response response) throws IOException;
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl.class */
    public static abstract class HttpResponseHandlerImpl implements HttpResponseHandler {

        /* renamed from: a  reason: collision with root package name */
        private String f16234a;

        /* renamed from: b  reason: collision with root package name */
        private int f16235b;

        @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
        public void a(String str, Response response) throws IOException {
            if (response != null) {
                this.f16235b = response.code();
            }
        }

        @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
        public final void b(String str, Response response) throws IOException {
            if (response != null) {
                this.f16234a = response.body().string();
                this.f16235b = response.code();
            }
        }

        public int getResponseCode() {
            return this.f16235b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpUtils$OkHttpExceptionInterceptor.class */
    static class OkHttpExceptionInterceptor implements Interceptor {
        private OkHttpExceptionInterceptor() {
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            try {
                return chain.proceed(chain.request());
            } catch (Throwable th) {
                if (th instanceof IOException) {
                    throw th;
                }
                throw new IOException(th);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpUtils$UserAgentInterceptor.class */
    static class UserAgentInterceptor implements Interceptor {

        /* renamed from: a  reason: collision with root package name */
        private String f16236a;

        public UserAgentInterceptor(String str) {
            this.f16236a = str;
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            if (this.f16236a == null) {
                this.f16236a = HttpUtils.a(CallAppApplication.get());
            }
            Request request = chain.request();
            return request.header("User-Agent") == null ? chain.proceed(request.newBuilder().addHeader("User-Agent", this.f16236a).build()) : chain.proceed(request);
        }
    }

    static {
        g = null;
        if (!CallAppRemoteConfigManager.get().c("DisableSSLPinning")) {
            try {
                JSONObject jSONObject = new JSONObject(CallAppRemoteConfigManager.get().a("domain_certs_pinning"));
                CertificatePinner.Builder builder = new CertificatePinner.Builder();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray jSONArray = jSONObject.getJSONArray(next);
                    if (jSONArray != null) {
                        for (int i = 0; i < jSONArray.length(); i++) {
                            builder.add(next, jSONArray.getString(i));
                        }
                    }
                }
                g = builder.build();
            } catch (Exception e2) {
                CLog.a(e2);
            }
        }
        OkHttpClient.Builder addNetworkInterceptor = new OkHttpClient.Builder().connectTimeout(10000L, TimeUnit.MILLISECONDS).readTimeout(10000L, TimeUnit.MILLISECONDS).writeTimeout(10000L, TimeUnit.MILLISECONDS).addInterceptor(f16232c).addInterceptor(f16231b).addNetworkInterceptor(new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: com.callapp.contacts.util.http.HttpUtils.1
            @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
            public final void log(String str) {
                CLog.a(HttpUtils.class, str);
            }
        }).setLevel(Prefs.n.get().booleanValue() ? HttpLoggingInterceptor.Level.BODY : HttpLoggingInterceptor.Level.NONE));
        CertificatePinner certificatePinner = g;
        if (certificatePinner != null) {
            addNetworkInterceptor.certificatePinner(certificatePinner);
        }
        e = addNetworkInterceptor.build();
    }

    public static com.callapp.common.model.message.Response a(String str, Object obj) {
        if (!a()) {
            return com.callapp.common.model.message.Response.of(ResultCode.NO_NETWORK);
        }
        Response response = null;
        response = null;
        response = null;
        try {
            response = e.newCall(new Request.Builder().url(str).addHeader("Accept", "application/json").post(RequestBody.create(f16230a, Serializer.a(obj))).build()).execute();
            if (!response.isSuccessful()) {
                return com.callapp.common.model.message.Response.of(ResultCode.BAD_STATUS_CODE, String.valueOf(response.code()));
            }
            com.callapp.common.model.message.Response response2 = (com.callapp.common.model.message.Response) Parser.a(response.body().byteStream(), com.callapp.common.model.message.Response.class);
            return response2 == null ? com.callapp.common.model.message.Response.error("Null response") : response2;
        } catch (ConnectTimeoutException e2) {
            return com.callapp.common.model.message.Response.of(ResultCode.TIMEOUT_REACHED, e2.getMessage());
        } catch (IOException e3) {
            CLog.b(HttpUtils.class, e3);
            return com.callapp.common.model.message.Response.error(e3.toString());
        } finally {
            a(response);
        }
    }

    public static DownloadedFile a(String str, File file) {
        Response response;
        Throwable th;
        Response response2;
        RuntimeException e2;
        FileNotFoundException e3;
        UnknownHostException e4;
        IOException e5;
        Throwable th2;
        FileOutputStream fileOutputStream;
        try {
            if (a()) {
                try {
                    response2 = c(new Request.Builder().url(str).build(), new HttpRequestParams.HttpRequestParamsBuilder(str).a());
                    response2 = response2;
                    if (response2 != null) {
                        response2 = response2;
                        try {
                            if (response2.isSuccessful()) {
                                response2 = response2;
                                if (response2.body() != null) {
                                    response2 = response2;
                                    if (response2.body().byteStream() != null) {
                                        try {
                                            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                                            try {
                                                boolean z = f.a(response2.body().byteStream(), fileOutputStream2) == response2.body().contentLength();
                                                IoUtils.a(fileOutputStream2);
                                                DownloadedFile downloadedFile = new DownloadedFile(file, z);
                                                a(response2);
                                                return downloadedFile;
                                            } catch (Throwable th3) {
                                                th2 = th3;
                                                fileOutputStream = fileOutputStream2;
                                                IoUtils.a(fileOutputStream);
                                                throw th2;
                                            }
                                        } catch (Throwable th4) {
                                            th2 = th4;
                                            fileOutputStream = null;
                                        }
                                    }
                                }
                            }
                        } catch (FileNotFoundException e6) {
                            e3 = e6;
                            if (IoUtils.d(IoUtils.getCacheFolder()) > 50.0f) {
                                CLog.c(HttpUtils.class, e3, "IOException in downloadURL(%s)", str);
                            }
                            IoUtils.a();
                        } catch (InterruptedIOException e7) {
                            response2 = response2;
                        } catch (RuntimeException e8) {
                            e2 = e8;
                            CLog.b(HttpUtils.class, e2, "RuntimeException in downloadURL(%s)", str);
                        } catch (UnknownHostException e9) {
                            e4 = e9;
                            Singletons.get().getExceptionManager().a(HttpUtils.class, e4, "IOException in downloadURL(%s)", str);
                        } catch (IOException e10) {
                            e5 = e10;
                            CLog.b(HttpUtils.class, e5, "IOException in downloadURL(%s)", str);
                        }
                    }
                } catch (FileNotFoundException e11) {
                    e3 = e11;
                    response2 = null;
                } catch (InterruptedIOException e12) {
                    response2 = null;
                } catch (UnknownHostException e13) {
                    e4 = e13;
                    response2 = null;
                } catch (IOException e14) {
                    e5 = e14;
                    response2 = null;
                } catch (RuntimeException e15) {
                    e2 = e15;
                    response2 = null;
                } catch (Throwable th5) {
                    th = th5;
                    response = null;
                    a(response);
                    throw th;
                }
                a(response2);
            }
            return new DownloadedFile(null, false);
        } catch (Throwable th6) {
            th = th6;
            response = null;
        }
    }

    public static String a(Context context) {
        String str;
        Exception e2;
        try {
            if (!CallAppApplication.get().isUnitTestMode()) {
                str = WebSettings.getDefaultUserAgent(context);
            } else {
                Constructor declaredConstructor = WebSettings.class.getDeclaredConstructor(Context.class, WebView.class);
                declaredConstructor.setAccessible(true);
                str = ((WebSettings) declaredConstructor.newInstance(context, null)).getUserAgentString();
            }
        } catch (AndroidRuntimeException e3) {
            e2 = e3;
            CLog.b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e2.getClass().getName(), e2.getMessage()));
            str = null;
        } catch (IllegalAccessException e4) {
            e2 = e4;
            CLog.b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e2.getClass().getName(), e2.getMessage()));
            str = null;
        } catch (IllegalArgumentException e5) {
            e2 = e5;
            CLog.b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e2.getClass().getName(), e2.getMessage()));
            str = null;
        } catch (InstantiationException e6) {
            e2 = e6;
            CLog.b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e2.getClass().getName(), e2.getMessage()));
            str = null;
        } catch (NullPointerException e7) {
            e2 = e7;
            CLog.b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e2.getClass().getName(), e2.getMessage()));
            str = null;
        } catch (SecurityException e8) {
            e2 = e8;
            CLog.b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e2.getClass().getName(), e2.getMessage()));
            str = null;
        } catch (InvocationTargetException e9) {
            e2 = e9;
            CLog.b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e2.getClass().getName(), e2.getMessage()));
            str = null;
        } catch (Exception e10) {
            CLog.b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e10.getClass().getName(), e10.getMessage()));
            str = null;
        }
        return StringUtils.a((CharSequence) str) ? "Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1" : str;
    }

    public static String a(HttpRequestParams httpRequestParams) throws IOException {
        String url = httpRequestParams.getUrl();
        if (StringUtils.a((CharSequence) url)) {
            return null;
        }
        return b(a(httpRequestParams, new Request.Builder()).url(url).build(), httpRequestParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x021b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.http.HttpUtils.a(java.lang.String):java.lang.String");
    }

    public static HttpURLConnection a(URL url, Proxy proxy) {
        OkHttpClient.Builder newBuilder = f.newBuilder();
        CertificatePinner certificatePinner = g;
        if (certificatePinner != null) {
            newBuilder.certificatePinner(certificatePinner);
        }
        if (proxy != null) {
            newBuilder.proxy(proxy);
        }
        return new ObsoleteUrlFactory(newBuilder.build()).a(url);
    }

    private static Request.Builder a(HttpRequestParams httpRequestParams, Request.Builder builder) {
        Request.Builder builder2 = builder;
        if (CollectionUtils.b(httpRequestParams.getAdditionalHeaders())) {
            Iterator<Map.Entry<String, String>> it2 = httpRequestParams.getAdditionalHeaders().entrySet().iterator();
            while (true) {
                builder2 = builder;
                if (!it2.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it2.next();
                builder = builder.addHeader(next.getKey(), next.getValue());
            }
        }
        Request.Builder builder3 = builder2;
        if (CollectionUtils.b(httpRequestParams.getModifiedHeaders())) {
            Iterator<Map.Entry<String, String>> it3 = httpRequestParams.getModifiedHeaders().entrySet().iterator();
            while (true) {
                builder3 = builder2;
                if (!it3.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next2 = it3.next();
                builder2 = builder2.header(next2.getKey(), next2.getValue());
            }
        }
        Request.Builder builder4 = builder3;
        if (!StringUtils.a((CharSequence) httpRequestParams.getUserAgentOverride())) {
            builder4 = builder3.header("User-Agent", httpRequestParams.getUserAgentOverride());
        }
        return builder4;
    }

    private static Response a(Request request, HttpRequestParams httpRequestParams) throws IOException {
        return (httpRequestParams == null || httpRequestParams.getTimeoutOverride() < 0) ? e.newCall(request).execute() : e.newBuilder().connectTimeout(httpRequestParams.getTimeoutOverride(), TimeUnit.MILLISECONDS).readTimeout(httpRequestParams.getTimeoutOverride(), TimeUnit.MILLISECONDS).writeTimeout(httpRequestParams.getTimeoutOverride(), TimeUnit.MILLISECONDS).build().newCall(request).execute();
    }

    private static void a(Response response) {
        if (response != null && response.body() != null) {
            try {
                response.body().close();
            } catch (Exception e2) {
            }
        }
    }

    public static boolean a() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) Singletons.a("connectivity");
        return connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected();
    }

    public static boolean a(HttpRequestParams httpRequestParams, String str) {
        try {
            return b(httpRequestParams, str);
        } catch (IOException e2) {
            CLog.b(HttpUtils.class, e2, "IOException in readString");
            return false;
        }
    }

    public static boolean a(File file, String str) throws IOException {
        getCallAppServerHost();
        if (!b()) {
            return false;
        }
        Response response = null;
        try {
            StringBuilder sb = new StringBuilder(String.format("%s%s?v=1&%s=%s", getCallappServerPrefix(), str, "myp", UrlUtils.a(Prefs.aR.get())));
            sb.append("&tk=");
            sb.append(Prefs.aV.get());
            sb.append("&ispro=1");
            sb.append("&cvc=");
            sb.append(CallAppApplication.get().getVersionCode());
            response = e.newBuilder().connectTimeout(0L, TimeUnit.MILLISECONDS).readTimeout(0L, TimeUnit.MILLISECONDS).writeTimeout(0L, TimeUnit.MILLISECONDS).build().newCall(new Request.Builder().url(sb.toString()).post(RequestBody.Companion.create(file, f16230a)).header("Content-Encoding", "gzip").build()).execute();
            response = response;
            return response.isSuccessful();
        } finally {
            a(response);
        }
    }

    public static boolean a(Response response, String str) {
        int code = (response == null || response.message() == null) ? 0 : response.code();
        CLog.b(HttpUtils.class, "Got status code %s from %s", Integer.valueOf(code), str);
        if (code != 200) {
            return false;
        }
        List<String> headers = response.headers("X_C_CODE");
        if (headers == null || headers.size() <= 0) {
            CLog.a(SetupWizardActivity.class, "No result header");
            return true;
        }
        String str2 = headers.get(0);
        try {
            if (Integer.parseInt(str2) == ReturnCode.OK.code) {
                return true;
            }
            CLog.a(SetupWizardActivity.class, "Result header is ".concat(String.valueOf(str2)));
            return false;
        } catch (NumberFormatException e2) {
            return false;
        }
    }

    public static String b(String str) {
        return e(new HttpRequestParams.HttpRequestParamsBuilder(str).a());
    }

    private static String b(Request request, HttpRequestParams httpRequestParams) throws IOException {
        Throwable th;
        if (httpRequestParams.getHandler() != null) {
            CLog.b(HttpUtils.class, "Handler will not be called !");
        }
        Response response = null;
        try {
            response = a(request, httpRequestParams);
            String str = null;
            if (response != null) {
                str = null;
                try {
                    if (response.isSuccessful()) {
                        str = response.body().string();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    a(response);
                    throw th;
                }
            }
            a(response);
            return str;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static boolean b() {
        return a();
    }

    public static boolean b(HttpRequestParams httpRequestParams) {
        try {
            return c(httpRequestParams);
        } catch (UnknownHostException e2) {
            Singletons.get().getExceptionManager().a(HttpUtils.class, e2, "IOException in readInputStream", new Object[0]);
            return false;
        } catch (IOException e3) {
            CLog.b(HttpUtils.class, e3, "IOException in readInputStream");
            return false;
        }
    }

    private static boolean b(HttpRequestParams httpRequestParams, String str) throws IOException {
        boolean z;
        Response response = null;
        try {
            response = c(a(httpRequestParams, new Request.Builder()).url(httpRequestParams.getUrl()).post(RequestBody.create((MediaType) null, str)).build(), httpRequestParams);
            if (response != null) {
                response = response;
                if (response.isSuccessful()) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            a(response);
        }
    }

    private static Response c(Request request, HttpRequestParams httpRequestParams) throws IOException {
        if (!a() || httpRequestParams == null) {
            return null;
        }
        Response a2 = a(request, httpRequestParams);
        if (httpRequestParams.getIncludeAllResponseCodes() || (a2 != null && a2.isSuccessful())) {
            if (httpRequestParams.getHandler() != null) {
                httpRequestParams.getHandler().a(httpRequestParams.getUrl(), a2);
            }
        } else if (httpRequestParams.getHandler() != null) {
            httpRequestParams.getHandler().b(httpRequestParams.getUrl(), a2);
        }
        return a2;
    }

    public static boolean c() {
        return b();
    }

    public static boolean c(HttpRequestParams httpRequestParams) throws IOException {
        Throwable th;
        Response response;
        boolean z;
        try {
            response = c(a(httpRequestParams, new Request.Builder()).url(httpRequestParams.getUrl()).build(), httpRequestParams);
            if (response != null) {
                try {
                    if (response.isSuccessful()) {
                        z = true;
                        a(response);
                        return z;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    a(response);
                    throw th;
                }
            }
            z = false;
            a(response);
            return z;
        } catch (Throwable th3) {
            th = th3;
            response = null;
        }
    }

    public static int d() {
        String format = String.format("%s%s", getCallappServerPrefix(), "rma");
        HashMap hashMap = new HashMap();
        hashMap.put("myp", Prefs.aR.get());
        hashMap.put("tk", Prefs.aV.get());
        ValidatorHttpResponseHandler validatorHttpResponseHandler = new ValidatorHttpResponseHandler();
        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(format);
        httpRequestParamsBuilder.e = hashMap;
        httpRequestParamsBuilder.f = 0;
        httpRequestParamsBuilder.f16228c = validatorHttpResponseHandler;
        return d(httpRequestParamsBuilder.a());
    }

    public static int d(HttpRequestParams httpRequestParams) {
        int i;
        UTF8FormEncodingBuilder uTF8FormEncodingBuilder;
        Response response = null;
        Response response2 = null;
        try {
            try {
                uTF8FormEncodingBuilder = new UTF8FormEncodingBuilder();
                if (CollectionUtils.b(httpRequestParams.getFormParams())) {
                    for (Map.Entry<String, String> entry : httpRequestParams.getFormParams().entrySet()) {
                        String key = entry.getKey();
                        String value = entry.getValue();
                        if (value != null) {
                            uTF8FormEncodingBuilder.a(key, value);
                        } else {
                            StringBuilder sb = new StringBuilder("postEncodedFormAndReadInputStream null value. Name: ");
                            sb.append(key);
                            sb.append(", url: ");
                            sb.append(httpRequestParams.getUrl());
                            CLog.a(new Throwable(sb.toString()));
                        }
                    }
                }
            } catch (IOException e2) {
                CLog.b(HttpUtils.class, e2);
                i = 0;
            }
            if (uTF8FormEncodingBuilder.f16263b.length() != 0) {
                Response c2 = c(a(httpRequestParams, new Request.Builder()).url(httpRequestParams.getUrl()).post(RequestBody.create(UTF8FormEncodingBuilder.f16262a, uTF8FormEncodingBuilder.f16263b.toString().getBytes(d.f36719a))).build(), httpRequestParams);
                i = 0;
                response = c2;
                if (c2 != null) {
                    i = c2.code();
                    response = c2;
                }
                return i;
            }
            throw new IllegalStateException("Form encoded body must have at least one part.");
        } finally {
            a(response2);
        }
    }

    private static String e(HttpRequestParams httpRequestParams) {
        try {
            return a(httpRequestParams);
        } catch (IOException e2) {
            CLog.b(HttpUtils.class, e2, "IOException in readString");
            return null;
        }
    }

    public static String getAWSCredentialsUrl() {
        String str;
        try {
            str = getCallappServerPrefix() + "sf?myp=" + URLEncoder.encode(Prefs.aR.get(), "UTF-8") + "&tk=" + Prefs.aV.get() + "&ispro=1&cvc=" + CallAppApplication.get().getVersionCode();
        } catch (UnsupportedEncodingException e2) {
            CLog.b(HttpUtils.class, e2);
            str = null;
        }
        return str;
    }

    public static String getCallAppDomain() {
        return CallAppRemoteConfigManager.get().a("callappDomain");
    }

    public static String getCallAppServerHost() {
        return "s." + getCallAppDomain();
    }

    public static String getCallappServerPrefix() {
        return "https://" + getCallAppServerHost() + "/callapp-server/";
    }

    public static OkHttpClient getExternalClient() {
        return f;
    }

    public static boolean isWiFiConnected() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) CallAppApplication.get().getSystemService("connectivity")).getActiveNetworkInfo();
        return (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) && activeNetworkInfo.getType() == 1;
    }
}
