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
import com.google.api.client.p379a.C15225f;
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
import kotlin.p532h.C18405d;
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

    /* renamed from: e */
    private static OkHttpClient f28303e;

    /* renamed from: g */
    private static CertificatePinner f28305g;

    /* renamed from: a */
    public static final MediaType f28299a = MediaType.parse("application/json; charset=utf-8");

    /* renamed from: b */
    private static UserAgentInterceptor f28300b = new UserAgentInterceptor(null);

    /* renamed from: c */
    private static OkHttpExceptionInterceptor f28301c = new OkHttpExceptionInterceptor();

    /* renamed from: d */
    private static String f28302d = "http://z.";

    /* renamed from: f */
    private static final OkHttpClient f28304f = new OkHttpClient();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpUtils$HttpResponseHandler.class */
    public interface HttpResponseHandler {
        /* renamed from: a */
        void mo26911a(String str, Response response) throws IOException;

        /* renamed from: b */
        void mo26961b(String str, Response response) throws IOException;
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpUtils$HttpResponseHandlerImpl.class */
    public static abstract class HttpResponseHandlerImpl implements HttpResponseHandler {

        /* renamed from: a */
        private String f28306a;

        /* renamed from: b */
        private int f28307b;

        @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
        /* renamed from: a */
        public void mo26911a(String str, Response response) throws IOException {
            if (response != null) {
                this.f28307b = response.code();
            }
        }

        @Override // com.callapp.contacts.util.http.HttpUtils.HttpResponseHandler
        /* renamed from: b */
        public final void mo26961b(String str, Response response) throws IOException {
            if (response != null) {
                this.f28306a = response.body().string();
                this.f28307b = response.code();
            }
        }

        public int getResponseCode() {
            return this.f28307b;
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
                if (!(th instanceof IOException)) {
                    throw new IOException(th);
                }
                throw th;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/http/HttpUtils$UserAgentInterceptor.class */
    static class UserAgentInterceptor implements Interceptor {

        /* renamed from: a */
        private String f28308a;

        public UserAgentInterceptor(String str) {
            this.f28308a = str;
        }

        @Override // okhttp3.Interceptor
        public Response intercept(Interceptor.Chain chain) throws IOException {
            if (this.f28308a == null) {
                this.f28308a = HttpUtils.m26984a(CallAppApplication.get());
            }
            Request request = chain.request();
            return request.header("User-Agent") == null ? chain.proceed(request.newBuilder().addHeader("User-Agent", this.f28308a).build()) : chain.proceed(request);
        }
    }

    static {
        f28305g = null;
        if (!CallAppRemoteConfigManager.get().m28698c("DisableSSLPinning")) {
            try {
                JSONObject jSONObject = new JSONObject(CallAppRemoteConfigManager.get().m28703a("domain_certs_pinning"));
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
                f28305g = builder.build();
            } catch (Exception e) {
                CLog.m27599a(e);
            }
        }
        OkHttpClient.Builder addNetworkInterceptor = new OkHttpClient.Builder().connectTimeout(10000L, TimeUnit.MILLISECONDS).readTimeout(10000L, TimeUnit.MILLISECONDS).writeTimeout(10000L, TimeUnit.MILLISECONDS).addInterceptor(f28301c).addInterceptor(f28300b).addNetworkInterceptor(new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: com.callapp.contacts.util.http.HttpUtils.1
            @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
            public final void log(String str) {
                CLog.m27611a(HttpUtils.class, str);
            }
        }).setLevel(Prefs.f26657n.get().booleanValue() ? HttpLoggingInterceptor.Level.BODY : HttpLoggingInterceptor.Level.NONE));
        CertificatePinner certificatePinner = f28305g;
        if (certificatePinner != null) {
            addNetworkInterceptor.certificatePinner(certificatePinner);
        }
        f28303e = addNetworkInterceptor.build();
    }

    /* renamed from: a */
    public static com.callapp.common.model.message.Response m26977a(String str, Object obj) {
        if (!m26985a()) {
            return com.callapp.common.model.message.Response.m31933of(ResultCode.NO_NETWORK);
        }
        Response response = null;
        response = null;
        response = null;
        try {
            response = f28303e.newCall(new Request.Builder().url(str).addHeader("Accept", "application/json").post(RequestBody.create(f28299a, Serializer.m26912a(obj))).build()).execute();
            if (!response.isSuccessful()) {
                return com.callapp.common.model.message.Response.m31932of(ResultCode.BAD_STATUS_CODE, String.valueOf(response.code()));
            }
            com.callapp.common.model.message.Response response2 = (com.callapp.common.model.message.Response) Parser.m26918a(response.body().byteStream(), com.callapp.common.model.message.Response.class);
            return response2 == null ? com.callapp.common.model.message.Response.error("Null response") : response2;
        } catch (ConnectTimeoutException e) {
            return com.callapp.common.model.message.Response.m31932of(ResultCode.TIMEOUT_REACHED, e.getMessage());
        } catch (IOException e2) {
            CLog.m27596b(HttpUtils.class, e2);
            return com.callapp.common.model.message.Response.error(e2.toString());
        } finally {
            m26974a(response);
        }
    }

    /* renamed from: a */
    public static DownloadedFile m26978a(String str, File file) {
        Response response;
        Throwable th;
        Response response2;
        Response response3;
        RuntimeException e;
        FileNotFoundException e2;
        UnknownHostException e3;
        IOException e4;
        Throwable th2;
        FileOutputStream fileOutputStream;
        try {
            if (m26985a()) {
                try {
                    response3 = m26965c(new Request.Builder().url(str).build(), new HttpRequestParams.HttpRequestParamsBuilder(str).m26994a());
                    response2 = response3;
                    if (response3 != null) {
                        response2 = response3;
                        try {
                            if (response3.isSuccessful()) {
                                response2 = response3;
                                if (response3.body() != null) {
                                    response2 = response3;
                                    if (response3.body().byteStream() != null) {
                                        try {
                                            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                                            try {
                                                boolean z = C15225f.m9248a(response3.body().byteStream(), fileOutputStream2) == response3.body().contentLength();
                                                IoUtils.m27514a(fileOutputStream2);
                                                DownloadedFile downloadedFile = new DownloadedFile(file, z);
                                                m26974a(response3);
                                                return downloadedFile;
                                            } catch (Throwable th3) {
                                                th2 = th3;
                                                fileOutputStream = fileOutputStream2;
                                                IoUtils.m27514a(fileOutputStream);
                                                throw th2;
                                            }
                                        } catch (Throwable th4) {
                                            th2 = th4;
                                            fileOutputStream = null;
                                        }
                                    }
                                }
                            }
                        } catch (FileNotFoundException e5) {
                            e2 = e5;
                            if (IoUtils.m27500d(IoUtils.getCacheFolder()) > 50.0f) {
                                Response response4 = response3;
                                CLog.m27586c(HttpUtils.class, e2, "IOException in downloadURL(%s)", str);
                            }
                            Response response5 = response3;
                            IoUtils.m27520a();
                            response2 = response3;
                        } catch (InterruptedIOException e6) {
                            response2 = response3;
                        } catch (RuntimeException e7) {
                            e = e7;
                            CLog.m27594b(HttpUtils.class, e, "RuntimeException in downloadURL(%s)", str);
                            response2 = response3;
                        } catch (UnknownHostException e8) {
                            e3 = e8;
                            Singletons.get().getExceptionManager().m28678a(HttpUtils.class, e3, "IOException in downloadURL(%s)", str);
                            response2 = response3;
                        } catch (IOException e9) {
                            e4 = e9;
                            CLog.m27594b(HttpUtils.class, e4, "IOException in downloadURL(%s)", str);
                            response2 = response3;
                        }
                    }
                } catch (FileNotFoundException e10) {
                    e2 = e10;
                    response3 = null;
                } catch (InterruptedIOException e11) {
                    response2 = null;
                } catch (UnknownHostException e12) {
                    e3 = e12;
                    response3 = null;
                } catch (IOException e13) {
                    e4 = e13;
                    response3 = null;
                } catch (RuntimeException e14) {
                    e = e14;
                    response3 = null;
                } catch (Throwable th5) {
                    th = th5;
                    response = null;
                    m26974a(response);
                    throw th;
                }
                m26974a(response2);
            }
            return new DownloadedFile(null, false);
        } catch (Throwable th6) {
            th = th6;
            response = null;
        }
    }

    /* renamed from: a */
    public static String m26984a(Context context) {
        String str;
        Exception e;
        try {
            if (!CallAppApplication.get().isUnitTestMode()) {
                str = WebSettings.getDefaultUserAgent(context);
            } else {
                Constructor declaredConstructor = WebSettings.class.getDeclaredConstructor(Context.class, WebView.class);
                declaredConstructor.setAccessible(true);
                str = ((WebSettings) declaredConstructor.newInstance(context, null)).getUserAgentString();
            }
        } catch (AndroidRuntimeException e2) {
            e = e2;
            CLog.m27598b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e.getClass().getName(), e.getMessage()));
            str = null;
        } catch (IllegalAccessException e3) {
            e = e3;
            CLog.m27598b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e.getClass().getName(), e.getMessage()));
            str = null;
        } catch (IllegalArgumentException e4) {
            e = e4;
            CLog.m27598b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e.getClass().getName(), e.getMessage()));
            str = null;
        } catch (InstantiationException e5) {
            e = e5;
            CLog.m27598b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e.getClass().getName(), e.getMessage()));
            str = null;
        } catch (NullPointerException e6) {
            e = e6;
            CLog.m27598b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e.getClass().getName(), e.getMessage()));
            str = null;
        } catch (SecurityException e7) {
            e = e7;
            CLog.m27598b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e.getClass().getName(), e.getMessage()));
            str = null;
        } catch (InvocationTargetException e8) {
            e = e8;
            CLog.m27598b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e.getClass().getName(), e.getMessage()));
            str = null;
        } catch (Exception e9) {
            CLog.m27598b(HttpUtils.class, String.format("%s in getDeviceUserAgentString(): %s", e9.getClass().getName(), e9.getMessage()));
            str = null;
        }
        return StringUtils.m26059a((CharSequence) str) ? "Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1" : str;
    }

    /* renamed from: a */
    public static String m26983a(HttpRequestParams httpRequestParams) throws IOException {
        String url = httpRequestParams.getUrl();
        if (StringUtils.m26059a((CharSequence) url)) {
            return null;
        }
        return m26968b(m26981a(httpRequestParams, new Request.Builder()).url(url).build(), httpRequestParams);
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x021b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m26979a(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.util.http.HttpUtils.m26979a(java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static HttpURLConnection m26976a(URL url, Proxy proxy) {
        OkHttpClient.Builder newBuilder = f28304f.newBuilder();
        CertificatePinner certificatePinner = f28305g;
        if (certificatePinner != null) {
            newBuilder.certificatePinner(certificatePinner);
        }
        if (proxy != null) {
            newBuilder.proxy(proxy);
        }
        return new ObsoleteUrlFactory(newBuilder.build()).m26956a(url);
    }

    /* renamed from: a */
    private static Request.Builder m26981a(HttpRequestParams httpRequestParams, Request.Builder builder) {
        Request.Builder builder2 = builder;
        if (CollectionUtils.m26067b(httpRequestParams.getAdditionalHeaders())) {
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
        if (CollectionUtils.m26067b(httpRequestParams.getModifiedHeaders())) {
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
        if (!StringUtils.m26059a((CharSequence) httpRequestParams.getUserAgentOverride())) {
            builder4 = builder3.header("User-Agent", httpRequestParams.getUserAgentOverride());
        }
        return builder4;
    }

    /* renamed from: a */
    private static Response m26975a(Request request, HttpRequestParams httpRequestParams) throws IOException {
        return (httpRequestParams == null || httpRequestParams.getTimeoutOverride() < 0) ? f28303e.newCall(request).execute() : f28303e.newBuilder().connectTimeout(httpRequestParams.getTimeoutOverride(), TimeUnit.MILLISECONDS).readTimeout(httpRequestParams.getTimeoutOverride(), TimeUnit.MILLISECONDS).writeTimeout(httpRequestParams.getTimeoutOverride(), TimeUnit.MILLISECONDS).build().newCall(request).execute();
    }

    /* renamed from: a */
    private static void m26974a(Response response) {
        if (response == null || response.body() == null) {
            return;
        }
        try {
            response.body().close();
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static boolean m26985a() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) Singletons.m28493a("connectivity");
        return connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected();
    }

    /* renamed from: a */
    public static boolean m26982a(HttpRequestParams httpRequestParams, String str) {
        try {
            return m26970b(httpRequestParams, str);
        } catch (IOException e) {
            CLog.m27595b(HttpUtils.class, e, "IOException in readString");
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m26980a(File file, String str) throws IOException {
        getCallAppServerHost();
        if (!m26972b()) {
            return false;
        }
        Response response = null;
        try {
            StringBuilder sb = new StringBuilder(String.format("%s%s?v=1&%s=%s", getCallappServerPrefix(), str, "myp", UrlUtils.m31878a(Prefs.f26241aR.get())));
            sb.append("&tk=");
            sb.append(Prefs.f26245aV.get());
            sb.append("&ispro=1");
            sb.append("&cvc=");
            sb.append(CallAppApplication.get().getVersionCode());
            Response execute = f28303e.newBuilder().connectTimeout(0L, TimeUnit.MILLISECONDS).readTimeout(0L, TimeUnit.MILLISECONDS).writeTimeout(0L, TimeUnit.MILLISECONDS).build().newCall(new Request.Builder().url(sb.toString()).post(RequestBody.Companion.create(file, f28299a)).header("Content-Encoding", "gzip").build()).execute();
            response = execute;
            boolean isSuccessful = execute.isSuccessful();
            m26974a(execute);
            return isSuccessful;
        } catch (Throwable th) {
            m26974a(response);
            throw th;
        }
    }

    /* renamed from: a */
    public static boolean m26973a(Response response, String str) {
        int code = (response == null || response.message() == null) ? 0 : response.code();
        CLog.m27597b(HttpUtils.class, "Got status code %s from %s", Integer.valueOf(code), str);
        if (code != 200) {
            return false;
        }
        List<String> headers = response.headers("X_C_CODE");
        if (headers == null || headers.size() <= 0) {
            CLog.m27611a(SetupWizardActivity.class, "No result header");
            return true;
        }
        String str2 = headers.get(0);
        try {
            if (Integer.parseInt(str2) == ReturnCode.OK.code) {
                return true;
            }
            CLog.m27611a(SetupWizardActivity.class, "Result header is ".concat(String.valueOf(str2)));
            return false;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static String m26969b(String str) {
        return m26962e(new HttpRequestParams.HttpRequestParamsBuilder(str).m26994a());
    }

    /* renamed from: b */
    private static String m26968b(Request request, HttpRequestParams httpRequestParams) throws IOException {
        Response response;
        Throwable th;
        if (httpRequestParams.getHandler() != null) {
            CLog.m27598b(HttpUtils.class, "Handler will not be called !");
        }
        try {
            response = m26975a(request, httpRequestParams);
            String str = null;
            if (response != null) {
                str = null;
                try {
                    if (response.isSuccessful()) {
                        str = response.body().string();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    m26974a(response);
                    throw th;
                }
            }
            m26974a(response);
            return str;
        } catch (Throwable th3) {
            th = th3;
            response = null;
        }
    }

    /* renamed from: b */
    public static boolean m26972b() {
        return m26985a();
    }

    /* renamed from: b */
    public static boolean m26971b(HttpRequestParams httpRequestParams) {
        try {
            return m26966c(httpRequestParams);
        } catch (UnknownHostException e) {
            Singletons.get().getExceptionManager().m28678a(HttpUtils.class, e, "IOException in readInputStream", new Object[0]);
            return false;
        } catch (IOException e2) {
            CLog.m27595b(HttpUtils.class, e2, "IOException in readInputStream");
            return false;
        }
    }

    /* renamed from: b */
    private static boolean m26970b(HttpRequestParams httpRequestParams, String str) throws IOException {
        boolean z;
        Request build = m26981a(httpRequestParams, new Request.Builder()).url(httpRequestParams.getUrl()).post(RequestBody.create((MediaType) null, str)).build();
        Response response = null;
        try {
            Response m26965c = m26965c(build, httpRequestParams);
            if (m26965c != null) {
                response = m26965c;
                if (m26965c.isSuccessful()) {
                    z = true;
                    m26974a(m26965c);
                    return z;
                }
            }
            z = false;
            m26974a(m26965c);
            return z;
        } catch (Throwable th) {
            m26974a(response);
            throw th;
        }
    }

    /* renamed from: c */
    private static Response m26965c(Request request, HttpRequestParams httpRequestParams) throws IOException {
        if (!m26985a() || httpRequestParams == null) {
            return null;
        }
        Response m26975a = m26975a(request, httpRequestParams);
        if (httpRequestParams.getIncludeAllResponseCodes() || (m26975a != null && m26975a.isSuccessful())) {
            if (httpRequestParams.getHandler() != null) {
                httpRequestParams.getHandler().mo26911a(httpRequestParams.getUrl(), m26975a);
            }
        } else if (httpRequestParams.getHandler() != null) {
            httpRequestParams.getHandler().mo26961b(httpRequestParams.getUrl(), m26975a);
        }
        return m26975a;
    }

    /* renamed from: c */
    public static boolean m26967c() {
        return m26972b();
    }

    /* renamed from: c */
    public static boolean m26966c(HttpRequestParams httpRequestParams) throws IOException {
        Throwable th;
        Response response;
        boolean z;
        try {
            response = m26965c(m26981a(httpRequestParams, new Request.Builder()).url(httpRequestParams.getUrl()).build(), httpRequestParams);
            if (response != null) {
                try {
                    if (response.isSuccessful()) {
                        z = true;
                        m26974a(response);
                        return z;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    m26974a(response);
                    throw th;
                }
            }
            z = false;
            m26974a(response);
            return z;
        } catch (Throwable th3) {
            th = th3;
            response = null;
        }
    }

    /* renamed from: d */
    public static int m26964d() {
        String format = String.format("%s%s", getCallappServerPrefix(), "rma");
        HashMap hashMap = new HashMap();
        hashMap.put("myp", Prefs.f26241aR.get());
        hashMap.put("tk", Prefs.f26245aV.get());
        ValidatorHttpResponseHandler validatorHttpResponseHandler = new ValidatorHttpResponseHandler();
        HttpRequestParams.HttpRequestParamsBuilder httpRequestParamsBuilder = new HttpRequestParams.HttpRequestParamsBuilder(format);
        httpRequestParamsBuilder.f28295e = hashMap;
        httpRequestParamsBuilder.f28296f = 0;
        httpRequestParamsBuilder.f28293c = validatorHttpResponseHandler;
        return m26963d(httpRequestParamsBuilder.m26994a());
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public static int m26963d(HttpRequestParams httpRequestParams) {
        int i;
        UTF8FormEncodingBuilder uTF8FormEncodingBuilder;
        Response response = null;
        try {
            try {
                uTF8FormEncodingBuilder = new UTF8FormEncodingBuilder();
                if (CollectionUtils.m26067b(httpRequestParams.getFormParams())) {
                    for (Map.Entry<String, String> entry : httpRequestParams.getFormParams().entrySet()) {
                        String key = entry.getKey();
                        String value = entry.getValue();
                        if (value != null) {
                            uTF8FormEncodingBuilder.m26937a(key, value);
                        } else {
                            StringBuilder sb = new StringBuilder("postEncodedFormAndReadInputStream null value. Name: ");
                            sb.append(key);
                            sb.append(", url: ");
                            sb.append(httpRequestParams.getUrl());
                            CLog.m27599a(new Throwable(sb.toString()));
                        }
                    }
                }
            } catch (IOException e) {
                CLog.m27596b(HttpUtils.class, e);
                i = 0;
            }
            if (uTF8FormEncodingBuilder.f28348b.length() == 0) {
                throw new IllegalStateException("Form encoded body must have at least one part.");
            }
            Response m26965c = m26965c(m26981a(httpRequestParams, new Request.Builder()).url(httpRequestParams.getUrl()).post(RequestBody.create(UTF8FormEncodingBuilder.f28347a, uTF8FormEncodingBuilder.f28348b.toString().getBytes(C18405d.f63516a))).build(), httpRequestParams);
            i = 0;
            response = m26965c;
            if (m26965c != null) {
                i = m26965c.code();
                response = m26965c;
            }
            m26974a(response);
            return i;
        } catch (Throwable th) {
            m26974a((Response) null);
            throw th;
        }
    }

    /* renamed from: e */
    private static String m26962e(HttpRequestParams httpRequestParams) {
        try {
            return m26983a(httpRequestParams);
        } catch (IOException e) {
            CLog.m27595b(HttpUtils.class, e, "IOException in readString");
            return null;
        }
    }

    public static String getAWSCredentialsUrl() {
        String str;
        try {
            str = getCallappServerPrefix() + "sf?myp=" + URLEncoder.encode(Prefs.f26241aR.get(), "UTF-8") + "&tk=" + Prefs.f26245aV.get() + "&ispro=1&cvc=" + CallAppApplication.get().getVersionCode();
        } catch (UnsupportedEncodingException e) {
            CLog.m27596b(HttpUtils.class, e);
            str = null;
        }
        return str;
    }

    public static String getCallAppDomain() {
        return CallAppRemoteConfigManager.get().m28703a("callappDomain");
    }

    public static String getCallAppServerHost() {
        return "s." + getCallAppDomain();
    }

    public static String getCallappServerPrefix() {
        return "https://" + getCallAppServerHost() + "/callapp-server/";
    }

    public static OkHttpClient getExternalClient() {
        return f28304f;
    }

    public static boolean isWiFiConnected() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) CallAppApplication.get().getSystemService("connectivity")).getActiveNetworkInfo();
        return (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) && activeNetworkInfo.getType() == 1;
    }
}
