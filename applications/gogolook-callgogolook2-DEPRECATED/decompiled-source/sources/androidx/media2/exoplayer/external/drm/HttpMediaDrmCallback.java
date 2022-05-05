package androidx.media2.exoplayer.external.drm;

import android.annotation.TargetApi;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.drm.ExoMediaDrm;
import androidx.media2.exoplayer.external.upstream.HttpDataSource;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
@TargetApi(18)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/HttpMediaDrmCallback.class */
public final class HttpMediaDrmCallback implements MediaDrmCallback {
    public static final int MAX_MANUAL_REDIRECTS = 5;
    public final HttpDataSource.Factory dataSourceFactory;
    public final String defaultLicenseUrl;
    public final boolean forceDefaultLicenseUrl;
    public final Map<String, String> keyRequestProperties;

    public HttpMediaDrmCallback(String str, HttpDataSource.Factory factory) {
        this(str, false, factory);
    }

    public HttpMediaDrmCallback(String str, boolean z, HttpDataSource.Factory factory) {
        this.dataSourceFactory = factory;
        this.defaultLicenseUrl = str;
        this.forceDefaultLicenseUrl = z;
        this.keyRequestProperties = new HashMap();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b9 A[Catch: all -> 0x0074, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0074, blocks: (B:10:0x0069, B:15:0x0079, B:17:0x0083, B:27:0x00b9, B:33:0x00d3), top: B:37:0x0079, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c7 A[LOOP:1: B:9:0x004c->B:31:0x00c7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] executePost(androidx.media2.exoplayer.external.upstream.HttpDataSource.Factory r16, java.lang.String r17, byte[] r18, @androidx.annotation.Nullable java.util.Map<java.lang.String, java.lang.String> r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.drm.HttpMediaDrmCallback.executePost(androidx.media2.exoplayer.external.upstream.HttpDataSource$Factory, java.lang.String, byte[], java.util.Map):byte[]");
    }

    @Nullable
    public static String getRedirectUrl(HttpDataSource.InvalidResponseCodeException invalidResponseCodeException) {
        List<String> list;
        Map<String, List<String>> map = invalidResponseCodeException.headerFields;
        if (map == null || (list = map.get("Location")) == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public void clearAllKeyRequestProperties() {
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.clear();
        }
    }

    public void clearKeyRequestProperty(String str) {
        Assertions.checkNotNull(str);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.remove(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L_0x0016;
     */
    @Override // androidx.media2.exoplayer.external.drm.MediaDrmCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] executeKeyRequest(java.util.UUID r6, androidx.media2.exoplayer.external.drm.ExoMediaDrm.KeyRequest r7) throws java.lang.Exception {
        /*
            r5 = this;
            r0 = r7
            java.lang.String r0 = r0.getLicenseServerUrl()
            r8 = r0
            r0 = r5
            boolean r0 = r0.forceDefaultLicenseUrl
            if (r0 != 0) goto L_0x0016
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L_0x001c
        L_0x0016:
            r0 = r5
            java.lang.String r0 = r0.defaultLicenseUrl
            r9 = r0
        L_0x001c:
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r10 = r0
            java.util.UUID r0 = androidx.media2.exoplayer.external.C0463C.PLAYREADY_UUID
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0035
            java.lang.String r0 = "text/xml"
            r8 = r0
            goto L_0x0048
        L_0x0035:
            java.util.UUID r0 = androidx.media2.exoplayer.external.C0463C.CLEARKEY_UUID
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0045
            java.lang.String r0 = "application/json"
            r8 = r0
            goto L_0x0048
        L_0x0045:
            java.lang.String r0 = "application/octet-stream"
            r8 = r0
        L_0x0048:
            r0 = r10
            java.lang.String r1 = "Content-Type"
            r2 = r8
            java.lang.Object r0 = r0.put(r1, r2)
            java.util.UUID r0 = androidx.media2.exoplayer.external.C0463C.PLAYREADY_UUID
            r1 = r6
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0069
            r0 = r10
            java.lang.String r1 = "SOAPAction"
            java.lang.String r2 = "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"
            java.lang.Object r0 = r0.put(r1, r2)
        L_0x0069:
            r0 = r5
            java.util.Map<java.lang.String, java.lang.String> r0 = r0.keyRequestProperties
            r6 = r0
            r0 = r6
            monitor-enter(r0)
            r0 = r10
            r1 = r5
            java.util.Map<java.lang.String, java.lang.String> r1 = r1.keyRequestProperties     // Catch: all -> 0x008d
            r0.putAll(r1)     // Catch: all -> 0x008d
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x008d
            r0 = r5
            androidx.media2.exoplayer.external.upstream.HttpDataSource$Factory r0 = r0.dataSourceFactory
            r1 = r9
            r2 = r7
            byte[] r2 = r2.getData()
            r3 = r10
            byte[] r0 = executePost(r0, r1, r2, r3)
            return r0
        L_0x008d:
            r7 = move-exception
            r0 = r6
            monitor-exit(r0)     // Catch: all -> 0x008d
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.drm.HttpMediaDrmCallback.executeKeyRequest(java.util.UUID, androidx.media2.exoplayer.external.drm.ExoMediaDrm$KeyRequest):byte[]");
    }

    @Override // androidx.media2.exoplayer.external.drm.MediaDrmCallback
    public byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws IOException {
        String defaultUrl = provisionRequest.getDefaultUrl();
        String fromUtf8Bytes = Util.fromUtf8Bytes(provisionRequest.getData());
        StringBuilder sb = new StringBuilder(String.valueOf(defaultUrl).length() + 15 + String.valueOf(fromUtf8Bytes).length());
        sb.append(defaultUrl);
        sb.append("&signedRequest=");
        sb.append(fromUtf8Bytes);
        return executePost(this.dataSourceFactory, sb.toString(), Util.EMPTY_BYTE_ARRAY, null);
    }

    public void setKeyRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        synchronized (this.keyRequestProperties) {
            this.keyRequestProperties.put(str, str2);
        }
    }
}
