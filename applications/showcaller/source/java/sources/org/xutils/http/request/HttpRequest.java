package org.xutils.http.request;

import android.text.TextUtils;
import com.yanzhenjie.nohttp.Headers;
import com.yanzhenjie.nohttp.tools.HeaderUtils;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.TimeZone;
import org.xutils.cache.DiskCacheEntity;
import org.xutils.cache.LruDiskCache;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.KeyValue;
import org.xutils.common.util.LogUtil;
import org.xutils.http.HttpMethod;
import org.xutils.http.RequestParams;
import org.xutils.http.cookie.DbCookieStore;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/request/HttpRequest.class */
public class HttpRequest extends UriRequest {

    /* renamed from: d */
    private static final CookieManager f40780d = new CookieManager(DbCookieStore.INSTANCE, CookiePolicy.ACCEPT_ALL);

    /* renamed from: e */
    private String f40781e = null;

    /* renamed from: f */
    private boolean f40782f = false;

    /* renamed from: g */
    private InputStream f40783g = null;

    /* renamed from: h */
    private HttpURLConnection f40784h = null;

    /* renamed from: i */
    private int f40785i = 0;

    public HttpRequest(RequestParams requestParams, Type type) {
        super(requestParams, type);
    }

    /* renamed from: a */
    private static String m179a(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(HeaderUtils.FORMAT_HTTP_DATA, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(date);
    }

    @Override // org.xutils.http.request.UriRequest
    protected String buildQueryUrl(RequestParams requestParams) {
        String uri = requestParams.getUri();
        StringBuilder sb = new StringBuilder(uri);
        if (!uri.contains("?")) {
            sb.append("?");
        } else if (!uri.endsWith("?")) {
            sb.append("&");
        }
        List<KeyValue> queryStringParams = requestParams.getQueryStringParams();
        if (queryStringParams != null) {
            for (KeyValue keyValue : queryStringParams) {
                String str = keyValue.key;
                String valueStrOrNull = keyValue.getValueStrOrNull();
                if (!TextUtils.isEmpty(str) && valueStrOrNull != null) {
                    sb.append(URLEncoder.encode(str, requestParams.getCharset()).replaceAll("\\+", "%20"));
                    sb.append("=");
                    sb.append(URLEncoder.encode(valueStrOrNull, requestParams.getCharset()).replaceAll("\\+", "%20"));
                    sb.append("&");
                }
            }
        }
        if (sb.charAt(sb.length() - 1) == '&') {
            sb.deleteCharAt(sb.length() - 1);
        }
        if (sb.charAt(sb.length() - 1) == '?') {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
    }

    @Override // org.xutils.http.request.UriRequest
    public void clearCacheHeader() {
        this.params.setHeader(Headers.HEAD_KEY_IF_MODIFIED_SINCE, null);
        this.params.setHeader(Headers.HEAD_KEY_IF_NONE_MATCH, null);
    }

    @Override // org.xutils.http.request.UriRequest, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        InputStream inputStream = this.f40783g;
        if (inputStream != null) {
            IOUtil.closeQuietly(inputStream);
            this.f40783g = null;
        }
        HttpURLConnection httpURLConnection = this.f40784h;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // org.xutils.http.request.UriRequest
    public String getCacheKey() {
        if (this.f40781e == null) {
            String cacheKey = this.params.getCacheKey();
            this.f40781e = cacheKey;
            if (TextUtils.isEmpty(cacheKey)) {
                this.f40781e = this.params.toString();
            }
        }
        return this.f40781e;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // org.xutils.http.request.UriRequest
    public long getContentLength() {
        HttpURLConnection httpURLConnection = this.f40784h;
        char c = 65535;
        if (httpURLConnection != null) {
            try {
                String headerField = httpURLConnection.getHeaderField("content-length");
                c = 65535;
                if (headerField != null) {
                    c = Long.parseLong(headerField);
                }
            } catch (Throwable th) {
                LogUtil.m258e(th.getMessage(), th);
                c = 65535;
            }
        }
        char c2 = c;
        if (c < 1) {
            try {
                c2 = getInputStream().available();
            } catch (Throwable th2) {
                c2 = c;
            }
        }
        return c2;
    }

    @Override // org.xutils.http.request.UriRequest
    public String getETag() {
        HttpURLConnection httpURLConnection = this.f40784h;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderField(Headers.HEAD_KEY_E_TAG);
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    @Override // org.xutils.http.request.UriRequest
    public long getExpiration() {
        HttpURLConnection httpURLConnection = this.f40784h;
        if (httpURLConnection == null) {
            return -1L;
        }
        String headerField = httpURLConnection.getHeaderField(Headers.HEAD_KEY_CACHE_CONTROL);
        char c = 65535;
        if (!TextUtils.isEmpty(headerField)) {
            StringTokenizer stringTokenizer = new StringTokenizer(headerField, ",");
            while (true) {
                c = 65535;
                if (!stringTokenizer.hasMoreTokens()) {
                    break;
                }
                String lowerCase = stringTokenizer.nextToken().trim().toLowerCase();
                if (lowerCase.startsWith("max-age")) {
                    int indexOf = lowerCase.indexOf(61);
                    c = 65535;
                    if (indexOf > 0) {
                        try {
                            long parseLong = Long.parseLong(lowerCase.substring(indexOf + 1).trim());
                            c = 65535;
                            if (parseLong > 0) {
                                c = System.currentTimeMillis() + (parseLong * 1000);
                            }
                        } catch (Throwable th) {
                            LogUtil.m258e(th.getMessage(), th);
                            c = 65535;
                        }
                    }
                }
            }
        }
        char c2 = c;
        if (c <= 0) {
            c2 = this.f40784h.getExpiration();
        }
        char c3 = c2;
        if (c2 <= 0) {
            c3 = c2;
            if (this.params.getCacheMaxAge() > 0) {
                c3 = System.currentTimeMillis() + this.params.getCacheMaxAge();
            }
        }
        char c4 = c3;
        if (c3 <= 0) {
            c4 = 65535;
        }
        return c4;
    }

    @Override // org.xutils.http.request.UriRequest
    public long getHeaderFieldDate(String str, long j) {
        HttpURLConnection httpURLConnection = this.f40784h;
        return httpURLConnection == null ? j : httpURLConnection.getHeaderFieldDate(str, j);
    }

    @Override // org.xutils.http.request.UriRequest
    public InputStream getInputStream() {
        HttpURLConnection httpURLConnection = this.f40784h;
        if (httpURLConnection != null && this.f40783g == null) {
            this.f40783g = httpURLConnection.getResponseCode() >= 400 ? this.f40784h.getErrorStream() : this.f40784h.getInputStream();
        }
        return this.f40783g;
    }

    @Override // org.xutils.http.request.UriRequest
    public long getLastModified() {
        return getHeaderFieldDate(Headers.HEAD_KEY_LAST_MODIFIED, System.currentTimeMillis());
    }

    @Override // org.xutils.http.request.UriRequest
    public String getRequestUri() {
        String str = this.queryUrl;
        HttpURLConnection httpURLConnection = this.f40784h;
        String str2 = str;
        if (httpURLConnection != null) {
            URL url = httpURLConnection.getURL();
            str2 = str;
            if (url != null) {
                str2 = url.toString();
            }
        }
        return str2;
    }

    @Override // org.xutils.http.request.UriRequest
    public int getResponseCode() {
        return this.f40784h != null ? this.f40785i : getInputStream() != null ? 200 : 404;
    }

    @Override // org.xutils.http.request.UriRequest
    public String getResponseHeader(String str) {
        HttpURLConnection httpURLConnection = this.f40784h;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderField(str);
    }

    @Override // org.xutils.http.request.UriRequest
    public Map<String, List<String>> getResponseHeaders() {
        HttpURLConnection httpURLConnection = this.f40784h;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    @Override // org.xutils.http.request.UriRequest
    public String getResponseMessage() {
        HttpURLConnection httpURLConnection = this.f40784h;
        if (httpURLConnection != null) {
            return URLDecoder.decode(httpURLConnection.getResponseMessage(), this.params.getCharset());
        }
        return null;
    }

    @Override // org.xutils.http.request.UriRequest
    public boolean isLoading() {
        return this.f40782f;
    }

    @Override // org.xutils.http.request.UriRequest
    public Object loadResult() {
        this.f40782f = true;
        return super.loadResult();
    }

    @Override // org.xutils.http.request.UriRequest
    public Object loadResultFromCache() {
        this.f40782f = true;
        DiskCacheEntity diskCacheEntity = LruDiskCache.getDiskCache(this.params.getCacheDirName()).setMaxSize(this.params.getCacheSize()).get(getCacheKey());
        if (diskCacheEntity != null) {
            if (HttpMethod.permitsCache(this.params.getMethod())) {
                Date lastModify = diskCacheEntity.getLastModify();
                if (lastModify.getTime() > 0) {
                    this.params.setHeader(Headers.HEAD_KEY_IF_MODIFIED_SINCE, m179a(lastModify));
                }
                String etag = diskCacheEntity.getEtag();
                if (!TextUtils.isEmpty(etag)) {
                    this.params.setHeader(Headers.HEAD_KEY_IF_NONE_MATCH, etag);
                }
            }
            return this.loader.loadFromCache(diskCacheEntity);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x027d  */
    @Override // org.xutils.http.request.UriRequest
    @android.annotation.TargetApi(19)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sendRequest() {
        /*
            Method dump skipped, instructions count: 901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xutils.http.request.HttpRequest.sendRequest():void");
    }
}
