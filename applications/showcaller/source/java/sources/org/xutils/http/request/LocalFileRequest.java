package org.xutils.http.request;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;
import org.xutils.common.util.IOUtil;
import org.xutils.http.RequestParams;
import org.xutils.http.loader.FileLoader;
import org.xutils.http.loader.Loader;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/request/LocalFileRequest.class */
public class LocalFileRequest extends UriRequest {

    /* renamed from: d */
    private InputStream f40786d;

    public LocalFileRequest(RequestParams requestParams, Type type) {
        super(requestParams, type);
    }

    /* renamed from: a */
    private File m178a() {
        return new File(this.queryUrl.startsWith("file:") ? this.queryUrl.substring(5) : this.queryUrl);
    }

    @Override // org.xutils.http.request.UriRequest
    public void clearCacheHeader() {
    }

    @Override // org.xutils.http.request.UriRequest, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOUtil.closeQuietly(this.f40786d);
        this.f40786d = null;
    }

    @Override // org.xutils.http.request.UriRequest
    public String getCacheKey() {
        return this.queryUrl;
    }

    @Override // org.xutils.http.request.UriRequest
    public long getContentLength() {
        return m178a().length();
    }

    @Override // org.xutils.http.request.UriRequest
    public String getETag() {
        return null;
    }

    @Override // org.xutils.http.request.UriRequest
    public long getExpiration() {
        return -1L;
    }

    @Override // org.xutils.http.request.UriRequest
    public long getHeaderFieldDate(String str, long j) {
        return j;
    }

    @Override // org.xutils.http.request.UriRequest
    public InputStream getInputStream() {
        if (this.f40786d == null) {
            this.f40786d = new FileInputStream(m178a());
        }
        return this.f40786d;
    }

    @Override // org.xutils.http.request.UriRequest
    public long getLastModified() {
        return m178a().lastModified();
    }

    @Override // org.xutils.http.request.UriRequest
    public int getResponseCode() {
        return m178a().exists() ? 200 : 404;
    }

    @Override // org.xutils.http.request.UriRequest
    public String getResponseHeader(String str) {
        return null;
    }

    @Override // org.xutils.http.request.UriRequest
    public Map<String, List<String>> getResponseHeaders() {
        return null;
    }

    @Override // org.xutils.http.request.UriRequest
    public String getResponseMessage() {
        return null;
    }

    @Override // org.xutils.http.request.UriRequest
    public boolean isLoading() {
        return true;
    }

    @Override // org.xutils.http.request.UriRequest
    public Object loadResult() {
        Loader<?> loader = this.loader;
        return loader instanceof FileLoader ? m178a() : loader.load(this);
    }

    @Override // org.xutils.http.request.UriRequest
    public Object loadResultFromCache() {
        return null;
    }

    @Override // org.xutils.http.request.UriRequest
    public void save2Cache() {
    }

    @Override // org.xutils.http.request.UriRequest
    public void sendRequest() {
    }
}
