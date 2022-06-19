package org.xutils.http.request;

import android.text.TextUtils;
import java.io.InputStream;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.xutils.cache.DiskCacheEntity;
import org.xutils.cache.LruDiskCache;
import org.xutils.common.util.IOUtil;
import org.xutils.common.util.LogUtil;
import org.xutils.http.RequestParams;
/* loaded from: classes2-dex2jar.jar:org/xutils/http/request/ResRequest.class */
public class ResRequest extends UriRequest {

    /* renamed from: d */
    private static long f40787d;
    protected long contentLength = 0;
    protected InputStream inputStream;

    public ResRequest(RequestParams requestParams, Type type) {
        super(requestParams, type);
    }

    /* renamed from: a */
    private int m177a() {
        String replace = this.queryUrl.substring(4).replace("/", "");
        int parseInt = TextUtils.isDigitsOnly(replace) ? Integer.parseInt(replace) : 0;
        if (parseInt > 0) {
            return parseInt;
        }
        throw new IllegalArgumentException("resId not found in url:" + this.queryUrl);
    }

    @Override // org.xutils.http.request.UriRequest
    public void clearCacheHeader() {
    }

    @Override // org.xutils.http.request.UriRequest, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        IOUtil.closeQuietly(this.inputStream);
        this.inputStream = null;
    }

    @Override // org.xutils.http.request.UriRequest
    public String getCacheKey() {
        return this.queryUrl;
    }

    @Override // org.xutils.http.request.UriRequest
    public long getContentLength() {
        try {
            getInputStream();
            return this.contentLength;
        } catch (Throwable th) {
            LogUtil.m258e(th.getMessage(), th);
            return -1L;
        }
    }

    @Override // org.xutils.http.request.UriRequest
    public String getETag() {
        return null;
    }

    @Override // org.xutils.http.request.UriRequest
    public long getExpiration() {
        return Long.MAX_VALUE;
    }

    @Override // org.xutils.http.request.UriRequest
    public long getHeaderFieldDate(String str, long j) {
        return j;
    }

    @Override // org.xutils.http.request.UriRequest
    public InputStream getInputStream() {
        if (this.inputStream == null) {
            InputStream openRawResource = this.params.getContext().getResources().openRawResource(m177a());
            this.inputStream = openRawResource;
            this.contentLength = openRawResource.available();
        }
        return this.inputStream;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
        if (0 != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
        org.xutils.http.request.ResRequest.f40787d = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        if (org.xutils.http.request.ResRequest.f40787d == 0) goto L14;
     */
    @Override // org.xutils.http.request.UriRequest
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getLastModified() {
        /*
            r5 = this;
            long r0 = org.xutils.http.request.ResRequest.f40787d
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L65
            r0 = r5
            org.xutils.http.RequestParams r0 = r0.params     // Catch: java.lang.Throwable -> L38
            android.content.Context r0 = r0.getContext()     // Catch: java.lang.Throwable -> L38
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo()     // Catch: java.lang.Throwable -> L38
            r6 = r0
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L38
            r7 = r0
            r0 = r7
            r1 = r6
            java.lang.String r1 = r1.sourceDir     // Catch: java.lang.Throwable -> L38
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L38
            r0 = r7
            boolean r0 = r0.exists()     // Catch: java.lang.Throwable -> L38
            if (r0 == 0) goto L2d
            r0 = r7
            long r0 = r0.lastModified()     // Catch: java.lang.Throwable -> L38
            org.xutils.http.request.ResRequest.f40787d = r0     // Catch: java.lang.Throwable -> L38
        L2d:
            long r0 = org.xutils.http.request.ResRequest.f40787d     // Catch: java.lang.Throwable -> L38
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L65
            goto L4b
        L38:
            r7 = move-exception
            r0 = r7
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> L54
            r1 = r7
            org.xutils.common.util.LogUtil.m252w(r0, r1)     // Catch: java.lang.Throwable -> L54
            r0 = 0
            org.xutils.http.request.ResRequest.f40787d = r0     // Catch: java.lang.Throwable -> L54
            r0 = 0
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L65
        L4b:
            long r0 = java.lang.System.currentTimeMillis()
            org.xutils.http.request.ResRequest.f40787d = r0
            goto L65
        L54:
            r7 = move-exception
            long r0 = org.xutils.http.request.ResRequest.f40787d
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L63
            long r0 = java.lang.System.currentTimeMillis()
            org.xutils.http.request.ResRequest.f40787d = r0
        L63:
            r0 = r7
            throw r0
        L65:
            long r0 = org.xutils.http.request.ResRequest.f40787d
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.xutils.http.request.ResRequest.getLastModified():long");
    }

    @Override // org.xutils.http.request.UriRequest
    public int getResponseCode() {
        return getInputStream() != null ? 200 : 404;
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
        return this.loader.load(this);
    }

    @Override // org.xutils.http.request.UriRequest
    public Object loadResultFromCache() {
        Date lastModify;
        DiskCacheEntity diskCacheEntity = LruDiskCache.getDiskCache(this.params.getCacheDirName()).setMaxSize(this.params.getCacheSize()).get(getCacheKey());
        if (diskCacheEntity == null || (lastModify = diskCacheEntity.getLastModify()) == null || lastModify.getTime() < getLastModified()) {
            return null;
        }
        return this.loader.loadFromCache(diskCacheEntity);
    }

    @Override // org.xutils.http.request.UriRequest
    public void sendRequest() {
    }
}
