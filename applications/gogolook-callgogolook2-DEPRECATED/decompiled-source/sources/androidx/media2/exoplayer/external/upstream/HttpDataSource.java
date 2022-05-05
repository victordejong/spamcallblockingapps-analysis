package androidx.media2.exoplayer.external.upstream;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.util.Predicate;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource.class */
public interface HttpDataSource extends DataSource {
    public static final Predicate<String> REJECT_PAYWALL_TYPES = HttpDataSource$$Lambda$0.$instance;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$BaseFactory.class */
    public static abstract class BaseFactory implements Factory {
        public final RequestProperties defaultRequestProperties = new RequestProperties();

        @Override // androidx.media2.exoplayer.external.upstream.HttpDataSource.Factory
        @Deprecated
        public final void clearAllDefaultRequestProperties() {
            this.defaultRequestProperties.clear();
        }

        @Override // androidx.media2.exoplayer.external.upstream.HttpDataSource.Factory
        @Deprecated
        public final void clearDefaultRequestProperty(String str) {
            this.defaultRequestProperties.remove(str);
        }

        @Override // androidx.media2.exoplayer.external.upstream.HttpDataSource.Factory, androidx.media2.exoplayer.external.upstream.DataSource.Factory
        public final HttpDataSource createDataSource() {
            return createDataSourceInternal(this.defaultRequestProperties);
        }

        public abstract HttpDataSource createDataSourceInternal(RequestProperties requestProperties);

        @Override // androidx.media2.exoplayer.external.upstream.HttpDataSource.Factory
        public final RequestProperties getDefaultRequestProperties() {
            return this.defaultRequestProperties;
        }

        @Override // androidx.media2.exoplayer.external.upstream.HttpDataSource.Factory
        @Deprecated
        public final void setDefaultRequestProperty(String str, String str2) {
            this.defaultRequestProperties.set(str, str2);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$Factory.class */
    public interface Factory extends DataSource.Factory {
        @Deprecated
        void clearAllDefaultRequestProperties();

        @Deprecated
        void clearDefaultRequestProperty(String str);

        @Override // androidx.media2.exoplayer.external.upstream.DataSource.Factory
        HttpDataSource createDataSource();

        RequestProperties getDefaultRequestProperties();

        @Deprecated
        void setDefaultRequestProperty(String str, String str2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException.class */
    public static class HttpDataSourceException extends IOException {
        public static final int TYPE_CLOSE = 3;
        public static final int TYPE_OPEN = 1;
        public static final int TYPE_READ = 2;
        public final DataSpec dataSpec;
        public final int type;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException$Type.class */
        public @interface Type {
        }

        public HttpDataSourceException(DataSpec dataSpec, int i) {
            this.dataSpec = dataSpec;
            this.type = i;
        }

        public HttpDataSourceException(IOException iOException, DataSpec dataSpec, int i) {
            super(iOException);
            this.dataSpec = dataSpec;
            this.type = i;
        }

        public HttpDataSourceException(String str, DataSpec dataSpec, int i) {
            super(str);
            this.dataSpec = dataSpec;
            this.type = i;
        }

        public HttpDataSourceException(String str, IOException iOException, DataSpec dataSpec, int i) {
            super(str, iOException);
            this.dataSpec = dataSpec;
            this.type = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidContentTypeException.class */
    public static final class InvalidContentTypeException extends HttpDataSourceException {
        public final String contentType;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InvalidContentTypeException(java.lang.String r6, androidx.media2.exoplayer.external.upstream.DataSpec r7) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r8 = r0
                r0 = r8
                int r0 = r0.length()
                if (r0 == 0) goto L_0x0016
                java.lang.String r0 = "Invalid content type: "
                r1 = r8
                java.lang.String r0 = r0.concat(r1)
                r8 = r0
                goto L_0x0020
            L_0x0016:
                java.lang.String r0 = new java.lang.String
                r1 = r0
                java.lang.String r2 = "Invalid content type: "
                r1.<init>(r2)
                r8 = r0
            L_0x0020:
                r0 = r5
                r1 = r8
                r2 = r7
                r3 = 1
                r0.<init>(r1, r2, r3)
                r0 = r5
                r1 = r6
                r0.contentType = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidContentTypeException.<init>(java.lang.String, androidx.media2.exoplayer.external.upstream.DataSpec):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$InvalidResponseCodeException.class */
    public static final class InvalidResponseCodeException extends HttpDataSourceException {
        public final Map<String, List<String>> headerFields;
        public final int responseCode;
        @Nullable
        public final String responseMessage;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InvalidResponseCodeException(int r6, @androidx.annotation.Nullable java.lang.String r7, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r8, androidx.media2.exoplayer.external.upstream.DataSpec r9) {
            /*
                r5 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = 26
                r1.<init>(r2)
                r10 = r0
                r0 = r10
                java.lang.String r1 = "Response code: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r10
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r10
                java.lang.String r1 = r1.toString()
                r2 = r9
                r3 = 1
                r0.<init>(r1, r2, r3)
                r0 = r5
                r1 = r6
                r0.responseCode = r1
                r0 = r5
                r1 = r7
                r0.responseMessage = r1
                r0 = r5
                r1 = r8
                r0.headerFields = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.upstream.HttpDataSource.InvalidResponseCodeException.<init>(int, java.lang.String, java.util.Map, androidx.media2.exoplayer.external.upstream.DataSpec):void");
        }

        @Deprecated
        public InvalidResponseCodeException(int i, Map<String, List<String>> map, DataSpec dataSpec) {
            this(i, null, map, dataSpec);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/HttpDataSource$RequestProperties.class */
    public static final class RequestProperties {
        public final Map<String, String> requestProperties = new HashMap();
        public Map<String, String> requestPropertiesSnapshot;

        public void clear() {
            synchronized (this) {
                this.requestPropertiesSnapshot = null;
                this.requestProperties.clear();
            }
        }

        public void clearAndSet(Map<String, String> map) {
            synchronized (this) {
                this.requestPropertiesSnapshot = null;
                this.requestProperties.clear();
                this.requestProperties.putAll(map);
            }
        }

        public Map<String, String> getSnapshot() {
            Map<String, String> map;
            synchronized (this) {
                if (this.requestPropertiesSnapshot == null) {
                    this.requestPropertiesSnapshot = Collections.unmodifiableMap(new HashMap(this.requestProperties));
                }
                map = this.requestPropertiesSnapshot;
            }
            return map;
        }

        public void remove(String str) {
            synchronized (this) {
                this.requestPropertiesSnapshot = null;
                this.requestProperties.remove(str);
            }
        }

        public void set(String str, String str2) {
            synchronized (this) {
                this.requestPropertiesSnapshot = null;
                this.requestProperties.put(str, str2);
            }
        }

        public void set(Map<String, String> map) {
            synchronized (this) {
                this.requestPropertiesSnapshot = null;
                this.requestProperties.putAll(map);
            }
        }
    }

    void clearAllRequestProperties();

    void clearRequestProperty(String str);

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    void close() throws HttpDataSourceException;

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    Map<String, List<String>> getResponseHeaders();

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    long open(DataSpec dataSpec) throws HttpDataSourceException;

    @Override // androidx.media2.exoplayer.external.upstream.DataSource
    int read(byte[] bArr, int i, int i2) throws HttpDataSourceException;

    void setRequestProperty(String str, String str2);
}
